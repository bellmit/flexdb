﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'OD2001';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('OD2001','HOST','OD','12','5','5','60','5','5','BÁO CÁO DOANH THU TẠI TRỤ SỞ','Y',1,'1','L','OD2001','Y','S','N','R','N','N','M','000','S',-1,'BÁO CÁO DOANH THU TẠI TRỤ SỞ',null,'0','0','0','0','N','N','Y');
COMMIT;
/