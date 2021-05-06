﻿--
--
/
DELETE RPTFIELDS WHERE OBJNAME = 'DF0026';
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('DF','BRGID','DF0026','BRGID','Mã phân vùng','Branch ID',2,'M','cccccccccc','_',10,'SELECT ''ALL'' VALUE, ''ALL'' VALUECD, ''ALL'' DISPLAY, ''ALL'' EN_DISPLAY, ''ALL'' DESCRIPTION FROM DUAL UNION ALL SELECT ''0021'' VALUE, ''Hà nội'' VALUECD, ''Hà nội'' DISPLAY, ''Ha noi'' EN_DISPLAY, ''Hà nội'' DESCRIPTION FROM DUAL UNION ALL SELECT ''1111'' VALUE, ''Hội sở'' VALUECD, ''Hội sở'' DISPLAY, ''Hoi so'' EN_DISPLAY, ''Hội sở'' DESCRIPTION FROM DUAL ',null,'ALL','Y','N','Y',null,null,'Y','C',null,null,null,null,null,null,null,null,null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('DF','ACTYPE','DF0026','ACTYPE','Loại sản phẩm','Sản phẩm',1,'M','cccc','_',4,'SELECT  actype VALUECD, actype VALUE, TYPENAME display, TYPENAME en_display, TYPENAME description  FROM  (SELECT actype, TYPENAME, actype lstodr  FROM dftype UNION   SELECT ''ALL'' actype,  ''ALL'' TYPENAME, ''0'' lstodr  FROM DUAL ) ORDER BY lstodr',null,'ALL','Y','N','Y',null,null,'Y','C',null,null,null,null,null,null,null,null,null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('DF','I_DATE','DF0026','I_DATE','Ngày thanh lý','Date',0,'M','99/99/9999','dd/MM/yyyy',10,null,null,'<$BUSDATE>','Y','N','Y',null,null,'N','D',null,null,null,null,null,null,null,null,null,null,null,null,'Y',null);
COMMIT;
/