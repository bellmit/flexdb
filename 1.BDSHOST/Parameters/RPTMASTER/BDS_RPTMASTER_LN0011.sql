﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'LN0011';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('LN0011','HOST','LN','12','5','5','60','5','5','BẢNG KÊ THU HỒI KHOẢN GIẢI NGÂN BẮT BUỘC','Y',1,'1','L','LN0011','N','S','N','R','N','Y','M','000','S',-1,'Bảng kê thu hồi khoản giải ngân bắt buộc',null,'0','0','0','0','N','N','Y');
COMMIT;
/
