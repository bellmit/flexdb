﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'CF0031';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('CF0031','HOST','CF','12','5','5','60','5','5','DSKH ĐÃ TẤT TOÁN TÀI KHOẢN (BC GỬI HOSE)','Y',1,'1','L','CF0031','Y','S','N','R','N','N','M','000','S',-1,'DSKH đã tất toán tài khoản (BC gửi HOSE)',null,'0','0','0','0','N','N','Y');
COMMIT;
/