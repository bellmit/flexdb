﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'CA0016';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('CA0016','HOST','CA','12','5','5','60','5','5','GIẤY ĐỀ NGHỊ CHUYỂN QUYỀN DO TẤT TOÁN TÀI KHOẢN (19/THQ)','Y',1,'1','P','CA0016','Y','S','N','R','N','Y','M','000','S',-1,'GIẤY ĐỀ NGHỊ CHUYỂN QUYỀN DO TẤT TOÁN TÀI KHOẢN (19/THQ)',null,'0','0','0','0','N','N','Y');
COMMIT;
/