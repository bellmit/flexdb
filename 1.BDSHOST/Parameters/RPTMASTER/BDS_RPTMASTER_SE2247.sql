﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'SE2247';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('SE2247','HOST','SE','12','5','5','60','5','5','CHUYỂN CHỨNG KHOÁN ĐÓNG TÀI KHOẢN (GIAO DỊCH 2247)','Y',1,'1','P','SE9003','Y','B','N','V','N','N','M','000','S',-1,'View wait send deposit to close (wait for 2247)',null,'0','0','0','0','N','N','Y');
COMMIT;
/
