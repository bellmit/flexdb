﻿--
--
/
DELETE RPTFIELDS WHERE OBJNAME = 'SE0022';
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('SE','RECCOMPANY','SE0022','RECCOMPANY','Tại','Receive custodycd',4,'M','ccc',null,3,'SELECT DEPOSITID VALUECD, DEPOSITID VALUE, FULLNAME DISPLAY, FULLNAME EN_DISPLAY, FULLNAME DESCRIPTION FROM 
(SELECT ''000'' DEPOSITID, ''unknown'' FULLNAME FROM DUAL UNION ALL SELECT DEPOSITID, FULLNAME FROM DEPOSIT_MEMBER)','000',null,'Y','N','Y',null,null,'Y','C',null,null,null,null,null,null,null,null,null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('SE','RECNAME','SE0022','RECNAME','Người nhận','Receive custodycd',3,'T','ccccccccccccccccccccccccccccccccccccccccccccccc','_',50,null,null,null,'Y','N','N',null,null,'N','C',null,null,null,null,null,null,null,null,null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('SE','RECCUSTODYCD','SE0022','RECCUSTODYCD','Số TK nhận','Receive custodycd',2,'T','cccccccccc','_',10,null,null,null,'Y','N','N',null,null,'N','C',null,null,null,null,null,null,null,null,null,null,null,null,'Y','T');
INSERT INTO RPTFIELDS (MODCODE,FLDNAME,OBJNAME,DEFNAME,CAPTION,EN_CAPTION,ODRNUM,FLDTYPE,FLDMASK,FLDFORMAT,FLDLEN,LLIST,LCHK,DEFVAL,VISIBLE,DISABLE,MANDATORY,AMTEXP,VALIDTAG,LOOKUP,DATATYPE,INVNAME,FLDSOURCE,FLDDESC,CHAINNAME,PRINTINFO,LOOKUPNAME,SEARCHCODE,SRMODCODE,INVFORMAT,TAGFIELD,TAGLIST,TAGVALUE,ISPARAM,CTLTYPE)
VALUES ('SE','CUSTODYCD','SE0022','PV_CUSTODYCD','Số TK luu ký','Custody code',0,'M','cccc.cccccc','_',10,null,null,null,'Y','N','Y',null,null,'N','C',null,null,null,null,null,null,'CUSTODYCD_TX','CF',null,null,null,null,'Y','T');
COMMIT;
/
