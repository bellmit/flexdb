﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'OD9995';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('OD9995','HOST','OD','12','5','5','60','5','5','PHÂN BỔ LỆNH THỎA THUẬN BÁN TỔNG THÀNH CÁC LỆNH CON (GD 8877)','Y',1,'1','P','OD9995','Y','A','N','V','N','N','M','000','S',-1,'OD9995',null,'0','0','0','0','N','N','Y');
COMMIT;
/
