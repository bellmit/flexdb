﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'USERT0LIMIT';
INSERT INTO SEARCH (SEARCHCODE,SEARCHTITLE,EN_SEARCHTITLE,SEARCHCMDSQL,OBJNAME,FRMNAME,ORDERBYCMDSQL,TLTXCD,CNTRECORD,ROWPERPAGE,AUTOSEARCH,INTERVAL,AUTHCODE,ROWLIMIT,CMDTYPE)
VALUES ('USERT0LIMIT','Quản lý hạn mức bảo lãnh cho USER','USERT0LIMIT','
SELECT US.AUTOID, US.TLID, US.FULLNAME , A1.CDCONTENT TLTITLE, A2.CDCONTENT PERIOD, US.T0LIMIT, US.T0LIMITALL,
    us.t0limitall - nvl(t0limitexp,0) T0LIMITREMAIL,
    CASE WHEN us.period = 0 THEN nvl(t0limitexp_t0,0)
        WHEN us.period = 1 THEN nvl(t0limitexp_t1,0)
        WHEN us.period = 2 THEN nvl(t0limitexp_t2,0)
    END T0LIMITEXP,
    US.EMAIL, US.BRID,US.CCEMAIL, A3.CDCONTENT STATUS, (CASE WHEN US.STATUS IN (''P'') THEN ''Y'' ELSE ''N'' END) APRALLOW
FROM USERT0LIMIT US, ALLCODE A1, ALLCODE A2, ALLCODE A3,
    (SELECT ol.tlid, SUM(ol.t0amtpending) t0limitexp,
        sum(CASE WHEN ol.period = 0 THEN ol.t0amtpending ELSE 0 END) t0limitexp_t0,
        sum(CASE WHEN ol.period = 1 THEN ol.t0amtpending ELSE 0 END) t0limitexp_t1,
        sum(CASE WHEN ol.period = 2 THEN ol.t0amtpending ELSE 0 END) t0limitexp_t2
        FROM olndetail ol
        WHERE ol.status NOT IN (''P'',''R'',''C'') AND ol.duedate = getcurrdate GROUP BY ol.tlid) ol
WHERE US.TLTITLE = A1.CDVAL AND us.tlid = ol.tlid(+)
AND A1.CDNAME = ''TLTITLE'' AND A1.CDTYPE = ''SA''
AND US.PERIOD = A2.CDVAL
AND A2.CDNAME = ''MINTERM'' AND A2.CDTYPE = ''LN''
AND US.STATUS = A3.CDVAL
AND A3.CDNAME = ''STATUS'' AND A3.CDTYPE = ''SA''
','USERT0LIMIT','frmUSERT0LIMIT',null,null,null,50,'N',30,null,'Y','T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'USERT0LIMIT';
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (100,'APRALLOW','Cho phép duyệt?','C','USERT0LIMIT',100,null,'LIKE,=',null,'N','Y','N',100,null,'Aprove Allow','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (11,'STATUS','Trạng thái','C','USERT0LIMIT',100,null,'LIKE,=',null,'Y','Y','N',200,null,'Status','Y',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (10,'BRID','Mã chi nhánh','C','USERT0LIMIT',100,null,'LIKE,=',null,'Y','Y','N',200,null,'BRID','Y',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (9,'CCEMAIL','Cc Email','C','USERT0LIMIT',100,null,'LIKE,=',null,'Y','Y','N',200,null,'CCEMAIL','Y',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (8,'EMAIL','Email','C','USERT0LIMIT',100,null,'LIKE,=',null,'Y','Y','N',200,null,'EMAIL','Y',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (7,'T0LIMITEXP','Hạn mức giải ngân đã cấp trong ngày','N','USERT0LIMIT',100,null,'>=,<=,=,>,<','#,##0','Y','Y','N',200,null,'T0LIMITEXP','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (6,'T0LIMITREMAIL','Hạn mức giải ngân còn lại','N','USERT0LIMIT',100,null,'>=,<=,=,>,<','#,##0','Y','Y','N',200,null,'T0LIMITREMAIL','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (5,'T0LIMITALL','Hạn mức giải ngân tất cả KH trong ngày','N','USERT0LIMIT',100,null,'>=,<=,=,>,<','#,##0','Y','Y','N',200,null,'T0LIMITALL','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (4,'T0LIMIT','Hạn mức giải ngân 1 KH trong ngày','N','USERT0LIMIT',100,null,'>=,<=,=,>,<','#,##0','Y','Y','N',200,null,'T0LIMIT','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (3,'PERIOD','Kỳ hạn bảo lãnh','C','USERT0LIMIT',100,null,'LIKE,=',null,'Y','Y','N',200,null,'PERIOD','Y',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (2,'TLTITLE','Chức vụ','C','USERT0LIMIT',100,null,'LIKE,=',null,'Y','Y','N',200,null,'TLTITLE','Y',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (1,'FULLNAME','Tên user','C','USERT0LIMIT',100,null,'LIKE,=',null,'Y','Y','N',200,null,'FULLNAME','Y',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (0,'TLID','Mã USER','C','USERT0LIMIT',100,null,'LIKE,=',null,'Y','Y','N',80,null,'TLID','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (-1,'AUTOID','Mã quản lý','C','USERT0LIMIT',100,null,'LIKE,=',null,'N','N','Y',100,null,'Auto ID','N',null,null,'N',null,null,null,'N');
COMMIT;
/