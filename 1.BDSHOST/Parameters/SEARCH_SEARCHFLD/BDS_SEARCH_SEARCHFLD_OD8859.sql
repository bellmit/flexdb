﻿--
--
/
DELETE SEARCH WHERE SEARCHCODE = 'OD8859';
INSERT INTO SEARCH (SEARCHCODE,SEARCHTITLE,EN_SEARCHTITLE,SEARCHCMDSQL,OBJNAME,FRMNAME,ORDERBYCMDSQL,TLTXCD,CNTRECORD,ROWPERPAGE,AUTOSEARCH,INTERVAL,AUTHCODE,ROWLIMIT,CMDTYPE)
VALUES ('OD8859','Gửi lại lệnh lên trung tâm','Resend order (in failback wait for 8859)','SELECT mst.afacctno, ood.orgorderid, ood.txdate, ood.txnum, ood.symbol,
       ood.custodycd, cd1.cdcontent bors, cd2.cdcontent norp, ood.qtty,
       ood.price, cd3.cdcontent tradeplace, mst.pricetype pricetype,
       ood.oodstatus, mst.codeid
  FROM ood, allcode cd1, allcode cd2, odmast mst, sbsecurities sb,
       allcode cd3, ordermap om
 WHERE cd1.cdtype = ''OD''
   AND cd1.cdname = ''BORS''
   AND cd1.cdval = ood.bors
   AND mst.orderid = ood.orgorderid
   AND sb.codeid = ood.codeid
   AND sb.tradeplace = ''001''
   --AND ood.bors IN (''B'', ''S'')
   AND cd2.cdtype = ''OD''
   AND cd2.cdname = ''NORP''
   AND cd2.cdval = ood.norp
   AND cd3.cdtype = ''OD''
   AND cd3.cdname = ''TRADEPLACE''
   AND cd3.cdval = sb.tradeplace
   AND ood.oodstatus = ''B''
   AND ood.orgorderid NOT IN (SELECT orderid
                            FROM stcorderbook)
   and mst.orderid=om.orgorderid
   union all
   SELECT mst.afacctno, ood.orgorderid, ood.txdate, ood.txnum, ood.symbol,
       ood.custodycd, cd1.cdcontent bors, cd2.cdcontent norp, ood.qtty,
       ood.price, cd3.cdcontent tradeplace, mst.pricetype pricetype,
       ood.oodstatus, mst.codeid
  FROM ood, allcode cd1, allcode cd2, odmast mst, sbsecurities sb,
       allcode cd3, ordermap_ha om
 WHERE cd1.cdtype = ''OD''
   AND cd1.cdname = ''BORS''
   AND cd1.cdval = ood.bors
   AND mst.orderid = ood.orgorderid
   AND sb.codeid = ood.codeid
   AND sb.tradeplace = ''002''
   --AND ood.bors IN (''B'', ''S'')
   AND cd2.cdtype = ''OD''
   AND cd2.cdname = ''NORP''
   AND cd2.cdval = ood.norp
   AND cd3.cdtype = ''OD''
   AND cd3.cdname = ''TRADEPLACE''
   AND cd3.cdval = sb.tradeplace
   AND ood.oodstatus = ''B''
   AND ood.orgorderid NOT IN (SELECT orderid
                            FROM stcorderbook)
   and mst.orderid=om.orgorderid','ODMAST',null,null,'8859',null,50,'N',30,'NYNNYYYNNN','Y','T');
COMMIT;
/
--
--
/
DELETE SEARCHFLD WHERE SEARCHCODE = 'OD8859';
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (10,'CODEID','Chứng khoán','C','OD8859',10,null,'LIKE,=','_','Y','Y','N',80,null,'Symbol','N','80',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (9,'OODSTATUS','Trạng thái lệnh','C','OD8859',10,null,'LIKE,=','_','Y','Y','N',80,null,'SYMBOL','N','15',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (8,'TXNUM','Sở giao dịch','C','OD8859',100,'CCCCDCCCCCC','LIKE,=',null,'Y','Y','N',80,null,'Tx.Num','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (7,'TXDATE','Ngày giao dich','D','OD8859',100,null,'=',null,'Y','Y','N',80,null,'Tx.Date','N','  ',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (6,'PRICE','Giá','N','OD8859',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',80,null,'Price','N','13',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (5,'QTTY','Khối lượng','N','OD8859',100,null,'<,<=,=,>=,>,<>','#,##0','Y','Y','N',80,null,'Quantity','N','14',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (4,'SYMBOL','Chứng khoán','C','OD8859',110,null,'LIKE,=','_','Y','Y','N',80,null,'Symbol','N','81',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (3,'NORP','Thường / Thỏa thuận','C','OD8859',100,null,'=','_','Y','Y','N',100,'SELECT CDVAL VALUE, CDCONTENT DISPLAY FROM ALLCODE WHERE CDTYPE = ''OD'' AND CDNAME = ''BORS'' ORDER BY LSTODR','Normal/Putthrough','N','30',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (2,'BORS','Mua / bán','C','OD8859',100,null,'=','_','Y','Y','N',80,'SELECT CDVAL VALUE, CDCONTENT DISPLAY FROM ALLCODE WHERE CDTYPE = ''OD'' AND CDNAME = ''BORS'' ORDER BY LSTODR','Buy/Sell','N',null,null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (1,'CUSTODYCD','Mã lưu ký','C','OD8859',110,'ccc.c.cccccc','LIKE,=','_','Y','Y','N',80,null,'Custody Code','N','82',null,'N',null,null,null,'N');
INSERT INTO SEARCHFLD (POSITION,FIELDCODE,FIELDNAME,FIELDTYPE,SEARCHCODE,FIELDSIZE,MASK,OPERATOR,FORMAT,DISPLAY,SRCH,KEY,WIDTH,LOOKUPCMDSQL,EN_FIELDNAME,REFVALUE,FLDCD,DEFVALUE,MULTILANG,ACDTYPE,ACDNAME,FIELDCMP,FIELDCMPKEY)
VALUES (0,'ORGORDERID','Số hiệu lệnh','C','OD8859',150,null,'LIKE,=',null,'Y','Y','Y',110,null,'Order ID','N','03',null,'N',null,null,null,'N');
COMMIT;
/
