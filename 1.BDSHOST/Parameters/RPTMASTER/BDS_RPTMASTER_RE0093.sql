﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'RE0093';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('RE0093','HOST','RE','12','5','5','60','5','5','SỐ LƯỢNG TIỂU KHOẢN THEO MÔI GIỚI','Y',1,'1','L','RE0093','Y','S','N','R','N','N','M','000','S',-1,'SỐ LƯỢNG TIỂU KHOẢN THEO MÔI GIỚI',null,'0','0','0','0','N','N','Y');
COMMIT;
/