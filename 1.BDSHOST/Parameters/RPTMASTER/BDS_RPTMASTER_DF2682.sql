﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'DF2682';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('DF2682','HOST','DF','12','5','5','60','5','5','HUỶ DEAL TRƯỚC KHI GIẢI NGÂN (2682)','Y',1,'1','P',null,'N','B','N','V','N','N','M','000','S',-1,'View Release deal before drawndown (2682)',null,'0','0','0','0','N','N','Y');
COMMIT;
/