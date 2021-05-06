CREATE OR REPLACE FUNCTION fn_gettrfee(PV_AFACCTNO IN VARCHAR2,P_FEETYPE IN VARCHAR2)
    RETURN NUMBER IS
-- PURPOSE: PHI CHUYEN KHOAN CHUNG KHOAN
-- MODIFICATION HISTORY
-- PERSON      DATE         COMMENTS
-- ---------   ------       -------------------------------------------
-- THANHNM   03/02/2012     CREATED
    V_RESULT NUMBER;
    V_FEERATE NUMBER;
    V_FEEMAX NUMBER;
    V_ACCNUM NUMBER;

BEGIN
V_FEERATE :=0;
V_FEEMAX :=0;
V_RESULT :=0;
V_ACCNUM :=0;
/*
KIEM TRA XEM CO PHAI TIEU KHOAN CUOI CUNG KHONG
DUNG: RETURN FEE
SAI: RETURN 0
*/
 SELECT COUNT(ACCTNO) INTO V_ACCNUM  FROM AFMAST WHERE
 CUSTID = (SELECT CUSTID FROM AFMAST WHERE  ACCTNO=PV_AFACCTNO )
 AND STATUS NOT IN ( 'N','C') AND ACCTNO <> PV_AFACCTNO;

 IF V_ACCNUM >0 THEN
 RETURN 0;
 END IF;

SELECT FEEAMT INTO  V_FEERATE
FROM FEEMASTER WHERE FEECD = P_FEETYPE AND STATUS ='Y';

SELECT MAXVAL INTO  V_FEEMAX
FROM FEEMASTER WHERE FEECD = P_FEETYPE AND STATUS ='Y';


SELECT nvl(SUM(CASE WHEN se.amt> V_FEEMAX THEN V_FEEMAX ELSE se.amt END),0) INTO V_RESULT
FROM
              (SELECT SUM( V_FEERATE*NVL((SE.TRADE + SE.MORTAGE + SE.BLOCKED + SE.WITHDRAW
               + SE.DEPOSIT  + SE.SENDDEPOSIT),0)) amt,custid
               FROM SEMAST SE, sbsecurities sym
               WHERE se.codeid=sym.codeid
               AND sym.sectype <> '004'
               GROUP BY se.codeid,se.custid) se
WHERE se.custid IN  (SELECT custid FROM semast WHERE afacctno=  PV_AFACCTNO);

RETURN V_RESULT;
EXCEPTION
   WHEN OTHERS THEN
    RETURN 0;
END;
/
