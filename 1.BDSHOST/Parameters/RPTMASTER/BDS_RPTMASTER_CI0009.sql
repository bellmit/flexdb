﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'CI0009';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('CI0009','HOST','CI','12','5','5','60','5','5','BÁO CÁO CHUYỂN KHOẢN NỘI BỘ','Y',1,'1','P','CI0009','Y','S','N','R','N','Y','M','000','S',-1,'Báo cáo chuyển khoản nội bộ',null,'0','0','0','0','N','N','Y');
COMMIT;
/