﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'SEBK31';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('SEBK31','HOST','SE','12','5','5','60','5','5','TẠO BẢNG KÊ VSD TỪ CHỐI TÁI LƯU KÝ','Y',1,'1','P','SEBK31','Y','B','N','V','N','N','M','000','S',-1,'Reject deposit certificate request from depository center',null,'0','0','0','0','N','N','Y');
COMMIT;
/