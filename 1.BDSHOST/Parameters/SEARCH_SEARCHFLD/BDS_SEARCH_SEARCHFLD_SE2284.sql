﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'SE2284';
INSERT INTO SEARCH (SEARCHCODE,SEARCHTITLE,EN_SEARCHTITLE,SEARCHCMDSQL,OBJNAME,FRMNAME,ORDERBYCMDSQL,TLTXCD,CNTRECORD,ROWPERPAGE,AUTOSEARCH,INTERVAL,AUTHCODE,ROWLIMIT,CMDTYPE)
VALUES ('SE2284','Danh sách CK l?ch giá cu?i ngày hôm tru?c so v?i d?u ngày hôm sau','View securities blocked','SELECT SE.SYMBOL , AL.CDCONTENT TRADEPLACE, EOD.NEWCEILINGPRICE CEILINGPRICE_EOD,EOD.NEWFLOORPRICE FLOORPRICE_EOD, EOD.NEWBASICPRICE BASICPRICE_EOD,
       SE.CEILINGPRICE, SE.FLOORPRICE, SE.BASICPRICE
FROM PRICE_END_OF_DAY EOD,SECURITIES_INFO SE,SBSECURITIES SB, ALLCODE AL
WHERE SE.CODEID = EOD.CODEID
AND (EOD.NEWCEILINGPRICE <> SE.CEILINGPRICE
    OR EOD.NEWFLOORPRICE <> SE.FLOORPRICE
    OR EOD.NEWBASICPRICE <> SE.BASICPRICE)
AND SE.CODEID = SB.CODEID
AND SB.SECTYPE NOT IN (''004'')
AND AL.CDNAME =''TRADEPLACE''
AND AL.CDTYPE =''SE''
AND AL.CDVAL = SB.TRADEPLACE
AND SB.TRADEPLACE NOT IN (''006'')','SEMAST',null,null,null,null,50,'N',30,'NYNNYYYNNN','Y','T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'SE2284';
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (8,'BASICPRICE','Giá TC s? tr?','N','SE2284',50,null,'=,>,<,>=,<=,<>','#,##0','Y','Y','N',100,null,'BASIC price','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (7,'FLOORPRICE','Giá sàn s? tr?','N','SE2284',50,null,'=,>,<,>=,<=,<>','#,##0','Y','Y','N',100,null,'Floor price','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (6,'CEILINGPRICE','Giá tr?n s? tr?','N','SE2284',50,null,'=,>,<,>=,<=,<>','#,##0','Y','Y','N',100,null,'Ceiling price','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (5,'BASICPRICE_EOD','Giá TC cu?i ngày','N','SE2284',50,null,'=,>,<,>=,<=,<>','#,##0','Y','Y','N',100,null,'BASIC price','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (4,'FLOORPRICE_EOD','Giá sàn cu?i ngày','N','SE2284',50,null,'=,>,<,>=,<=,<>','#,##0','Y','Y','N',100,null,'Floor price','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (3,'CEILINGPRICE_EOD','Giá tr?n cu?i ngày','N','SE2284',50,null,'=,>,<,>=,<=,<>','#,##0','Y','Y','N',100,null,'Ceiling price','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (2,'TRADEPLACE','Sàn giao d?ch','C','SE2284',100,null,'LIKE,=',null,'Y','Y','N',100,'SELECT CDVAL VALUECD,CDVAL VALUE,CDCONTENT DISPLAY,CDCONTENT EN_DISPLAY
FROM ALLCODE
WHERE CDTYPE = ''OD''
AND CDNAME = ''TRADEPLACE''
AND CDVAL NOT IN (''006'',''000'')
ORDER BY LSTODR ','Trade place','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (1,'SYMBOL','Mã ch?ng khoán','C','SE2284',50,null,'LIKE,=',null,'Y','Y','N',100,null,'Mã ch?ng khoán',null,'01',null,'N',null,null,null,'N');
COMMIT;
/