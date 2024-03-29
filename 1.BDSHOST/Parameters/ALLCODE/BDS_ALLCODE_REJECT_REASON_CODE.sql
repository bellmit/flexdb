﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'REJECT_REASON_CODE';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','99','99 Lỗi không xác định.',99,'Y','Unidentified Error');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','45','45  Sai thông tin “Filler”.',45,'Y','Wrong Filler Value');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','44','44  Sai thông tin “Customer ID”.',44,'Y','Incorrect Customer ID');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','43','43  Thông tin về Chiều dài message (Message Length) sai.',43,'Y','Illegal Message Length');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','42','42  Sai loại message (trường “message type”).',42,'Y','Illegal Message Type/Header');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','41','41   Sai thông tin “Market ID”.',41,'Y','Illegal Market ID');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','38','38  Sai thông tin “Volume” trong giao dịch thoả thuận.',38,'Y','Incorrect Volume for Put-Through deal');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','37','37 Không được phép huỷ một lệnh đã được khớp.',37,'Y','Cancel of automatch deal disallowed');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','36','36 Sai định dạng của giá trong lệnh thoả thuận.',36,'Y','Put-Through price incorrect format');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','35','35 Nhập giá nhỏ hơn giá sàn.',35,'Y','Incorrect price - below floor');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','34','34 Nhập giá lớn hơn giá trần.',34,'Y','Incorrect price - above ceiling');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','33','33 Không được phép giao dịch với Chứng khoán đã yêu cầu.',33,'Y','Trading disallowed for this stock');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','31','31 Không được phép thay đổi thông tin đối với lệnh đã khớp.',31,'Y','Changing Deal information disallowed');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','29','29 Thị trường đang tạm ngừng giao dịch.',29,'Y','Market Halted');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','27','27  Không còn room cho loại chứng khoán đó.',27,'Y','No available room for Thai Trust Fund');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','25','25 Thiếu thông tin trường “P/C”.',25,'Y','Missing P/C Flag');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','24','24 Chứng khoán đang bị treo, không được giao dịch.',24,'Y','Security suspended');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','20','20  Sai thông tin “Date”.',20,'Y','20  Incorrect Date');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','19','19  Sai thông tin “Time”.',19,'Y','Incorrect Time');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','18','18  Sai thông tin “Order Number”.',18,'Y','Incorrect Order Number');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','17','17 Sai trường “Side”: chỉ được là mua (B), hoặc bán (S).',17,'Y','Incorrect Side: must be Buy or Sell');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','16','16  “Reply Code ” hoặc “Request Code” bị sai.',16,'Y','Incorrect Request Code or Reply Code');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','15','15 Cờ “P/C” nhập sai.',15,'Y','Incorrect Port / Client flag');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','14','14 Loại lệnh  nhập sai.',14,'Y','Incorrect Order Type');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','13','13 Thiếu thông tin mã khách hàng.',13,'Y','Missing Client ID');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','12','12 Sai board.',12,'Y','Incorrect Board');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','11','11 Chứng khoán bị tạm dừng giao dịch.',11,'Y','Trading halted in Stock');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','10','10  Điều kiện sai.',10,'Y','Incorrect Conditions');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','09','09 Sai số “Reference number”.',9,'Y','Incorrect Reference Number');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','08','08  Đã trễ để thực hiện yêu cầu trên.',8,'Y','Too late to perform requested action');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','07','07  Sai giá trị “confirm number”.',7,'Y','Incorrect confirm number');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','06','06  Sai mã trader.',6,'Y','Incorrect Trader ID');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','05','05  Sai mã thành viên.',5,'Y','Incorrect Firm');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','04','04  Sai mã chứng khoán.',4,'Y','Incorrect Stock Symbol');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','03','03 Yêu cầu không hợp lệ.Thị trường đã đóng cửa.',3,'Y','Illegal request - Market Closed');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','02','02 Khối lượng đặt sai.',2,'Y','Incorrect volume for specified board');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','01','01 Sai bước giá.',1,'Y','Illegal price spread');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('OD','REJECT_REASON_CODE','00','00 Lệnh MP nhưng không có lệnh đối ứng.',0,'Y','MP order without contra-side');
COMMIT;
/
