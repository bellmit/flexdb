﻿
--
/
DELETE rptmaster WHERE rptid='CI1202';
INSERT INTO rptmaster (RPTID, DSN, MODCODE, FONTSIZE, RHEADER, PHEADER, RDETAIL, PFOOTER, RFOOTER, DESCRIPTION, AD_HOC, RORDER, PSIZE, ORIENTATION, STOREDNAME, VISIBLE, AREA, ISLOCAL, CMDTYPE, ISCAREBY, ISPUBLIC, ISAUTO, ORD, AORS, ROWPERPAGE, EN_DESCRIPTION, STYLECODE, TOPMARGIN, LEFTMARGIN, RIGHTMARGIN, BOTTOMMARGIN, SUBRPT, ISCMP, ISDEFAULTDB)
VALUES ('CI1202', 'HOST', 'CI', '12', '5', '5', '60', '5', '5', 'TỪ CHỐI GIAO DỊCH CHUYỂN TIỀN GIỮA 2 TÀI KHOẢN LƯU KÝ', 'Y', 1, '1', 'P', 'CI1202', 'Y', 'A', 'N', 'V', 'N', 'N', 'M', '000', 'S', -1, 'DISCLAIMER MONEY TRANSFER BETWEEN 2 CASHING ACCOUNT', null, 0, 0, 0, 0, 'N', 'N', 'Y');
COMMIT;