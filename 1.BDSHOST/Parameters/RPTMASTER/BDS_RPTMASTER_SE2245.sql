﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'SE2245';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('SE2245','HOST','SE','12','5','5','60','5','5','Nhận chuyển khoản chứng khoán từ VSD (Giao dịch 2245)','Y',1,'1','P','SE2245','Y','A','N','V','N','N','M','000','S',-1,null,null,'0','0','0','0','N','N','Y');
COMMIT;
/
