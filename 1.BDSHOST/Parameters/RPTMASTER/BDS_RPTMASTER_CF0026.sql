﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'CF0026';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('CF0026','HOST','CF','12','5','5','60','5','5','BÁO CÁO SAO KÊ PHÁT SINH VAY TÀI KHOẢN CL','Y',1,'1','P','CF0026','N','S','N','R','Y','Y','M','000','S',-1,'BÁO CÁO SAO KÊ PHÁT SINH VAY TÀI KHOẢN CL',null,'0','0','0','0','N','N','Y');
COMMIT;
/
