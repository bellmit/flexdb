﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'CA1011';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('CA1011','HOST','CA','12','5','5','60','5','5','ĐỐI CHIẾU CỔ PHIẾU NHẬN VỀ HOẶC TIỀN VỀ DO CHUYỂN ĐỔI TP - NHẬN CP, HOẶC TIỀN','Y',1,'1','P','CA1011','Y','B','N','V','N','N','M','000','S',-1,'Đối chiếu cổ phiếu nhận về hoặc tiền về do chuyển đổi TP - Nhận CP, hoặc tiền',null,'0','0','0','0','N','N','Y');
COMMIT;
/
