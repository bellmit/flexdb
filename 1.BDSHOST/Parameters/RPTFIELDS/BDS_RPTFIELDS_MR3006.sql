﻿--
--
/
DELETE RPTFIELDS WHERE OBJNAME = 'MR3006';
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('MR','LOANAUTOID','MR3006','LOANAUTOID','Số hiệu giải ngân','Loan autoid',2,'M','ccccccccccccccc','_',15,null,null,null,'Y','N','Y',null,null,'N','C',null,null,null,null,null,null,'RMR3006','LN',null,null,null,null,'Y','T');
COMMIT;
/