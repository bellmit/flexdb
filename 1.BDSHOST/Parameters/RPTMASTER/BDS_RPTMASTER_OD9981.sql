﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'OD9981';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('OD9981','HOST','OD','12','5','5','60','5','5','DANH SÁCH LỆNH KHỚP SAI SO VỚI SÀN','Y',1,'1','P','OD9981','Y','B','N','V','N','N','M','000','S',-1,'Exchange order/trade book exception',null,'0','0','0','0','N','N','Y');
COMMIT;
/
