﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'RM0011';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('RM0011','HOST','RM','12','5','5','60','5','5','TRẠNG THÁI CHUYỂN TIỀN TỪ NGÂN HÀNG SANG CTCK (B2C)','Y',1,'1','P','RM0011','Y','A','N','V','N','N','M','000','S',-1,'Send money to bank status (C2B)',null,'0','0','0','0','N','N','Y');
COMMIT;
/
