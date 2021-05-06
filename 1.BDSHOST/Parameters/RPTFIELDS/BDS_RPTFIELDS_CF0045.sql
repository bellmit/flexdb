﻿--
--
/
DELETE RPTFIELDS WHERE OBJNAME = 'CF0045';
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('CF','PV_SYMBOL','CF0045','PV_SYMBOL','Mã chứng khoán','Symbol',5,'M','cccccccccc','_',10,'SELECT SYMBOL VALUE, SYMBOL VALUECD, fullname DISPLAY, SYMBOL EN_DISPLAY, SYMBOL DESCRIPTION FROM (SELECT SYMBOL,IR.fullname ,1 LSTODR FROM SBSECURITIES SB,ISSUERS IR WHERE IR.ISSUERID =SB.issuerid)ORDER BY LSTODR',null,null,'Y','N','Y',null,null,'Y','C',null,null,null,null,null,null,null,null,null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('CF','PV_CUSTODYCD','CF0045','PV_CUSTODYCD','Số TK lưu ký','Custody code',2,'M','cccc.cccccc','_',10,null,null,null,'Y','N','Y',null,null,'N','C',null,null,null,null,null,null,'CUSTODYCD_CF','CF',null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('CF','T_DATE','CF0045','T_DATE','Đến ngày','To date',1,'M','99/99/9999','dd/MM/yyyy',10,null,null,'<$BUSDATE>','N','N','Y',null,null,'N','D',null,null,null,null,null,null,null,null,null,null,null,null,'N',null);
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('CF','F_DATE','CF0045','F_DATE','Ngày giao dịch','Tx Date',0,'M','99/99/9999','dd/MM/yyyy',10,null,null,'<$BUSDATE>','Y','Y','Y',null,null,'N','D',null,null,null,null,null,null,null,null,null,null,null,null,'Y',null);
COMMIT;
/