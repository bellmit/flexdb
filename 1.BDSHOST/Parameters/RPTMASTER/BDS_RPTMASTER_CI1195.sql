﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'CI1195';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('CI1195','HOST','CI','12','5','5','60','5','5','DANH SÁCH GIAO DỊCH ĐỒNG BỘ TỪ NGÂN HÀNG (GIAO DỊCH 1195)','Y',1,'1','P','CI1195','Y','A','N','V','N','N','M','000','S',-1,'Import cash credit',null,'0','0','0','0','N','N','Y');
COMMIT;
/