﻿--
--
/
DELETE FLDMASTER WHERE OBJNAME = '2875';
INSERT INTO FLDMASTER (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,CTLTYPE,RISKFLD,GRNAME,TAGFIELD,TAGVALUE,TAGLIST,TAGQUERY,PDEFNAME,TAGUPDATE,FLDRND,SUBFIELD,PDEFVAL,DEFDESC,DEFPARAM)
VALUES ('FN','30','2875','DESC','Mô tả','Description',2,'C',null,null,100,' ',' ',' ','Y','N','Y',' ',' ','N','C',null,null,null,null,'##########',null,null,null,null,'T','N','MAIN',null,null,null,'N','P_DESC','Y',null,'N',null,null,null);
INSERT INTO FLDMASTER (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,CTLTYPE,RISKFLD,GRNAME,TAGFIELD,TAGVALUE,TAGLIST,TAGQUERY,PDEFNAME,TAGUPDATE,FLDRND,SUBFIELD,PDEFVAL,DEFDESC,DEFPARAM)
VALUES ('FN','03','2875','ACCTNO','Số tài khoản','Account No',0,'C','9999.999999.999999','9999.999999.999999',20,' ',' ',' ','Y','N','Y',' ',' ','N','C',' ',' ',' ','ACCTNO','##########',null,'FNMAST','FN',null,'M','N','MAIN',null,null,null,'N','P_ACCTNO','Y',null,'N',null,null,null);
COMMIT;
/
--
--
/
DELETE TLTX WHERE TLTXCD = '2875';
INSERT INTO TLTX (TLTXCD,TXDESC,EN_TXDESC,LIMIT,OFFLINEALLOW,IBT,OVRRQD,LATE,OVRLEV,PRN,LOCAL,CHAIN,DIRECT,HOSTACNO,BACKUP,TXTYPE,NOSUBMIT,DELALLOW,FEEAPP,MSQRQR,VOUCHER,MNEM,MSG_AMT,MSG_ACCT,WITHACCT,ACCTENTRY,BGCOLOR,DISPLAY,BKDATE,ADJALLOW,GLGP,VOUCHERID,CCYCD,RUNMOD,RESTRICTALLOW,REFOBJ,REFKEYFLD,MSGTYPE,CHKBKDATE,CFCUSTODYCD,CFFULLNAME,VISIBLE,CHKSINGLE)
VALUES ('2875','Giải tỏa tài khoản quỹ, ủy thác vốn của khách hàng','UnBlock customer fund, trust unit account',0,'Y','Y','Y','0',2,'Y','N','Y','Y',' ','Y','T','2','Y','N','N','FN01','FNAPROVE',null,'03',' ',null,0,'Y','Y','Y','N','CA005LK','##','NET','N',null,null,null,'N','##','##','N','N');
COMMIT;
/
--
--
/
DELETE APPCHK WHERE TLTXCD = '2875';
INSERT INTO APPCHK (TLTXCD,APPTYPE,ACFLD,RULECD,AMTEXP,FLDKEY,DELTDCHK,ISRUN,CHKLEV)
VALUES ('2875','FN','03','02','@B','ACCTNO','N','@1','0');
COMMIT;
/
--
--
/
DELETE APPMAP WHERE TLTXCD = '2875';
INSERT INTO APPMAP (TLTXCD,APPTYPE,APPTXCD,ACFLD,AMTEXP,COND,ACFLDREF,APPTYPEREF,FLDKEY,ISRUN,TRDESC,ODRNUM)
VALUES ('2875','FN','9001','03','@A',null,null,null,'ACCTNO','@1',null,0);
COMMIT;
/