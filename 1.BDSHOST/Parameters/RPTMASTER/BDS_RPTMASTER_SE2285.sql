﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'SE2285';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('SE2285','HOST','SE','12','5','5','60','5','5','DANH SÁCH CH?NG KHOÁN C?A FLEX (GIAO D?CH 2285)','Y',1,'1','P',' ','Y','A','N','V','N','N','M','000','S',-1,'List Securities (wait for 2285)',null,'0','0','0','0','N','N','Y');
COMMIT;
/
