﻿--
--
/
DELETE RPTFIELDS WHERE OBJNAME = 'LN0024';
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('LN','PV_ACTION','LN0024','ACTION','Hành động','ACTION',4,'M','ccccccccccc','_',10,'SELECT ''ALL'' VALUECD,''ALL'' VALUE, ''ALL'' DISPLAY, ''ALL'' EN_DISPLAY, ''ALL'' DESCRIPTION, -1 LSTODR FROM DUAL
UNION ALL
SELECT ''GD1805'' VALUECD,''GD1805'' VALUE, ''GD1805'' DISPLAY, ''1805'' EN_DISPLAY, ''1805'' DESCRIPTION, -1 LSTODR FROM DUAL
UNION ALL
SELECT ''GD1811'' VALUECD,''GD1811'' VALUE, ''GD1811'' DISPLAY, ''1811'' EN_DISPLAY, ''1811'' DESCRIPTION, -1 LSTODR FROM DUAL
UNION ALL
SELECT ''GD1816'' VALUECD,''GD1816'' VALUE, ''GD1816'' DISPLAY, ''1816'' EN_DISPLAY, ''1816'' DESCRIPTION, -1 LSTODR FROM DUAL
UNION ALL
SELECT ''GD1818'' VALUECD,''GD1818'' VALUE, ''GD1818'' DISPLAY, ''1818'' EN_DISPLAY, ''1818'' DESCRIPTION, -1 LSTODR FROM DUAL
UNION ALL
SELECT ''ADD'' VALUECD,''ADD'' VALUE, ''Thêm'' DISPLAY, ''Thêm'' EN_DISPLAY, ''Thêm'' DESCRIPTION, -1 LSTODR FROM DUAL
UNION ALL
SELECT ''DEL'' VALUECD,''DEL'' VALUE, ''Xóa'' DISPLAY, ''Xóa'' EN_DISPLAY, ''Xóa'' DESCRIPTION, -1 LSTODR FROM DUAL',null,'ALL','Y','N','Y',null,null,'Y','C',null,null,null,null,null,null,null,null,null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('LN','PV_AFACCTNO','LN0024','PV_AFACCTNO','Số tiểu khoản','Sub account',3,'M','cccc.cccccc','_',10,null,null,'ALL','Y','N','Y',null,null,'N','C',null,null,null,null,null,null,'AFMAST','CF',null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('LN','pv_CUSTODYCD','LN0024','pv_CUSTODYCD','Số TK lưu ký','Custody code',2,'M','cccc.cccccc','_',10,null,null,'ALL','Y','N','Y',null,null,'N','C',null,null,null,null,null,null,'CUSTODYCD_CF','CF',null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('LN','I_DATE','LN0024','I_DATE','Ngày in báo cáo','From date',0,'M','99/99/9999','dd/MM/yyyy',10,null,null,'<$BUSDATE>','Y','N','Y',null,null,'N','D',null,null,null,null,null,null,null,null,null,null,null,null,'Y',null);
COMMIT;
/