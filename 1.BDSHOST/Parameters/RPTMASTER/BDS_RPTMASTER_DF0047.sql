﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'DF0047';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('DF0047','HOST','DF','12','5','5','60','5','5','BÁO CÁO PHỤ LỤC DANH SÁCH CK GIẢI NGÂN THEO BẢNG KÊ','Y',1,'1','L','DF0047','Y','S','N','R','N','N','M','000','S',-1,'Báo cáo phụ lục danh sách CK giải ngân theo bảng kê',null,'0','0','0','0','N','N','Y');
COMMIT;
/
