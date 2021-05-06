﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'OD8880';
INSERT INTO SEARCH (SEARCHCODE,SEARCHTITLE,EN_SEARCHTITLE,SEARCHCMDSQL,OBJNAME,FRMNAME,ORDERBYCMDSQL,TLTXCD,CNTRECORD,ROWPERPAGE,AUTOSEARCH,INTERVAL,AUTHCODE,ROWLIMIT,CMDTYPE)
VALUES ('OD8880','Tra cứu lệnh đang được gửi đến STC (8880)','View sending order to STC (wait for 8880)','SELECT OOD.CUSTODYCD, CD1.CDCONTENT OODBORS, OOD.SYMBOL, OOD.QTTY, OOD.PRICE, CF.FULLNAME, OOD.TXTIME, OOD.ORGORDERID, AF.ACCTNO,
 CD2.CDCONTENT OODNORP, CD3.CDCONTENT OODAORN, CD4.CDCONTENT ODTRADEPLACE, CCY.TRADEPLACE, OOD.BORS, OOD.NORP, OOD.AORN, OOD.TXNUM, OOD.TXDATE, TL.TLNAME
 FROM TLPROFILES TL, TLLOG LOG, OOD, SBSECURITIES CCY, ODMAST OD, AFMAST AF, CFMAST CF, ALLCODE CD1, ALLCODE CD2, ALLCODE CD3, ALLCODE CD4 WHERE OOD.OODSTATUS=''N'' AND OOD.DELTD<>''Y''
 AND OOD.ORGORDERID=OD.ORDERID AND OD.AFACCTNO=AF.ACCTNO AND AF.CUSTID=CF.CUSTID AND CD1.CDTYPE=''OD'' AND CD1.CDNAME=''BORS'' AND CD1.CDVAL=OOD.BORS
 AND CD2.CDTYPE=''OD'' AND CD2.CDNAME=''NORP'' AND CD2.CDVAL=OOD.NORP AND CD3.CDTYPE=''OD'' AND CD3.CDNAME=''NORK'' AND CD3.CDVAL=OOD.AORN
 AND CD4.CDTYPE=''SA'' AND CD4.CDNAME=''TRADEPLACE'' AND CD4.CDVAL=CCY.TRADEPLACE AND CCY.CODEID=OD.CODEID AND LOG.TXDATE=OOD.TXDATE AND LOG.TXNUM=OOD.TXNUM AND LOG.TLID=TL.TLID AND LOG.BRID=TL.BRID',' ',null,'TXTIME, ORGORDERID','8880',null,50,'N',30,'NYNNYYYNNN','Y','T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'OD8880';
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (15,'TLNAME','Người tạo','C','OD8880',20,null,'LIKE,=','_','Y','Y','N',50,null,'Tlname','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (14,'TRADEPLACE','Nơi giao dịch','C','OD8880',100,null,'LIKE,=','_','N','Y','N',50,'SELECT CDVAL VALUE, CDCONTENT DISPLAY FROM ALLCODE WHERE CDTYPE = ''SA'' AND CDNAME = ''TRADEPLACE'' ORDER BY LSTODR','TradePlace','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (13,'TXDATE','Ngày chứng từ','D','OD8880',20,null,'LIKE,=','_','Y','Y','N',50,null,'Txdate','N','29',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (12,'TXNUM','Số chứng từ','C','OD8880',20,null,'LIKE,=','_','Y','Y','N',50,null,'Txnum','N','28',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (11,'OODAORN','Khớp hết/Thường','C','OD8880',40,null,'LIKE,=','_','Y','Y','N',50,null,'AllOrNone','N','27',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (10,'OODNORP','Thường/Thỏa thuận','C','OD8880',40,null,'LIKE,=','_','Y','Y','N',50,null,'Normal/Putthrought','N','26',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (9,'ACCTNO','Số Tiểu khoản','C','OD8880',40,'9999.999999','LIKE,=','_','Y','Y','N',50,null,'Contract number','N','05',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (8,'ORGORDERID','Số hiệu lệnh','C','OD8880',40,null,'LIKE,=','_','Y','Y','N',50,null,'Order ID','N','03',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (7,'TXTIME','Thời gian','C','OD8880',40,null,'LIKE,=','_','Y','Y','N',50,null,'Time','N','25',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (6,'FULLNAME','Khách hàng','C','OD8880',100,null,'LIKE,=','_','Y','Y','N',100,null,'Fullname','N','24',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (5,'PRICE','Giá','N','OD8880',100,null,'<,<=,=,>=,>,<>',null,'Y','Y','N',50,null,'Price','N','23',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (4,'QTTY','Số lượng','N','OD8880',100,null,'<,<=,=,>=,>,<>',null,'Y','Y','N',50,null,'Quantity','N','22',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (3,'SYMBOL','Chứng khoán','C','OD8880',40,null,'LIKE,=','_','Y','Y','N',50,null,'Symbol','N','21',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (2,'OODBORS','Mua/Bán','C','OD8880',40,null,'LIKE,=','_','Y','Y','N',50,null,'Buy/Sell','N','20',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (1,'CUSTODYCD','Số TK lưu ký','C','OD8880',20,'cccc.cccccc','LIKE,=','_','Y','Y','N',50,null,'Custody code','N','04',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (0,'ODTRADEPLACE','Nơi giao dịch','C','OD8880',100,null,'LIKE,=','_','Y','N','N',100,null,'Trade place','N',null,null,'N',null,null,null,'N');
COMMIT;
/