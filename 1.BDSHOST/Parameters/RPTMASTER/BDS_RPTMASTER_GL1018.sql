﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'GL1018';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('GL1018','HOST','GL','12','5','5','60','5','5','BÁO CÁO CHI TIẾT GIAO DỊCH','Y',1,'1','L','GL1018','N','S','N','R','N','N','M','000','S',-1,'Báo cáo chi tiết giao dịch ',null,'0','0','0','0','N','N','Y');
COMMIT;
/
