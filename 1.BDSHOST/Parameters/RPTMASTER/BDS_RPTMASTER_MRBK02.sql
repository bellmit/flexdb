﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'MRBK02';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('MRBK02','HOST','MR','12','5','5','60','5','5','TẠO BẢNG KÊ TẤT TOÁN MR','Y',1,'1','P','MRBK02','Y','B','N','V','N','N','M','000','S',-1,'Create list of deposit certificate to send to depository center',null,'0','0','0','0','N','N','Y');
COMMIT;
/