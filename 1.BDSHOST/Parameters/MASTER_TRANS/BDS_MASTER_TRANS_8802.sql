﻿--
--
/
DELETE FLDMASTER WHERE OBJNAME = '8802';
INSERT INTO FLDMASTER (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,CTLTYPE,RISKFLD,GRNAME,TAGFIELD,TAGVALUE,TAGLIST,TAGQUERY,PDEFNAME,TAGUPDATE,FLDRND,SUBFIELD,PDEFVAL,DEFDESC,DEFPARAM)
VALUES ('OD','30','8802','DESC','Diễn giải','Description',14,'C',' ',' ',250,' ',' ',' ','Y','N','N',' ',' ','N','C',null,null,null,null,'##########',null,null,null,null,'T','N','MAIN',null,null,null,'N',null,'Y',null,'N',null,null,null);
INSERT INTO FLDMASTER (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,CTLTYPE,RISKFLD,GRNAME,TAGFIELD,TAGVALUE,TAGLIST,TAGQUERY,PDEFNAME,TAGUPDATE,FLDRND,SUBFIELD,PDEFVAL,DEFDESC,DEFPARAM)
VALUES ('OD','13','8802','EXPRICE','Giá đặt lệnh','EX Price',13,'N','#,##0','#,##0',4,' ',' ',' ','Y','Y','Y',' ',' ','N','N',null,null,null,'EXPRICE','##########',null,null,null,null,'T','N','MAIN',null,null,null,'N',null,'Y','0','N',null,null,null);
INSERT INTO FLDMASTER (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,CTLTYPE,RISKFLD,GRNAME,TAGFIELD,TAGVALUE,TAGLIST,TAGQUERY,PDEFNAME,TAGUPDATE,FLDRND,SUBFIELD,PDEFVAL,DEFDESC,DEFPARAM)
VALUES ('OD','12','8802','PARVALUE','Mệnh giá','Parvalue',12,'N','#,##0','#,##0',4,' ',' ',' ','Y','Y','Y',' ',' ','N','N',null,null,null,'PARVALUE','##########',null,null,null,null,'T','N','MAIN',null,null,null,'N',null,'Y','0','N',null,null,null);
INSERT INTO FLDMASTER (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,CTLTYPE,RISKFLD,GRNAME,TAGFIELD,TAGVALUE,TAGLIST,TAGQUERY,PDEFNAME,TAGUPDATE,FLDRND,SUBFIELD,PDEFVAL,DEFDESC,DEFPARAM)
VALUES ('OD','11','8802','AVLCANCELAMT','Giá trị ký quỹ được giải tỏa','Secured release amount',11,'N','#,##0','#,##0',8,' ',' ',' ','Y','y','Y',' ',' ','N','N',null,null,null,'AVLCANCELAMT','##########',null,null,null,null,'T','N','MAIN',null,null,null,'N',null,'Y','0','N',null,null,null);
INSERT INTO FLDMASTER (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,CTLTYPE,RISKFLD,GRNAME,TAGFIELD,TAGVALUE,TAGLIST,TAGQUERY,PDEFNAME,TAGUPDATE,FLDRND,SUBFIELD,PDEFVAL,DEFDESC,DEFPARAM)
VALUES ('OD','10','8802','AVLCANCELQTTY','Khối lượng hủy','Cancel quantity',10,'N','#,##0','#,##0',8,' ',' ',' ','Y','y','Y',' ',' ','N','N',null,null,null,'AVLCANCELQTTY','##########',null,null,null,null,'T','N','MAIN',null,null,null,'N',null,'Y','0','N',null,null,null);
INSERT INTO FLDMASTER (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,CTLTYPE,RISKFLD,GRNAME,TAGFIELD,TAGVALUE,TAGLIST,TAGQUERY,PDEFNAME,TAGUPDATE,FLDRND,SUBFIELD,PDEFVAL,DEFDESC,DEFPARAM)
VALUES ('OD','07','8802','AFACCTNO','Số Tiểu khoản','Contract number',9,'C','9999.999999','9999.999999',16,' ',' ',' ','Y','Y','N',' ',' ','N','C',null,null,null,'AFACCTNO','##########',null,null,null,null,'M','N','MAIN',null,null,null,'N',null,'Y',null,'N',null,null,null);
INSERT INTO FLDMASTER (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,CTLTYPE,RISKFLD,GRNAME,TAGFIELD,TAGVALUE,TAGLIST,TAGQUERY,PDEFNAME,TAGUPDATE,FLDRND,SUBFIELD,PDEFVAL,DEFDESC,DEFPARAM)
VALUES ('OD','06','8802','SEACCTNO','Số tài khoản SE','SE account number',8,'C','9999.999999.999999','9999.999999.999999',16,' ',' ',' ','Y','Y','N',' ',' ','N','C',null,null,null,'SEACCTNO','##########',null,null,null,null,'M','N','MAIN',null,null,null,'N',null,'Y',null,'N',null,null,null);
INSERT INTO FLDMASTER (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,CTLTYPE,RISKFLD,GRNAME,TAGFIELD,TAGVALUE,TAGLIST,TAGQUERY,PDEFNAME,TAGUPDATE,FLDRND,SUBFIELD,PDEFVAL,DEFDESC,DEFPARAM)
VALUES ('OD','05','8802','CIACCTNO','Số tài khoản CI','CI account number',7,'C','9999.999999','9999.999999',16,' ',' ',' ','Y','Y','N',' ',' ','N','C',null,null,null,'CIACCTNO','##########',null,null,null,null,'M','N','MAIN',null,null,null,'N',null,'Y',null,'N',null,null,null);
INSERT INTO FLDMASTER (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,CTLTYPE,RISKFLD,GRNAME,TAGFIELD,TAGVALUE,TAGLIST,TAGQUERY,PDEFNAME,TAGUPDATE,FLDRND,SUBFIELD,PDEFVAL,DEFDESC,DEFPARAM)
VALUES ('OD','85','8802','AORN','Khớp toàn bộ hay một phần','All or None',6,'C',' ',' ',50,' ',' ',' ','Y','Y','N',' ',' ','N','C',null,null,null,'AORN','##########',null,null,null,null,'T','N','MAIN',null,null,null,'N',null,'Y',null,'N',null,null,null);
INSERT INTO FLDMASTER (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,CTLTYPE,RISKFLD,GRNAME,TAGFIELD,TAGVALUE,TAGLIST,TAGQUERY,PDEFNAME,TAGUPDATE,FLDRND,SUBFIELD,PDEFVAL,DEFDESC,DEFPARAM)
VALUES ('OD','84','8802','NORP','Thường hay thỏa thuận','Normal or Puthrought',5,'C',' ',' ',50,' ',' ',' ','Y','Y','N',' ',' ','N','C',null,null,null,'NORP','##########',null,null,null,null,'T','N','MAIN',null,null,null,'N',null,'Y',null,'N',null,null,null);
INSERT INTO FLDMASTER (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,CTLTYPE,RISKFLD,GRNAME,TAGFIELD,TAGVALUE,TAGLIST,TAGQUERY,PDEFNAME,TAGUPDATE,FLDRND,SUBFIELD,PDEFVAL,DEFDESC,DEFPARAM)
VALUES ('OD','83','8802','BORS','Lệnh mua hay bán','Buy or Sell',4,'C',' ',' ',50,' ',' ',' ','Y','Y','N',' ',' ','N','C',null,null,null,'BORS','##########',null,null,null,null,'T','N','MAIN',null,null,null,'N',null,'Y',null,'N',null,null,null);
INSERT INTO FLDMASTER (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,CTLTYPE,RISKFLD,GRNAME,TAGFIELD,TAGVALUE,TAGLIST,TAGQUERY,PDEFNAME,TAGUPDATE,FLDRND,SUBFIELD,PDEFVAL,DEFDESC,DEFPARAM)
VALUES ('OD','82','8802','CUSTODYCD','Số tài khoản lưu ký','Custody code',3,'C',' ',' ',50,' ',' ',' ','Y','Y','N',' ',' ','N','C',null,null,null,'CUSTODYCD','##########',null,null,null,null,'T','N','MAIN',null,null,null,'N',null,'Y',null,'N',null,null,null);
INSERT INTO FLDMASTER (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,CTLTYPE,RISKFLD,GRNAME,TAGFIELD,TAGVALUE,TAGLIST,TAGQUERY,PDEFNAME,TAGUPDATE,FLDRND,SUBFIELD,PDEFVAL,DEFDESC,DEFPARAM)
VALUES ('OD','81','8802','SYMBOL','Mã chứng khoán','Symbol',2,'C',' ',' ',20,' ',' ',' ','Y','Y','N',' ',' ','N','C',null,null,null,'SYMBOL','##########',null,null,null,null,'T','N','MAIN',null,null,null,'N',null,'Y',null,'N',null,null,null);
INSERT INTO FLDMASTER (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,CTLTYPE,RISKFLD,GRNAME,TAGFIELD,TAGVALUE,TAGLIST,TAGQUERY,PDEFNAME,TAGUPDATE,FLDRND,SUBFIELD,PDEFVAL,DEFDESC,DEFPARAM)
VALUES ('OD','80','8802','CODEID','Mã qui ước','Code ID',1,'C',' ',' ',6,' ',' ',' ','Y','Y','N',' ',' ','N','C',null,null,null,'CODEID','##########',null,null,null,null,'T','N','MAIN',null,null,null,'N',null,'Y',null,'N',null,null,null);
INSERT INTO FLDMASTER (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,CTLTYPE,RISKFLD,GRNAME,TAGFIELD,TAGVALUE,TAGLIST,TAGQUERY,PDEFNAME,TAGUPDATE,FLDRND,SUBFIELD,PDEFVAL,DEFDESC,DEFPARAM)
VALUES ('OD','03','8802','ORGORDERID','Số hiệu lệnh gốc','Original order ID',0,'C','9999.999999.999999','9999.999999.999999',20,' ',' ',' ','Y','Y','Y',' ',' ','N','C',null,null,null,'ORDERID','##########',null,'ODMAST','OD',null,'M','N','MAIN',null,null,null,'N',null,'Y',null,'N',null,null,null);
COMMIT;
/
--
--
/
DELETE TLTX WHERE TLTXCD = '8802';
INSERT INTO TLTX (TLTXCD,TXDESC,EN_TXDESC,LIMIT,OFFLINEALLOW,IBT,OVRRQD,LATE,OVRLEV,PRN,LOCAL,CHAIN,DIRECT,HOSTACNO,BACKUP,TXTYPE,NOSUBMIT,DELALLOW,FEEAPP,MSQRQR,VOUCHER,MNEM,MSG_AMT,MSG_ACCT,WITHACCT,ACCTENTRY,BGCOLOR,DISPLAY,BKDATE,ADJALLOW,GLGP,VOUCHERID,CCYCD,RUNMOD,RESTRICTALLOW,REFOBJ,REFKEYFLD,MSGTYPE,CHKBKDATE,CFCUSTODYCD,CFFULLNAME,VISIBLE,CHKSINGLE)
VALUES ('8802','Hủy lệnh mua','Cancel buy order',0,'Y','Y','Y','0',2,'Y','N','N','N',' ','Y','M','2','N','N','N','OD01','ODBCANCEL','11','03',' ',null,0,'Y','N','Y','N',null,'##','NET','N',null,null,null,'N','##','##','N','N');
COMMIT;
/
--
--
/
DELETE APPCHK WHERE TLTXCD = '8802';
INSERT INTO APPCHK (TLTXCD,APPTYPE,ACFLD,RULECD,AMTEXP,FLDKEY,DELTDCHK,ISRUN,CHKLEV)
VALUES ('8802','CI','05','07','11','ACCTNO','N','@1','0');
INSERT INTO APPCHK (TLTXCD,APPTYPE,ACFLD,RULECD,AMTEXP,FLDKEY,DELTDCHK,ISRUN,CHKLEV)
VALUES ('8802','OD','03','02','@NBBC','ORDERID','N','@1','0');
INSERT INTO APPCHK (TLTXCD,APPTYPE,ACFLD,RULECD,AMTEXP,FLDKEY,DELTDCHK,ISRUN,CHKLEV)
VALUES ('8802','CI','05','01','@A','ACCTNO','N','@1','0');
INSERT INTO APPCHK (TLTXCD,APPTYPE,ACFLD,RULECD,AMTEXP,FLDKEY,DELTDCHK,ISRUN,CHKLEV)
VALUES ('8802','OD','03','01','@124','ORDERID','N','@1','0');
COMMIT;
/
--
--
/
DELETE APPMAP WHERE TLTXCD = '8802';
INSERT INTO APPMAP (TLTXCD,APPTYPE,APPTXCD,ACFLD,AMTEXP,COND,ACFLDREF,APPTYPEREF,FLDKEY,ISRUN,TRDESC,ODRNUM)
VALUES ('8802','OD','0001','03','@3',null,null,null,'ORDERID','@1',null,0);
INSERT INTO APPMAP (TLTXCD,APPTYPE,APPTXCD,ACFLD,AMTEXP,COND,ACFLDREF,APPTYPEREF,FLDKEY,ISRUN,TRDESC,ODRNUM)
VALUES ('8802','CI','0017','05','11',null,'03','OD','ACCTNO','@1',null,0);
INSERT INTO APPMAP (TLTXCD,APPTYPE,APPTXCD,ACFLD,AMTEXP,COND,ACFLDREF,APPTYPEREF,FLDKEY,ISRUN,TRDESC,ODRNUM)
VALUES ('8802','OD','0014','03','10',null,'05','CI','ORDERID','@1',null,0);
INSERT INTO APPMAP (TLTXCD,APPTYPE,APPTXCD,ACFLD,AMTEXP,COND,ACFLDREF,APPTYPEREF,FLDKEY,ISRUN,TRDESC,ODRNUM)
VALUES ('8802','CI','0030','05','<$BUSDATE>',null,'03','OD','ACCTNO','@1',null,0);
INSERT INTO APPMAP (TLTXCD,APPTYPE,APPTXCD,ACFLD,AMTEXP,COND,ACFLDREF,APPTYPEREF,FLDKEY,ISRUN,TRDESC,ODRNUM)
VALUES ('8802','CI','0012','05','11',null,'03','OD','ACCTNO','@1',null,0);
INSERT INTO APPMAP (TLTXCD,APPTYPE,APPTXCD,ACFLD,AMTEXP,COND,ACFLDREF,APPTYPEREF,FLDKEY,ISRUN,TRDESC,ODRNUM)
VALUES ('8802','OD','0030','03','11',null,'05','CI','ORDERID','@1',null,0);
COMMIT;
/