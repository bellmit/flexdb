﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'LN0010';
INSERT INTO SEARCH (SEARCHCODE,SEARCHTITLE,EN_SEARCHTITLE,SEARCHCMDSQL,OBJNAME,FRMNAME,ORDERBYCMDSQL,TLTXCD,CNTRECORD,ROWPERPAGE,AUTOSEARCH,INTERVAL,AUTHCODE,ROWLIMIT,CMDTYPE)
VALUES ('LN0010','Trạng thái vay tiểu khoản trước giải ngân lần cuối','View customer margin limit','
select to_char(log.txdate,''DD/MM/RRRR'') || ACCTNO || LNTYPE ACCTNOTXDATE, log.* from afln_info_log log
where txdate = (select max(txdate) from afln_info_log)
','LNTYPE',null,null,null,null,50,'N',30,'NYNNYYYNNN','Y','T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'LN0010';
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (80,'MR74INTAMT','Nợ lãi margin 74','N','LN0010',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Available margin limit','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (75,'MR74PRINAMT','Nợ gốc margin 74','N','LN0010',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Available margin limit','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (70,'MR74AMT','Nợ CL74 (gốc, lãi)','N','LN0010',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Available margin limit','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (65,'MRINTAMT','Nợ lãi margin','N','LN0010',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Available margin limit','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (60,'MRPRINAMT','Nợ gốc margin','N','LN0010',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Available margin limit','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (55,'MRAMT','Nợ CL (gốc, lãi)','N','LN0010',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Available margin limit','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (50,'DFINTAMT','Nợ lãi DF','N','LN0010',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Available margin limit','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (45,'DFPRINAMT','Nợ gốc DF','N','LN0010',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Available margin limit','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (40,'DFAMT','Nợ DF (gốc, lãi)','N','LN0010',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Available margin limit','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (22,'MRCRLIMITREMAIN','Hạn mức margin còn lại','N','LN0010',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Remain margin limit','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (20,'MRCRLIMITMAX','Hạn mức margin được cấp','N','LN0010',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Allocated margin limit','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (10,'BANKLIMIT','Hạn mức ngân hàng còn lại','N','LN0010',200,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',120,null,'Customer margin limit','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (5,'LNTYPE','Loại hình vay','C','LN0010',100,null,'LIKE,=','_','Y','Y','N',100,null,'Customer ID','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (1,'ACCTNO','Số tiểu khoản','C','LN0010',100,null,'LIKE,=','_','Y','Y','N',100,null,'Customer ID','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (-100,'CUSTODYCD','Số TK lưu ký','C','LN0010',100,null,'LIKE,=',null,'Y','Y','N',100,null,'Custody code','N','88',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (-101,'ACCTNOTXDATE','Key','C','LN0010',100,null,'=',null,'N','N','Y',80,null,'CUSTID','N','03',null,'N',null,null,null,'N');
COMMIT;
/
