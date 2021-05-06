﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'TLIDTYPE';
INSERT INTO SEARCH (SEARCHCODE,SEARCHTITLE,EN_SEARCHTITLE,SEARCHCMDSQL,OBJNAME,FRMNAME,ORDERBYCMDSQL,TLTXCD,CNTRECORD,ROWPERPAGE,AUTOSEARCH,INTERVAL,AUTHCODE,ROWLIMIT,CMDTYPE)
VALUES ('TLIDTYPE','Phân quyền NSD/Nhóm','Inused Users/Groups','SELECT MST.AUTOID, MST.ACTYPE, MST.TLTYPE, MST.TLCODE, MST.OBJNAME, DTL.TLNAME, A0.CDCONTENT DESC_TLTYPE
FROM TLIDTYPE MST, (SELECT ''G'' TLTYPE, GRPID TLCODE, TO_CHAR(GRPNAME) TLNAME FROM TLGROUPS UNION SELECT ''U'' TLTYPE, TLID TLCODE, TLNAME FROM TLPROFILES) DTL, ALLCODE A0
WHERE MST.TLCODE=DTL.TLCODE AND MST.TLTYPE=DTL.TLTYPE AND MST.ACTYPE=''<$KEYVAL>'' AND MST.OBJNAME=''<$OBJNAME>'' AND A0.CDTYPE=''SY'' AND A0.CDNAME=''TLTYPE'' AND A0.CDVAL=DTL.TLTYPE ORDER BY MST.AUTOID','SA.TLIDTYPE','frmTLIDTYPE',null,null,0,50,'N',30,null,'Y','T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'TLIDTYPE';
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (3,'TLNAME','Tên','C','TLIDTYPE',100,null,'<,<=,=,>=,>,<>',null,'Y','Y','N',350,null,'Name','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (2,'TLCODE','Mã','C','TLIDTYPE',100,null,'<,<=,=,>=,>,<>',null,'Y','Y','N',100,null,'ID','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (1,'DESC_TLTYPE','Loại','C','TLIDTYPE',100,null,'<,<=,=,>=,>,<>',null,'Y','Y','N',100,null,'Type','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (0,'AUTOID','Mã quản lý','N','TLIDTYPE',20,null,'=,<>,<,<=,>=,>',null,'N','Y','Y',100,null,'Auto ID','N',null,null,'N',null,null,null,'N');
COMMIT;
/