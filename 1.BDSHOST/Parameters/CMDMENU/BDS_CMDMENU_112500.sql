﻿--
--
/
DELETE CMDMENU WHERE PRID = '112500';
INSERT INTO CMDMENU (CMDID,PRID,LEV,LAST,MENUTYPE,MENUCODE,MODCODE,OBJNAME,CMDNAME,EN_CMDNAME,AUTHCODE,TLTXCD)
VALUES ('112505','112500',3,'Y','A','TD0006','TD','TDGENERALVIEW','Tra cứu tổng hợp','General view','YYYYYYYYYY',null);
INSERT INTO CMDMENU (CMDID,PRID,LEV,LAST,MENUTYPE,MENUCODE,MODCODE,OBJNAME,CMDNAME,EN_CMDNAME,AUTHCODE,TLTXCD)
VALUES ('112504','112500',3,'Y','R','TD0004  ','TD','RPTMASTER','Báo cáo','Reporting','YYYYYYYYYY',null);
INSERT INTO CMDMENU (CMDID,PRID,LEV,LAST,MENUTYPE,MENUCODE,MODCODE,OBJNAME,CMDNAME,EN_CMDNAME,AUTHCODE,TLTXCD)
VALUES ('112503','112500',3,'N','T','TD0003  ','TD',null,'Giao dịch','Transaction','YYYYYYYYYY',null);
INSERT INTO CMDMENU (CMDID,PRID,LEV,LAST,MENUTYPE,MENUCODE,MODCODE,OBJNAME,CMDNAME,EN_CMDNAME,AUTHCODE,TLTXCD)
VALUES ('112502','112500',3,'Y','O','TD0005','TD','TDMAST','Quản lý tiền gửi tiết kiệm','Term deposit account','NYNNYYYNNY',null);
COMMIT;
/
