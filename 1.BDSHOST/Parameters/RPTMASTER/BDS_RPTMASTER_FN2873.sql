﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'FN2873';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('FN2873','HOST','FN','12','5','5','60','5','5','DUYỆT/TỪ CHỐI: TÀI KHOẢN QUỸ, ỦY THÁC VỐN CỦA KHÁCH HÀNG (2873)','Y',1,'1','P','RE0320','Y','A','N','V','N','N','M','000','S',-1,'Approve/Reject: customer fund, trust unit account (2873)',null,'0','0','0','0','N','N','Y');
COMMIT;
/