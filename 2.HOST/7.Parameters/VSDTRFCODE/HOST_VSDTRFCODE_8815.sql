﻿--
--
/
DELETE VSDTRFCODE WHERE TLTXCD = '8815';
INSERT INTO VSDTRFCODE (TRFCODE,DESCRIPTION,VSDMT,STATUS,TYPE,TLTXCD,SEARCHCODE,FILTERNAME,REQTLTXCD,AUTOCONF)
VALUES ('542.NEWM.CLAS//PEND/1.SETR//TRAD.STCO//DLWM','Điện chuyển khoản CK TDCN chờ giao dịch lô lẻ','542','N','REQ','8815',null,null,' ','Y');
INSERT INTO VSDTRFCODE (TRFCODE,DESCRIPTION,VSDMT,STATUS,TYPE,TLTXCD,SEARCHCODE,FILTERNAME,REQTLTXCD,AUTOCONF)
VALUES ('542.NEWM.CLAS//NORM/1.SETR//TRAD.STCO//DLWM','Điện chuyển khoản CK TDCN lô lẻ','542','Y','REQ','8815',null,null,' ','Y');
COMMIT;
/
