﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'FNTYPE';
INSERT INTO SEARCH (SEARCHCODE,SEARCHTITLE,EN_SEARCHTITLE,SEARCHCMDSQL,OBJNAME,FRMNAME,ORDERBYCMDSQL,TLTXCD,CNTRECORD,ROWPERPAGE,AUTOSEARCH,INTERVAL,AUTHCODE,ROWLIMIT,CMDTYPE)
VALUES ('FNTYPE','Loại hình quỹ, ủy thác vốn','Fund, trust unit product type','SELECT TYP.ACTYPE, TYP.TYPENAME, A0.CDCONTENT DESC_FNTYPE, A1.CDCONTENT DESC_STATUS
FROM FNTYPE TYP, ALLCODE A0, ALLCODE A1
WHERE A0.CDTYPE=''FN'' AND A0.CDNAME=''FNTYPE'' AND A0.CDVAL=TYP.FNTYPE
AND A1.CDTYPE=''SY'' AND A1.CDNAME=''TYPESTS'' AND A1.CDVAL=TYP.APPRV_STS','FNTYPE','frmFNTYPE',null,null,null,50,'N',30,null,'Y','T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'FNTYPE';
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (3,'DESC_STATUS','Trạng thái','C','FNTYPE',100,null,'=',null,'Y','Y','N',100,'SELECT CDVAL VALUE,CDCONTENT DISPLAY FROM ALLCODE WHERE CDTYPE=''SY'' AND CDNAME=''TYPESTS'' ORDER BY LSTODR ','Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (2,'DESC_FNTYPE','Loại','C','FNTYPE',100,null,'LIKE,=',null,'Y','Y','N',150,null,'Type','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (1,'TYPENAME','Tên loại hình','C','FNTYPE',100,null,'LIKE,=',null,'Y','Y','N',350,null,'Name','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (0,'ACTYPE','Mã loại hình','C','FNTYPE',100,'cccc','LIKE,=','_','Y','Y','Y',100,null,'Code','N',null,null,'N',null,null,null,'N');
COMMIT;
/