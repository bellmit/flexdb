﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'DF0020';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('DF0020','HOST','DF','12','5','5','60','5','5','BẢNG KÊ HOÀN TRẢ NỢ CHƯA THANH LÝ DEAL','Y',1,'1','L','DF0020','N','S','N','R','N','Y','M','000','S',-1,'Bảng kê hoàn trả nợ chưa thanh lý deal',null,'0','0','0','0','N','N','Y');
COMMIT;
/