﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'RE0088_2';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('RE0088_2','HOST','RE','12','5','5','60','5','5','BÁO CÁO SỐ LIỆU GIÁ TRỊ GIAO DỊCH (HÀNG THÁNG)','Y',1,'1','L','RE0088_2','N','S','N','R','N','N','M','000','S',-1,'BÁO CÁO SỐ LIỆU GIÁ TRỊ GIAO DỊCH (HÀNG THÁNG)',null,'0','0','0','0','N','N','Y');
COMMIT;
/