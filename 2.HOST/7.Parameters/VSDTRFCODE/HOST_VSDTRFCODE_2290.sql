﻿--
--
/
DELETE VSDTRFCODE WHERE TLTXCD = '2290';
INSERT INTO VSDTRFCODE (TRFCODE,DESCRIPTION,VSDMT,STATUS,TYPE,TLTXCD,SEARCHCODE,FILTERNAME,REQTLTXCD,AUTOCONF)
VALUES ('598.001.ACCT//TBAC.NAK','Chuyển khoản toàn bộ CK, đóng tài khoản','598','Y','CFN','2290',null,null,null,'Y');
INSERT INTO VSDTRFCODE (TRFCODE,DESCRIPTION,VSDMT,STATUS,TYPE,TLTXCD,SEARCHCODE,FILTERNAME,REQTLTXCD,AUTOCONF)
VALUES ('548.INST.LINK//598.SETR//TBAC.','Từ chối chuyển khoản đóng tài khoản','548','Y','CFN','2290','SE2290',null,'2247','Y');
COMMIT;
/
