﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'TDTYPE_ACTIVE';
INSERT INTO SEARCH (SEARCHCODE,SEARCHTITLE,EN_SEARCHTITLE,SEARCHCMDSQL,OBJNAME,FRMNAME,ORDERBYCMDSQL,TLTXCD,CNTRECORD,ROWPERPAGE,AUTOSEARCH,INTERVAL,AUTHCODE,ROWLIMIT,CMDTYPE)
VALUES ('TDTYPE_ACTIVE','Loại hình tiết kiệm','Term deposit product type','SELECT TYP.ACTYPE, SBC.CCYNAME CCYCD, TYP.TYPENAME, TYP.GLGRP, A0.CDCONTENT STATUS, TYP.GLBANK, TYP.SUBCD, TYP.DESCRIPTION NOTES,
A1.CDCONTENT TDSRCDIS, A2.CDCONTENT SCHDTYPEDIS, TYP.TDTERM, A4.CDCONTENT TERMCDDIS, A3.CDCONTENT BREAKCD ,
TYP.CIACCTNO,TYP.INTRATE,(CASE WHEN TYP.TDSRC=''O'' THEN 1 ELSE 0 END) ISCI,
TYP.MINBRTERM,TYP.SCHDTYPE, TYP.SPREADTERM, TYP.SPREADRATE,TYP.TDSRC,TYP.TERMCD
FROM TDTYPE TYP, SBCURRENCY SBC, ALLCODE A0, ALLCODE A1, ALLCODE A2, ALLCODE A3, ALLCODE A4,sysvar var
WHERE A0.CDTYPE = ''SY'' AND A0.CDNAME = ''YESNO'' AND A0.CDVAL=TYP.STATUS
AND SBC.CCYCD=TYP.CCYCD AND A1.CDTYPE = ''TD'' AND A1.CDNAME = ''TDSRC'' AND A1.CDVAL=TYP.TDSRC AND A2.CDTYPE = ''TD'' AND A2.CDNAME = ''SCHDTYPE'' AND A2.CDVAL=TYP.SCHDTYPE
AND A3.CDTYPE = ''SY'' AND A3.CDNAME = ''YESNO'' AND A3.CDVAL=TYP.BREAKCD AND A4.CDTYPE = ''TD'' AND A4.CDNAME = ''TERMCD'' AND A4.CDVAL=TYP.TERMCD
and var.varname=''CURRDATE'' and
typ.effdate <= to_date(var.varvalue,''DD/MM/RRRR'') and typ.expdate >= to_date(var.varvalue,''DD/MM/RRRR'')','TDTYPE','frmTDTYPE','ACTYPE',null,0,50,'N',30,null,'Y','T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'TDTYPE_ACTIVE';
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (20,'NOTES','Diễn giải','C','TDTYPE_ACTIVE',200,null,'=,LIKE',null,'Y','N','N',200,null,'Description','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (8,'BREAKCD','Rút trước hạn','C','TDTYPE_ACTIVE',50,null,'=',null,'Y','Y','N',50,'SELECT CDVAL VALUE, CDCONTENT DISPLAY FROM ALLCODE WHERE CDTYPE = ''TD'' AND CDNAME = ''BREAKCD'' ORDER BY LSTODR','Break','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (7,'SCHDTYPEDIS','Biểu phí','C','TDTYPE_ACTIVE',150,null,'=,LIKE',null,'Y','N','N',150,null,'Interest schema','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (6,'TERMCDDIS','Đơn vị','C','TDTYPE_ACTIVE',100,null,'=,LIKE',null,'Y','N','N',100,null,'Term unit','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (5,'TDTERM','Kỳ hạn','C','TDTYPE_ACTIVE',50,null,'=,>,<',null,'Y','N','N',50,null,'Term','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (4,'TDSRC','Nguồn','C','TDTYPE_ACTIVE',100,null,'=,LIKE',null,'Y','N','N',100,null,'Source','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (3,'TDTYPE','Loại','C','TDTYPE_ACTIVE',100,null,'=,LIKE',null,'N','N','N',100,null,'Category','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (2,'STATUS','Đang sử dụng','C','TDTYPE_ACTIVE',50,null,'=',null,'Y','Y','N',50,'SELECT CDVAL VALUE, CDCONTENT DISPLAY FROM ALLCODE WHERE CDTYPE = ''SY'' AND CDNAME = ''TYPESTS'' ORDER BY LSTODR','Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (1,'TYPENAME','Tên','C','TDTYPE_ACTIVE',200,null,'=,LIKE',null,'Y','Y','N',200,null,'Name','Y',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (0,'ACTYPE','Mã','C','TDTYPE_ACTIVE',50,'9999','=,LIKE','_','Y','Y','Y',50,null,'Code','N',null,null,'N',null,null,null,'N');
COMMIT;
/