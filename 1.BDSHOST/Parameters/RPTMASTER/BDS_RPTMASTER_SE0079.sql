﻿--
--
/
DELETE RPTMASTER WHERE RPTID = 'SE0079';
INSERT INTO RPTMASTER (RPTID,DSN,MODCODE,FONTSIZE,RHEADER,PHEADER,RDETAIL,PFOOTER,RFOOTER,DESCRIPTION,AD_HOC,RORDER,PSIZE,ORIENTATION,STOREDNAME,VISIBLE,AREA,ISLOCAL,CMDTYPE,ISCAREBY,ISPUBLIC,ISAUTO,ORD,AORS,ROWPERPAGE,EN_DESCRIPTION,STYLECODE,TOPMARGIN,LEFTMARGIN,RIGHTMARGIN,BOTTOMMARGIN,SUBRPT,ISCMP,ISDEFAULTDB)
VALUES ('SE0079','HOST','SE','12','5','5','60','5','5','BẢNG KÊ DANH SÁCH NGƯỜI SỞ HỮU ĐỀ NGHỊ HỦY RÚT LƯU KÝ CHỨNG KHOÁN','Y',1,'1','L','SE0079','Y','S','N','R','N','N','M','000','S',-1,'Bảng kê Danh sách người sở hữu đề nghị hủy rút lưu ký chứng khoán',null,'0','0','0','0','N','N','Y');
COMMIT;
/