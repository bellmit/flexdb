﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'PR0003';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('PR0003','HOST','PR','12','5','5','60','5','5','TRA CỨU HẠN MỨC ROOM','Y',1,'1','L','PR0003','Y','S','N','R','N','N','M','000','S',-1,'TRA CỨU HẠN MỨC ROOM',null,'0','0','0','0','N','N','Y');
COMMIT;
/