﻿--
--
/
DELETE CMDMENU WHERE PRID = '111800';
INSERT INTO CMDMENU (CMDID,PRID,LEV,LAST,MENUTYPE,MENUCODE,MODCODE,OBJNAME,CMDNAME,EN_CMDNAME,AUTHCODE,TLTXCD)
VALUES ('111811','111800',3,'Y','O','DF0012','SA','CRBTRFLOGDF','Quản lý bảng kê cầm cố CK','Bank voucher management','YYYYYYYYYYN',null);
INSERT INTO CMDMENU (CMDID,PRID,LEV,LAST,MENUTYPE,MENUCODE,MODCODE,OBJNAME,CMDNAME,EN_CMDNAME,AUTHCODE,TLTXCD)
VALUES ('111810','111800',3,'Y','A','DF0011','DF','EXCHANGESEGRDEAL','Hoán đổi chứng khoán trong Deal tổng','Hoán đổi chứng khoán trong Deal tổng','YYYYYYYYYYN','2688');
INSERT INTO CMDMENU (CMDID,PRID,LEV,LAST,MENUTYPE,MENUCODE,MODCODE,OBJNAME,CMDNAME,EN_CMDNAME,AUTHCODE,TLTXCD)
VALUES ('111809','111800',3,'Y','A','DF0010','DF','ADDSETOGRDEAL','Bổ sung chứng khoán vào Deal tổng','Bổ sung chứng khoán vào Deal tổng','YYYYYYYYYYN','2654');
INSERT INTO CMDMENU (CMDID,PRID,LEV,LAST,MENUTYPE,MENUCODE,MODCODE,OBJNAME,CMDNAME,EN_CMDNAME,AUTHCODE,TLTXCD)
VALUES ('111808','111800',3,'Y','A','DF0009','DF','ADDCITOGRDEAL','Nộp tiền để tất toán một phần hoặc toàn bộ','Nộp tiền để tất toán một phần hoặc toàn bộ','YYYYYYYYYYN','2646');
INSERT INTO CMDMENU (CMDID,PRID,LEV,LAST,MENUTYPE,MENUCODE,MODCODE,OBJNAME,CMDNAME,EN_CMDNAME,AUTHCODE,TLTXCD)
VALUES ('111806','111800',3,'Y','A','DF0007','DF','CREATEDFGRDEAL','Tạo hợp đồng tổng','Create total deal contract','YYYYYYYYYYN','2676');
INSERT INTO CMDMENU (CMDID,PRID,LEV,LAST,MENUTYPE,MENUCODE,MODCODE,OBJNAME,CMDNAME,EN_CMDNAME,AUTHCODE,TLTXCD)
VALUES ('111805','111800',3,'Y','A','DF0006','DF','DFGENERALVIEW','Tra cứu tổng hợp','General view','YYYYYYYYYY',null);
INSERT INTO CMDMENU (CMDID,PRID,LEV,LAST,MENUTYPE,MENUCODE,MODCODE,OBJNAME,CMDNAME,EN_CMDNAME,AUTHCODE,TLTXCD)
VALUES ('111804','111800',3,'Y','R','DF0004  ','DF','RPTMASTER','Báo cáo','Reporting','YYYYYYYYYY',null);
INSERT INTO CMDMENU (CMDID,PRID,LEV,LAST,MENUTYPE,MENUCODE,MODCODE,OBJNAME,CMDNAME,EN_CMDNAME,AUTHCODE,TLTXCD)
VALUES ('111803','111800',3,'N','T','DF0003  ','DF',null,'Giao dịch','Transaction','YYYYYYYYYY',null);
COMMIT;
/
