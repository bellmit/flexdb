﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'RE0384';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('RE0384','HOST','RE','12','5','5','60','5','5','TRA CỨU TIỂU KHOẢN KH (GIAO DỊCH 0384 ĐỂ RÚT KHỎI MÔI GIỚI)','Y',1,'1','P','RE0384','Y','A','N','V','N','N','M','000','S',-1,'View customer sub-account belong to remiser (wait for 0384 to remove from remiser)',null,'0','0','0','0','N','N','Y');
COMMIT;
/
