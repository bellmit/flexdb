﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'REGRP';
INSERT INTO SEARCH (SEARCHCODE,SEARCHTITLE,EN_SEARCHTITLE,SEARCHCMDSQL,OBJNAME,FRMNAME,ORDERBYCMDSQL,TLTXCD,CNTRECORD,ROWPERPAGE,AUTOSEARCH,INTERVAL,AUTHCODE,ROWLIMIT,CMDTYPE)
VALUES ('REGRP','Quản lý nhóm đại lý/môi giới','Group of remiser account','SELECT GRP.AUTOID, PRGRP.FULLNAME PRNAME, GRP.FULLNAME,
CF.CUSTID, GRP.GRPLEVEL, GRP.MINDREVAMT+GRP.MINIREVAMT MINREVENUE,
CASE WHEN TO_DATE(''<$BUSDATE>'',''DD/MM/RRRR'') BETWEEN GRP.EFFDATE AND GRP.EXPDATE THEN  A0.CDCONTENT ELSE ''Ðóng'' END DESC_STATUS, CF.FULLNAME REFULLNAME,
SP_FORMAT_REGRP_MAPCODE(GRP.AUTOID) MAPCODE, SP_FORMAT_REGRP_GRPLEVEL(GRP.AUTOID) MAPLEVEL, TYP.TYPENAME
FROM REGRP GRP, ALLCODE A0, CFMAST CF, REGRP PRGRP, RETYPE TYP, RECFLNK RF
WHERE GRP.ACTYPE=TYP.ACTYPE AND CF.CUSTID=GRP.CUSTID AND A0.CDTYPE=''RE'' AND A0.CDNAME=''STATUS'' AND A0.CDVAL=GRP.STATUS
 AND GRP.PRGRPID = PRGRP.AUTOID (+) AND GRP.CUSTID=RF.CUSTID AND ( ''<$BRID>'' =''0001'' or RF.BRID = ''<$BRID>'')','REGRP','frmREGRP','MAPCODE',null,0,50,'N',30,null,'Y','T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'REGRP';
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (9,'DESC_STATUS','Trạng thái','C','REGRP',80,null,'LIKE,=',null,'Y','Y','N',80,null,'Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (8,'TYPENAME','Loại hình','C','REGRP',200,null,'=,LIKE',null,'Y','Y','N',120,null,'Product name','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (7,'MINREVENUE','Ðịnh mức khoán','N','REGRP',80,null,'<,<=,=,>=,>,<>','#,##0.###','Y','Y','N',100,null,'Minimum revenue','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (6,'CUSTID','Mã trưởng nhóm','C','REGRP',200,null,'=,LIKE',null,'Y','Y','N',100,null,'Leader ID','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (5,'REFULLNAME','Trưởng nhóm','C','REGRP',200,null,'=,LIKE',null,'Y','Y','N',120,null,'Leader','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (4,'GRPLEVEL','Mức','N','REGRP',500,null,'=','#,##0','Y','N','N',80,null,'Level','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (3,'FULLNAME','Tên nhóm','C','REGRP',200,null,'=,LIKE',null,'Y','Y','N',200,null,'Group name','Y',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (2,'PRNAME','Nhóm cấp trên','C','REGRP',200,null,'=,LIKE',null,'Y','Y','N',150,null,'Parent group','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (1,'MAPCODE','Mã nhóm','C','REGRP',200,null,'=,LIKE',null,'Y','Y','N',150,null,'Group code','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (0,'AUTOID','Mã','C','REGRP',100,'9999','=,LIKE','_','N','N','Y',50,null,'AutoID','N',null,null,'N',null,null,null,'N');
COMMIT;
/