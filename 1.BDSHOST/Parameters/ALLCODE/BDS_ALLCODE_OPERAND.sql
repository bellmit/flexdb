﻿--
--
/
DELETE ALLCODE WHERE CDNAME = 'OPERAND';
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SY','OPERAND','=','Equal',2,'Y','Equal');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SY','OPERAND','-','Minus',1,'Y','Minus');
INSERT INTO ALLCODE (CDTYPE,CDNAME,CDVAL,CDCONTENT,LSTODR,CDUSER,EN_CDCONTENT)
VALUES ('SY','OPERAND','+','Plus',0,'Y','Plus');
COMMIT;
/