﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'SE0016';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('SE0016','HOST','SE','12','5','5','60','5','5','DANH SÁCH KHÁCH HÀNG GIẢI TỎA CẦM CỐ','Y',1,'1','L','SE0016','N','S','N','R','N','N','M','000','S',-1,'Danh sách khách hàng giải tỏa cầm cố',null,'0','0','0','0','N','N','Y');
COMMIT;
/
