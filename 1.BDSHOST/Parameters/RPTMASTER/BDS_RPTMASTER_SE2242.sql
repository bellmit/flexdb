﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'SE2242';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('SE2242','HOST','SE','12','5','5','60','5','5','CHUYỂN KHOẢN CHỨNG KHOÁN NỘI BỘ (GIAO DỊCH 2242)','Y',1,'1','P','SE2242','Y','B','N','V','N','N','M','000','S',-1,'View account transfer to other account(wait for 2242)',null,'0','0','0','0','N','N','Y');
COMMIT;
/