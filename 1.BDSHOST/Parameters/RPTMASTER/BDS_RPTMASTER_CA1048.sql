﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'CA1048';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('CA1048','HOST','CA','12','5','5','60','5','5','GIẤY ĐĂNG KÝ QUYỀN MUA','Y',1,'1','P','CA1048','N','S','N','R','N','N','M','000','S',-1,'Giấy đăng ký quyền mua',null,'0','0','0','0','N','N','Y');
COMMIT;
/