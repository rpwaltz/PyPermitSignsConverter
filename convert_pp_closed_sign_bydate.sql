create or replace PROCEDURE  XXCOKUTIL.CONVERT_PP_CLOSED_SIGN_BYDATE(STARTDATE IN VARCHAR2, ENDDATE IN VARCHAR2) AS 
   
BEGIN

execute immediate 'alter session set global_names=true';
xxcokutil.convert_pp_closed_sign_permit (STARTDATE, ENDDATE);
execute immediate 'alter session set global_names=false';
xxcokutil.convert_pp_sign_address(STARTDATE, ENDDATE);
xxcokutil.convert_pp_closed_sign_perm_at (STARTDATE, ENDDATE);

COMMIT;
END;

exec XXCOKUTIL.CONVERT_PP_CLOSED_SIGN_BYDATE('2009-01-01 00:00:00','2009-01-02 23:59:59');