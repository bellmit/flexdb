﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'SE0076';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('SE0076','HOST','SE','12','5','5','60','5','5','TỔNG HỢP PHÍ CHUYỂN KHOẢN - CHUYỂN KHOẢN TẤT TOÁN TÀI KHOẢN','Y',1,'1','L','SE0076','Y','S','N','R','N','Y','M','000','S',-1,'TỔNG HỢP PHÍ CHUYỂN KHOẢN - CHUYỂN KHOẢN TẤT TOÁN TÀI KHOẢN',null,'0','0','0','0','N','N','Y');
COMMIT;
/