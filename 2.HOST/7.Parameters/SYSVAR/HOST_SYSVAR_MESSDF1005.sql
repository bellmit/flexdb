﻿--
--
/
DELETE SYSVAR WHERE VARNAME = 'MESSDF1005';
INSERT INTO SYSVAR (GRNAME,VARNAME,VARVALUE,VARDESC,EN_VARDESC,EDITALLOW)
VALUES ('SYSTEM','MESSDF1005','MESSDF1005','ECC xin thÃ´ng bÃ¡o: TÃ i khoáº£n: <CUSTODYCD> cÃ³ deal vay: <ACCTNO>, Khá»‘i lÆ°á»£ng vay: <REMAINQTTY>, Chá»©ng khoÃ¡n: <SYMBOL>, Sá»‘ tiá»n vay: <AMT> quÃ¡ háº¡n tá»« ngÃ y <BUSDATE>. Vui lÃ²ng liÃªn há»‡ 08-12345678 Ä‘á»ƒ Ä‘Æ°á»£c tÆ° váº¥n.','ECC xin thÃ´ng bÃ¡o: TÃ i khoáº£n: <CUSTODYCD> cÃ³ deal vay: <ACCTNO>, Khá»‘i lÆ°á»£ng vay: <REMAINQTTY>, Chá»©ng khoÃ¡n: <SYMBOL>, Sá»‘ tiá»n vay: <AMT> quÃ¡ háº¡n tá»« ngÃ y <BUSDATE>. Vui lÃ²ng liÃªn há»‡ 08-12345678 Ä‘á»ƒ Ä‘Æ°á»£c tÆ° váº¥n.','N');
COMMIT;
/
