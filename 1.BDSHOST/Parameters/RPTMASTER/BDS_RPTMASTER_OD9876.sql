﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'OD9876';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('OD9876','HOST','OD','12','5','5','60','5','5','DANH SÁCH LỆNH THỎA THUẬN QUẢNG CÁO','Y',1,'1','P','OD9876','N','B','N','V','N','N','M','000','S',-1,'Putthourgh Advetisment list',null,'0','0','0','0','N','N','Y');
COMMIT;
/