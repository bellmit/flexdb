﻿--
--
/
DELETE APPMODULES WHERE MODCODE = 'AD';
INSERT INTO APPMODULES (TXCODE,MODCODE,MODNAME,CLASSNAME)
VALUES (null,'AD','Ứng trước tiền bán','AD');
COMMIT;
/
