﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'MR1819';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('MR1819','HOST','MR','12','5','5','60','5','5','Danh chờ từ chối phê duyệt bảo lãnh phê duyệt ','Y',0,'1','P',null,'Y','B','N','V','N','N','M','000','S',-1,'List deal need approve',null,'0','0','0','0','N','N','Y');
COMMIT;
/
