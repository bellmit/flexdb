﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'RM1002';
INSERT INTO SEARCH (SEARCHCODE,SEARCHTITLE,EN_SEARCHTITLE,SEARCHCMDSQL,OBJNAME,FRMNAME,ORDERBYCMDSQL,TLTXCD,CNTRECORD,ROWPERPAGE,AUTOSEARCH,INTERVAL,AUTHCODE,ROWLIMIT,CMDTYPE)
VALUES ('RM1002','Corebank status','Corebank status','select g.txdate,G.batchid, g.transtype, g.secaccount
,g.bankaccountname,g.bankaccount,g.amount,g.descriptions,
g.processed,
CASE
WHEN g.transtate IS NULL THEN ''Chưa gửi BIDV''
WHEN g.transtate =''0'' THEN ''Thành công''
WHEN g.transtate =''-1'' THEN ''Lỗi''
WHEN g.transtate =''-670230'' THEN ''Đã gửi BIDV''
WHEN g.transtate =''-670300'' THEN ''Chờ BIDV xử lý''
WHEN g.transtate =''-670301'' THEN ''BIDV Đã giải mã''
WHEN g.transtate =''-670310'' THEN ''BIDV Đã xử lý''
else g.transtate
END transtate,
g.errordesc,g.desaccountname,
g.desaccount
from gwtransferlog g
where processed <>''D''','ODMAST',null,null,null,null,50,'N',30,'NYNNYYYNNN','Y','T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'RM1002';
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (9,'DESCRIPTIONS','DESCRIPTIONS','C','RM1002',150,null,'=,LIKE',null,'Y','Y','N',300,null,'DESCRIPTIONS','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (8,'ERRORDESC','ERRORDESC','C','RM1002',150,null,'=,LIKE','_','Y','Y','N',100,null,'ERRORDESC','N','  ',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (7,'TRANSTATE','TRANSTATE','C','RM1002',60,null,'=,LIKE','_','Y','Y','N',100,null,'TRANSTATE','N','  ',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (6,'PROCESSED','PROCESSED','C','RM1002',60,null,'=,LIKE','_','Y','Y','N',80,null,'PROCESSED','N','  ',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (5,'AMOUNT','AMOUNT','N','RM1002',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',80,null,'AMOUNT','N','30',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (4,'BANKACCOUNT','BANKACCOUNT','C','RM1002',180,null,'=,LIKE',null,'Y','Y','N',140,null,'BANKACCOUNT','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (3,'BANKACCOUNTNAME','FULLNAME','C','RM1002',180,null,'=,LIKE',null,'Y','Y','N',140,null,'FULLNAME','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (2,'SECACCOUNT','SECACCOUNT','C','RM1002',150,null,'=,LIKE',null,'Y','Y','N',80,null,'SECACCOUNT','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (1,'TRANSTYPE','TRANSTYPE','C','RM1002',80,null,'=',null,'Y','Y','N',50,'select ''BA'' Value , ''Thu tien mua CK ngay T'' from dual
Union select ''SA'' Value , ''Thanh toan tien ban CK ngay T+3'' from dual
Union select ''BF'' Value , ''Thu phi mua CK ngay T '' from dual
Union select ''SF'' Value , ''Thu phi ban CK ngay T+3'' from dual
Union select ''CT'' Value , ''Giao d?ch cat tien KH'' from dual
Union select ''DF'' Value , ''Thu thue TNCN tien ban CK ngay T+3 '' from dual
Union select ''DR'' Value , ''Thanh toan co tuc '' from dual
Union select ''SR'' Value , ''Thanh toan tien ban CK lo le ngay '' from dual
Union select ''CR'' Value , ''Huy dang ky mua PHT '' from dual
Union select ''RR'' Value , ''dang ky mua PHT '' from dual','TRANSTYPE','N','30',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (0,'BATCHID','BATCHID','C','RM1002',150,null,'=,LIKE',null,'Y','Y','N',80,null,'BATCHID','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (0,'TXDATE','Ngay guao dich','D','RM1002',100,null,'<,<=,=,>=,>,<>',null,'Y','Y','N',100,null,'TXDATE','N',null,null,'N',null,null,null,'N');
COMMIT;
/
