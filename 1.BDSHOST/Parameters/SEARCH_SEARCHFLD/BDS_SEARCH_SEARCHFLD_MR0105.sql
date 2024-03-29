﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'MR0105';
INSERT INTO SEARCH (SEARCHCODE,SEARCHTITLE,EN_SEARCHTITLE,SEARCHCMDSQL,OBJNAME,FRMNAME,ORDERBYCMDSQL,TLTXCD,CNTRECORD,ROWPERPAGE,AUTOSEARCH,INTERVAL,AUTHCODE,ROWLIMIT,CMDTYPE)
VALUES ('MR0105','Danh sách tài sản đánh dấu Margin (chi tiết)','Marked Asset Management (details)','select * from (
SELECT  cf.custodycd, AFACCTNO, SB.SYMBOL CODEID, C1.cdcontent ALLOCTYP, PRINUSED, ORGORDERID, TXNUM, TXDATE, C2.cdcontent RESTYPE
FROM (select * from afpralloc union all select * from afprallochist) AFPR, sbsecurities SB, cfmast cf, afmast af, ALLCODE C1, ALLCODE C2
where AFPR.alloctyp = C1.cdval and C1.cdtype = ''PR'' and C1.cdname = ''ALLOCTYP''
and AFPR.RESTYPE = C2.cdval and C2.cdtype = ''PR'' and C2.cdname = ''RESTYPE''
and SB.codeid = afpr.codeid and cf.custid = af.custid and af.acctno = AFPR.afacctno
ORDER BY AFPR.AFACCTNO, AFPR.CODEID,cf.custodycd, AFPR.AUTOID) where 0=0','vw_afpralloc_all',null,null,null,null,50,'N',30,'NYNNYYYNNN','Y','T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'MR0105';
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (10,'TXDATE','Ngày CT','D','MR0105',20,null,'<,<=,=,>=,>,<>',null,'Y','Y','N',80,null,'Transaction date','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (9,'TXNUM','Số CT','C','MR0105',20,null,'=,LIKE',null,'Y','Y','N',80,null,'Transaction number','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (8,'ORGORDERID','Số hiệu lệnh','C','MR0105',20,null,'=,LIKE',null,'Y','Y','N',120,null,'Order ID','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (7,'RESTYPE','Loại nguồn','C','MR0105',20,null,'=,LIKE',null,'Y','Y','N',90,null,'Can use','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (6,'ALLOCTYP','Loại đánh dấu','C','MR0105',20,null,'=,LIKE',null,'Y','Y','N',90,null,'Can use','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (5,'PRINUSED','Đã sử dụng','N','MR0105',20,null,'<,<=,=,>=,>,<>','#,##0','Y','N','N',150,null,'In used','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (4,'CODEID','Mã chứng khoán','C','MR0105',3,null,'=,LIKE',null,'Y','Y','N',60,null,'Type','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (3,'AFACCTNO','Số tiểu khoản','C','MR0105',250,null,'=,LIKE','_','Y','Y','N',100,null,'Poom/Room Name','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (2,'CUSTODYCD','Số TK lưu ký','C','MR0105',250,null,'=,LIKE','_','Y','Y','N',90,null,'Poom/Room Name','N',null,null,'N',null,null,null,'N');
COMMIT;
/
