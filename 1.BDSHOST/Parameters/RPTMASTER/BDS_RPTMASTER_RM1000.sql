﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'RM1000';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('RM1000','HOST','RM','12','5','5','60','5','5','DANH SÁCH TIỂU KHOẢN CÓ SỐ DƯ GIẢI TOẢ CUỐI NGÀY (6600)','Y',1,'1','P','RM1000','Y','A','N','V','N','N','M','000','S',-1,'View account can release hold amount (6600)',null,'0','0','0','0','N','N','Y');
COMMIT;
/