﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'ROUNDTYPE';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CA','ROUNDTYPE','-2','Hàng trăm',2,'Y','Hàng trăm');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CA','ROUNDTYPE','-1','Hàng chục',1,'Y','Hàng chục');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('CA','ROUNDTYPE','0','Hàng đơn vị',0,'Y','Hàng đơn vị');
COMMIT;
/