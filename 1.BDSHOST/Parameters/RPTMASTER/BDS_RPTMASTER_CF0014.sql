﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'CF0014';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('CF0014','HOST','CF','12','5','5','60','5','5','BÁO CÁO DANH SÁCH ỦY QUYỀN_1','Y',1,'1','P','CF0014','N','S','N','R','N','N','M','000','S',-1,'Báo cáo danh sách ủy quyền_1',null,'0','0','0','0','N','N','Y');
COMMIT;
/