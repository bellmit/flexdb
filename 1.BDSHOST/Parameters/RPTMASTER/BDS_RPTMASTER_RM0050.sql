﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'RM0050';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('RM0050','HOST','RM','12','5','5','60','5','5','BẢNG KÊ GIAO DỊCH UTTB CK','Y',1,'1','L','RM0050','Y','S','N','R','N','N','M','000','S',-1,'Bảng kê giao dịch UTTB CK',null,'0','0','0','0','N','N','Y');
COMMIT;
/