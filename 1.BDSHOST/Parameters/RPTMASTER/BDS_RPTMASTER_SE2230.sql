﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'SE2230';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('SE2230','HOST','SE','12','5','5','60','5','5','TỪ CHỐI NHẬN HỒ SƠ LƯU KÝ CỦA KHÁCH HÀNG (GIAO DỊCH 2230)','Y',1,'1','P','SE9010','Y','B','N','V','N','N','M','000','S',-1,'View pending to revert depository(wait for 2230)',null,'0','0','0','0','N','N','Y');
COMMIT;
/
