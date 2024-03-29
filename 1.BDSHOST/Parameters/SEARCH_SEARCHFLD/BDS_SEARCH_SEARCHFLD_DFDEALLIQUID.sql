﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'DFDEALLIQUID';
INSERT INTO SEARCH (SEARCHCODE,SEARCHTITLE,EN_SEARCHTITLE,SEARCHCMDSQL,OBJNAME,FRMNAME,ORDERBYCMDSQL,TLTXCD,CNTRECORD,ROWPERPAGE,AUTOSEARCH,INTERVAL,AUTHCODE,ROWLIMIT,CMDTYPE)
VALUES ('DFDEALLIQUID','Tiểu khoản DF','Deal information','select v.*,cd.cdcontent DEALTYPE, sb.tradelot,
v.PRINNML+v.INTNMLACR+v.INTDUE+v.OPRINNML+v.OINTNMLACR+v.OINTDUE+v.FEE+v.FEEDUE -nvl(sts.NML,0) INDUEAMT,
nvl(sts.NML,0) DUEAMT, v.PRINOVD+v.INTOVDACR+v.INTNMLOVD+v.OPRINOVD+v.OINTOVDACR+v.OINTNMLOVD+v.FEEOVD OVERDUEAMT,
mst.EXPDATE, (CASE WHEN TYP.NINTCD=''000'' THEN 1 ELSE 0 END) FLAGINTACR, -- NẾU LÀ 000 LÀ CÁCH TÍNH NHƯ CŨ
0 INTDAY,
0 INTOVDDAY,
v.INTNMLACR+ v.OINTNMLACR + v.OINTOVDACR + v.INTOVDACR INTACR, greatest(v.INTAMTACR+v.feeamt,v.FEEMIN-v.RLSFEEAMT) DEALFEEAMT,lns.OVERDUEDATE
from v_getDealInfo v, allcode cd, securities_info sb,
 (SELECT S.ACCTNO, SUM(NML) NML, M.TRFACCTNO FROM LNSCHD S, LNMAST M
        WHERE S.OVERDUEDATE = TO_DATE((select varvalue from sysvar where grname =''SYSTEM'' and varname =''CURRDATE''),''DD/MM/YYYY'') AND S.NML > 0 AND S.REFTYPE IN (''P'')
            AND S.ACCTNO = M.ACCTNO AND M.STATUS NOT IN (''P'',''R'',''C'')
        GROUP BY S.ACCTNO, M.TRFACCTNO
        ORDER BY S.ACCTNO) sts, lnmast mst,lnschd lns, lntype typ, (select TO_DATE(VARVALUE,''DD/MM/RRRR'') currdate from sysvar where varname=''CURRDATE'') dt
where v.status=''A'' and v.lnacctno = sts.acctno (+) and v.codeid=sb.codeid and mst.acctno = lns.acctno
and v.afacctno like nvl(''<$AFACCTNO>'',''%'') and mst.actype=typ.actype and v.lnacctno=mst.acctno
and cd.cdname=''DFTYPE'' and cd.cdtype=''DF'' and cd.cdval=v.dftype and (v.rlsamt - v.AMT) <> 0 and lns.reftype = ''P''
','DFMAST','frmCreateDFDeal',null,null,null,50,'N',0,null,'Y','T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'DFDEALLIQUID';
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (93,'TRADELOT','TRADELOT','C','DFDEALLIQUID',100,null,null,null,'N','N','N',100,null,'TRADELOT','N','47',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (92,'INTOVDDAY','INTOVDDAY','C','DFDEALLIQUID',100,null,null,null,'N','N','N',100,null,'INTOVDDAY','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (91,'INTDAY','INTDAY','C','DFDEALLIQUID',100,null,null,null,'N','N','N',100,null,'INTDAY','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (90,'FLAGINTACR','FLAGINTACR','C','DFDEALLIQUID',100,null,null,'#,##0','N','N','N',100,null,'FLAGINTACR','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (82,'DESCRIPTION','Diễn giải','C','DFDEALLIQUID',100,null,'=,LIKE',null,'Y','N','N',100,null,'Description','N','57',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (81,'FLAGTRIGGER','FLAGTRIGGER','C','DFDEALLIQUID',100,null,'=,LIKE',null,'N','N','N',100,null,'FLAGTRIGGER','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (80,'IDCODE','CMT/GPKD','C','DFDEALLIQUID',100,null,'=,LIKE',null,'Y','N','N',100,null,'Identify code','N','59',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (79,'ADDRESS','Địa chỉ','C','DFDEALLIQUID',100,null,'=,LIKE',null,'Y','N','N',100,null,'Address','N','58',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (78,'FULLNAME','Họ và tên','C','DFDEALLIQUID',100,null,'=,LIKE',null,'Y','N','N',100,null,'Fullname','N','57',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (77,'DEALFEEAMT','Phí của deal','N','DFDEALLIQUID',100,null,'<,<=,=,>=,>,<>','#,##0.###0','Y','N','N',100,null,'Deal fee amount','N','10',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (76,'INTACR','Lãi cộng dồn','N','DFDEALLIQUID',100,null,'<,<=,=,>=,>,<>','#,##0.###0','Y','N','N',100,null,'interest accure','N','10',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (75,'INDUEAMT','GT vay trong hạn','N','DFDEALLIQUID',100,null,'<,<=,=,>=,>,<>','#,##0.###0','Y','N','N',100,null,'Indue amount','N','10',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (74,'DUEAMT','GT vay đến hạn','N','DFDEALLIQUID',100,null,'<,<=,=,>=,>,<>','#,##0','Y','N','N',100,null,'Due amount','N','10',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (73,'OVERDUEAMT','GT vay quá hạn','N','DFDEALLIQUID',100,null,'<,<=,=,>=,>,<>','#,##0','Y','N','N',100,null,'Over due amount','N','10',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (72,'DFTRADING','Số lượng được giao dịch','N','DFDEALLIQUID',100,null,'<,<=,=,>=,>,<>','#,##0','Y','N','N',100,null,'Available trading','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (71,'CARCVQTTY','SL CK phong toả quyền chờ về','N','DFDEALLIQUID',100,null,'<,<=,=,>=,>,<>','#,##0','Y','N','N',100,null,'CA receiving','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (70,'RCVQTTY','SL CK phong toả chờ về','N','DFDEALLIQUID',100,null,'<,<=,=,>=,>,<>','#,##0','Y','N','N',100,null,'Receiving Quantity','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (69,'BLOCKQTTY','SL CK phong tỏa có DK','N','DFDEALLIQUID',100,null,'<,<=,=,>=,>,<>','#,##0','Y','N','N',100,null,'Block Quantity','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (68,'AFACCTNO','Số tiểu khoản','C','DFDEALLIQUID',120,null,'=,LIKE','_','Y','Y','N',100,null,'Account number','N','05',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (9,'DFRATE','Tỉ lệ cho vay','N','DFDEALLIQUID',100,null,'<,<=,=,>=,>,<>','#,##0.###0','Y','N','N',100,null,'Df rate','N','10',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (8,'ACTYPE','Mã sản phẩm','C','DFDEALLIQUID',100,null,'=,LIKE',null,'Y','Y','N',100,null,'Actype','N','57',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (7,'OVERDUEDATE','Hạn trả nợ','D','DFDEALLIQUID',100,'__/__/____','=','##/##/####','Y','Y','N',70,null,'Expired date','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (6,'RLSDATE','Ngày giải ngân','D','DFDEALLIQUID',100,'__/__/____','=','##/##/####','Y','Y','N',70,null,'Drawndown date','N','49',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (5,'ACCTNO','Tiểu khoản DF','C','DFDEALLIQUID',18,'cccc.cccccc.cccccc','=,LIKE','_','Y','Y','Y',100,null,'DF Account number','N','02',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (4,'AMT','GT vay gốc','N','DFDEALLIQUID',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',100,null,'Amount','N','10',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (3,'DFQTTY','SL CK phong tỏa','N','DFDEALLIQUID',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',100,null,'DF Quantity','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (2,'SYMBOL','Chứng khoán','C','DFDEALLIQUID',100,null,'=,LIKE',null,'Y','Y','N',100,null,'Symbol','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (1,'DEALTYPE','Sản phẩm','C','DFDEALLIQUID',100,null,'=,LIKE',null,'Y','Y','N',100,null,'Product','N','57',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (0,'CUSTODYCD','Số TK lưu ký','C','DFDEALLIQUID',100,null,'=,LIKE',null,'Y','Y','N',100,null,'Custody code','N','88',null,'N',null,null,null,'N');
COMMIT;
/
