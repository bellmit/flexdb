﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'CIB051';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('CIB051','HOST','CI','12','5','5','60','5','5','TẠO BẢNG KÊ HOÀN ỨNG UTTB CỦA KHÁCH HÀNG','Y',1,'1','P','CIBK53','Y','B','N','V','N','N','M','000','S',-1,'Create collection advanced payment to pay',null,'0','0','0','0','N','N','Y');
COMMIT;
/
