﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'CA0010';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('CA0010','HOST','CA','12','5','5','60','5','5','DANH SÁCH NHÀ ĐẦU TƯ ĐĂNG KÝ MUA CHỨNG KHOÁN (21A/THQ)','Y',1,'1','L','CA0010','Y','S','N','R','N','N','M','000','S',-1,'Danh sách nhà đầu tư đăng ký mua chứng khoán (21A/THQ)',null,'0','0','0','0','N','N','Y');
COMMIT;
/
