﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'RE0094';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('RE0094','HOST','RE','12','5','5','60','5','5','DANH SÁCH MÔI GIỚI','Y',1,'1','P','RE0094','Y','S','N','R','N','N','M','000','S',-1,'DANH SÁCH MÔI GIỚI',null,'0','0','0','0','N','N','Y');
COMMIT;
/
