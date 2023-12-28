delete from b3owners xrf
where exists
(select * from b1permit bp
where xrf.serv_prov_code = 'KNOXVILLE'
and xrf.b1_per_id2 = 'CONV'
and bp.serv_prov_code = xrf.serv_prov_code
and bp.b1_per_id1 = xrf.b1_per_id1
and bp.b1_per_id2 = xrf.b1_per_id2
and bp.b1_per_id3 = xrf.b1_per_id3
and  substr(bp.b1_alt_id,1,1) = 'S' and
bp.b1_alt_id like 'S%-%');



delete from b3contact xrf
where exists
(select * from b1permit bp
where xrf.serv_prov_code = 'KNOXVILLE'
and xrf.b1_per_id2 = 'CONV'
and bp.serv_prov_code = xrf.serv_prov_code
and bp.b1_per_id1 = xrf.b1_per_id1
and bp.b1_per_id2 = xrf.b1_per_id2
and bp.b1_per_id3 = xrf.b1_per_id3
and  substr(bp.b1_alt_id,1,1) = 'S' and
bp.b1_alt_id like 'S%-%');


delete from b3addres xrf
where exists
(select * from b1permit bp
where xrf.serv_prov_code = 'KNOXVILLE'
and xrf.b1_per_id2 = 'CONV'
and bp.serv_prov_code = xrf.serv_prov_code
and bp.b1_per_id1 = xrf.b1_per_id1
and bp.b1_per_id2 = xrf.b1_per_id2
and bp.b1_per_id3 = xrf.b1_per_id3
and  substr(bp.b1_alt_id,1,1) = 'S' and
bp.b1_alt_id like 'S%-%');


delete from b3parcel xrf
where exists
(select * from b1permit bp
where xrf.serv_prov_code = 'KNOXVILLE'
and xrf.b1_per_id2 = 'CONV'
and bp.serv_prov_code = xrf.serv_prov_code
and bp.b1_per_id1 = xrf.b1_per_id1
and bp.b1_per_id2 = xrf.b1_per_id2
and bp.b1_per_id3 = xrf.b1_per_id3
and  substr(bp.b1_alt_id,1,1) = 'S' and
bp.b1_alt_id like 'S%-%');



delete from bworkdes xrf
where exists
(select * from b1permit bp
where xrf.serv_prov_code = 'KNOXVILLE'
and xrf.b1_per_id2 = 'CONV'
and bp.serv_prov_code = xrf.serv_prov_code
and bp.b1_per_id1 = xrf.b1_per_id1
and bp.b1_per_id2 = xrf.b1_per_id2
and bp.b1_per_id3 = xrf.b1_per_id3
and  substr(bp.b1_alt_id,1,1) = 'S' and
bp.b1_alt_id like 'S%-%');



delete from bchckbox xrf
where exists
(select * from b1permit bp
where xrf.serv_prov_code = 'KNOXVILLE'
and xrf.b1_per_id2 = 'CONV'
and bp.serv_prov_code = xrf.serv_prov_code
and bp.b1_per_id1 = xrf.b1_per_id1
and bp.b1_per_id2 = xrf.b1_per_id2
and bp.b1_per_id3 = xrf.b1_per_id3
and  substr(bp.b1_alt_id,1,1) = 'S' and
bp.b1_alt_id like 'S%-%');



delete from bactivity_comment xrf
where exists
(select * from b1permit bp
where xrf.serv_prov_code = 'KNOXVILLE'
and xrf.b1_per_id2 = 'CONV'
and bp.serv_prov_code = xrf.serv_prov_code
and bp.b1_per_id1 = xrf.b1_per_id1
and bp.b1_per_id2 = xrf.b1_per_id2
and bp.b1_per_id3 = xrf.b1_per_id3
and  substr(bp.b1_alt_id,1,1) = 'S' and
bp.b1_alt_id like 'S%-%');



delete from g6action xrf
where exists
(select * from b1permit bp
where xrf.serv_prov_code = 'KNOXVILLE'
and xrf.b1_per_id2 = 'CONV'
and bp.serv_prov_code = xrf.serv_prov_code
and bp.b1_per_id1 = xrf.b1_per_id1
and bp.b1_per_id2 = xrf.b1_per_id2
and bp.b1_per_id3 = xrf.b1_per_id3
and  substr(bp.b1_alt_id,1,1) = 'S' and
bp.b1_alt_id like 'S%-%');



delete from bactivity_comment xrf
where exists
(select * from b1permit bp
where xrf.serv_prov_code = 'KNOXVILLE'
and xrf.b1_per_id2 = 'CONV'
and bp.serv_prov_code = xrf.serv_prov_code
and bp.b1_per_id1 = xrf.b1_per_id1
and bp.b1_per_id2 = xrf.b1_per_id2
and bp.b1_per_id3 = xrf.b1_per_id3
and  substr(bp.b1_alt_id,1,1) = 'S' and
bp.b1_alt_id like 'S%-%');


delete from bappspectable_value xrf
where exists
(select * from b1permit bp
where xrf.serv_prov_code = 'KNOXVILLE'
and xrf.b1_per_id2 = 'CONV'
and bp.serv_prov_code = xrf.serv_prov_code
and bp.b1_per_id1 = xrf.b1_per_id1
and bp.b1_per_id2 = xrf.b1_per_id2
and bp.b1_per_id3 = xrf.b1_per_id3
and  substr(bp.b1_alt_id,1,1) = 'S' and
bp.b1_alt_id like 'S%-%');


delete from bappspectable xrf
where exists
(select * from b1permit bp
where xrf.serv_prov_code = 'KNOXVILLE'
and xrf.b1_per_id2 = 'CONV'
and bp.serv_prov_code = xrf.serv_prov_code
and bp.b1_per_id1 = xrf.b1_per_id1
and bp.b1_per_id2 = xrf.b1_per_id2
and bp.b1_per_id3 = xrf.b1_per_id3
and  substr(bp.b1_alt_id,1,1) = 'S' and
bp.b1_alt_id like 'S%-%');

delete from bpermit_detail xrf
where exists
(select * from b1permit bp
where xrf.serv_prov_code = 'KNOXVILLE'
and xrf.b1_per_id2 = 'CONV'
and bp.serv_prov_code = xrf.serv_prov_code
and bp.b1_per_id1 = xrf.b1_per_id1
and bp.b1_per_id2 = xrf.b1_per_id2
and bp.b1_per_id3 = xrf.b1_per_id3
and  substr(bp.b1_alt_id,1,1) = 'S' and
bp.b1_alt_id like 'S%-%');


delete from b1permit 
where serv_prov_code = 'KNOXVILLE'
and b1_per_id2 = 'CONV'
and  substr(b1_alt_id,1,1) = 'S' and
b1_alt_id like 'S%-%';

commit;


select count(*) from b1permit 
where serv_prov_code = 'KNOXVILLE'
and b1_per_id2 = 'CONV'
and  substr(b1_alt_id,1,1) = 'S' and
b1_alt_id like 'S%-%';