﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'CA1007';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('CA1007','HOST','CA','12','5','5','60','5','5','DANH SÁCH ĐƯỢC PHÂN BỔ QUYỀN MUA CHỨNG KHOÁN (ĐỐI CHIẾU)','Y',1,'1','P','CA1007','Y','B','N','V','N','N','M','000','S',-1,'Danh sách được phân bổ quyền mua chứng khoán (đối chiếu)',null,'0','0','0','0','N','N','Y');
COMMIT;
/