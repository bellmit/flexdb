﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'SE2263';
INSERT INTO SEARCH (SEARCHCODE, SEARCHTITLE, EN_SEARCHTITLE, SEARCHCMDSQL, OBJNAME, FRMNAME, ORDERBYCMDSQL, TLTXCD, CNTRECORD, ROWPERPAGE, AUTOSEARCH, INTERVAL, AUTHCODE, ROWLIMIT, CMDTYPE)
VALUES ('SE2263', 'Chuyển chứng khoán chờ giao dịch thành giao dịch (Giao dịch 2263)', 'View account transfer to other account(wait for 2263)', 'SELECT sb.parvalue, SE.COSTPRICE PRICE , CF.CUSTODYCD,CF.CUSTID, af.acctno AFACCTNO,SB.CODEID,
 cf.fullname,cf.idcode,cf.address,sb.symbol,se.STATUS,AF.ACCTNO||SB.CODEID SEACCTNOCR,AF.ACCTNO||sbwft.CODEID SEACCTNODR,
 (case when (se.TRADE-nvl(ca.qtty,0))>0 then se.TRADE-nvl(ca.qtty,0) else 0 end ) TRADE , se.MORTAGE+ se.STANDING MORTAGE,se.MARGIN ,se.NETTING,
 se.STANDING,se.WITHDRAW,se.DEPOSIT,se.LOAN,
 (case when (se.trade-nvl(ca.qtty,0))>0 then se.BLOCKED else greatest((se.blocked-(nvl(ca.qtty,0)-se.trade)),0) end )BLOCKED,
 se.RECEIVING,se.TRANSFER,se.SENDDEPOSIT,
 se.SENDPENDING,se.DTOCLOSE,se.SDTOCLOSE, NVL(sep.pitqtty,0) pitqtty, NVL(sep.taxrate,0) taxrate
from semast se , afmast af , cfmast cf, sbsecurities sb ,sbsecurities sbwft, SECURITIES_INFO SEINFO,
   (SELECT sum(schd.qtty) qtty ,(schd.afacctno ||symwft.codeid )seacctno
    from caschd schd,camast ca , sbsecurities symwft
    WHERE ca.camastid=schd.camastid AND schd.deltd=''N'' AND schd.ISSE=''Y''
    AND ca.iswft=''Y'' AND ca.deltd=''N''
    AND NVL(ca.tocodeid,ca.codeid)= symwft.refcodeid
    AND (INSTR(nvl(schd.pstatus,''A''),''W'')= 0 and schd.status <> ''W'') GROUP BY schd.afacctno,symwft.codeid) ca,
   (SELECT acctno,SUM(qtty - mapqtty) pitqtty, MAX(pitrate) taxrate FROM sepitlog WHERE deltd <> ''Y'' AND qtty - mapqtty > 0 GROUP BY acctno) sep
where se.afacctno = af.acctno and af.custid = cf.custid and sb.codeid = seinfo.codeid
and se.codeid = sbwft.codeid and sbwft.refcodeid=sb.codeid
and sbwft.tradeplace=''006''
AND se.TRADE + se.MORTAGE + se.STANDING+se.WITHDRAW+se.DEPOSIT+se.BLOCKED+se.SENDDEPOSIT+se.DTOCLOSE>0
and se.acctno= ca.seacctno(+)
and se.TRADE + se.MORTAGE + se.STANDING+se.WITHDRAW+se.DEPOSIT+se.BLOCKED+se.SENDDEPOSIT+se.DTOCLOSE >nvl(ca.qtty,0)
AND se.acctno = sep.acctno(+)', 'SEMAST', 'frmSEMAST', null, '2263', null, 50, 'N', 30, 'NYNNYYYNNN', 'Y', 'T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'SE2263';
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (26,'TAXRATE','Tỷ lệ thuế quyền','N','SE2263',100,null,'<,<=,=,>=,>,<>','#,##0','N','N','N',100,null,'Tax rate','N','20',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (25,'PITQTTY','SL GD từ quyền','N','SE2263',100,null,'<,<=,=,>=,>,<>','#,##0','N','N','N',100,null,'PRICE','N','18',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (24,'PRICE','Giá','N','SE2263',100,null,'<,<=,=,>=,>,<>','#,##0','N','N','N',100,null,'PRICE','N','09',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (23,'PARVALUE','Mệnh giá','N','SE2263',100,null,'<,<=,=,>=,>,<>','#,##0','N','N','N',100,null,'Parvalue','N','11',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (22,'DTOCLOSE','Số dư đóng tiểu khoản','N','SE2263',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',100,null,'Available transfer','N','25',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (20,'SENDDEPOSIT','Số dư gửi lk lên trung tâm','N','SE2263',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',100,null,'Available transfer','N','22',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (17,'BLOCKED','Số dư phong tỏa','N','SE2263',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',100,null,'Available transfer','N','19',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (15,'DEPOSIT','Số dư lưu ký','N','SE2263',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',100,null,'Available transfer','N','17',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (14,'WITHDRAW','Số dư chờ rút','N','SE2263',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',100,null,'Available transfer','N','16',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (13,'STANDING','Số dư cầm cố lên trung tâm','N','SE2263',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',100,null,'Available transfer','N','15',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (12,'NETTING','Số dư chờ giao','N','SE2263',100,null,'<,<=,=,>=,>,<>','#,##0','N','Y','N',100,null,'Available transfer','N','14',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (10,'MORTAGE','Số dư cầm cố','N','SE2263',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',100,null,'Available transfer','N','12',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (9,'TRADE','Số dư giao dịch','N','SE2263',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',100,null,'Available transfer','N','10',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (8,'STATUS','Trạng thái','C','SE2263',100,null,'=',null,'Y','Y','N',80,'SELECT CDVAL VALUE, CDCONTENT DISPLAY FROM ALLCODE WHERE CDTYPE = ''SE'' AND CDNAME = ''STATUS'' ORDER BY LSTODR','Status','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (4,'AFACCTNO','Tiểu khoản','C','SE2263',100,null,'LIKE,=','_','Y','Y','N',100,null,'Contract No','N','02',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (3,'CODEID','Chứng khoán','C','SE2263',100,'cccccc','LIKE,=','_','N','N','N',100,null,'Symbol','N','01',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (3,'SYMBOL','Chứng khoán','C','SE2263',100,'ccccccccccccccc','LIKE,=','_','Y','Y','N',100,null,'Symbol','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (2,'SEACCTNODR','Tiểu khoản chứng khoán chờ giao dịch','C','SE2263',100,'cccc.cccccc.cccccc','LIKE,=','_','N','Y','Y',120,null,'Account No','N','03',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (2,'SEACCTNOCR','Tiểu khoản chứng khoán giao dịch','C','SE2263',100,'cccc.cccccc.cccccc','LIKE,=','_','N','Y','Y',120,null,'Account No','N','05',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (1,'CUSTID','Mã khách hàng','C','SE2263',100,'9999.999999','LIKE,=','_','N','Y','N',100,null,'Customer code','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (-10,'CUSTODYCD','Số tài khoản lưu ký','C','SE2263',10,'ccc.c.cccccc','LIKE,=','_','Y','Y','N',100,null,'Custody code','N','04',null,'N',null,null,null,'N');
COMMIT;
/
