﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'SE2293';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('SE2293','HOST','SE','12','5','5','60','5','5','HỦY ĐĂNG KÝ RÚT CHỨNG KHOÁN (GIAO DỊCH 2293)','Y',1,'1','P','SE2206','Y','B','N','V','N','N','M','000','S',-1,'Cancel withdraw securities (wait for 2293)',null,'0','0','0','0','N','N','Y');
COMMIT;
/