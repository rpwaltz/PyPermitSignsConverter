import logging
from re import A
import threading
import time
import oracledb
import calendar
import concurrent.futures
import configparser


permit_date_list = list()

permit_date_range_dict = dict()
config = configparser.ConfigParser()
config.read("PyPermitSignsConverter.ini")
logging.basicConfig(filename=config['DEFAULT']['logfile_path'], encoding='utf-8', level=logging.INFO, format='%(asctime)s %(message)s')

oracle_client_directory = config['DEFAULT']['ora_insta_client_location']
oracledb.init_oracle_client(lib_dir=oracle_client_directory)
acella_connection_string = config['Accela']['Connection']

acella_connection_pool = oracledb.create_pool(
user=config['Accela']['User'],
password=config['Accela']['Password'],
dsn=acella_connection_string,
min=6, max=6, increment=1, getmode=oracledb.POOL_GETMODE_WAIT)


pplus_connection_string = config['PPlus']['Connection']
pplus_connection = oracledb.connect(
    user=config['PPlus']['User'],
    password=config['PPlus']['Password'],
    dsn=pplus_connection_string)

def execute_convert_sign_permit(permit_date_from):
    logging.info("Thread %r: Converting %r - %r" % ( threading.get_ident(), permit_date_from, permit_date_range_dict[permit_date_from]))
    permit_date_to = permit_date_range_dict[permit_date_from]
     
    accela_connection = acella_connection_pool.acquire()
    accela_cursor = accela_connection.cursor()
    permit_date_from_input = f"{permit_date_from} 00:00:00"
    permit_date_to_input = f"{permit_date_to} 23:59:59"      
    accela_cursor.callproc('XXCOKUTIL.CONVERT_PP_CLOSED_SIGN_BYDATE', (permit_date_from_input, permit_date_to_input))
    return permit_date_range_dict[permit_date_from]


logging.info('Start')  
cursor_pplus_cursor = pplus_connection.cursor()
cursor_pplus_cursor.execute('select to_char( entered_date, \'YYYY-MM\')  from apd_base group by to_char(entered_date,\'YYYY-MM\') order by to_char(entered_date,\'YYYY-MM\')')
pplus_cursor_results = cursor_pplus_cursor.fetchall()
for row in pplus_cursor_results:
    if row[0] is not None:
        year_month = row[0].split("-")
        year_no =   int(year_month[0])
        month_no = int(year_month[1])
        month_data = calendar.monthrange(year_no, month_no)
        last_day_of_month = month_data[1]
        from_date = "{YYYY}-{MM}-{DD}".format(YYYY = year_month[0], MM = year_month[1], DD = "1")
        to_date = "{YYYY}-{MM}-{DD}".format(YYYY = year_month[0], MM = year_month[1], DD = last_day_of_month)

        permit_date_list.append(from_date);
        permit_date_range_dict[from_date] = to_date

with concurrent.futures.ThreadPoolExecutor(max_workers=6) as executor:
        future_sign_permit_results = {executor.submit(execute_convert_sign_permit, permit_date): permit_date for permit_date in sorted(permit_date_list)}
        for future in concurrent.futures.as_completed(future_sign_permit_results):
            permit_date =  future_sign_permit_results[future]
            try:
                data = future.result()
            except Exception as exc:
                logging.info('%r generated an exception: %s' % (permit_date, exc))
            else:
                logging.info('Converted %r - %r' % (permit_date, data))
logging.info('Complete')                