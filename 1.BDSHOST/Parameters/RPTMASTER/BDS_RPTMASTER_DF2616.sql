﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'DF2616';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('DF2616','HOST','DF','12','5','5','60','5','5','XÓA GỬI XÁC NHẬN GIẢI TỎA CỦA VSD (2616)','Y',1,'1','P',null,'Y','A','N','V','N','N','M','000','S',-1,null,null,'0','0','0','0','N','N','Y');
COMMIT;
/