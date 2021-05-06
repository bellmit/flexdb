CREATE OR REPLACE FORCE VIEW VW_CUSTODYCD_CIMAST AS
SELECT CF.CUSTODYCD FILTERCD, CI.ACCTNO VALUE, CI.ACCTNO VALUECD, CI.ACCTNO || ': ' || AFT.TYPENAME DISPLAY,
CI.ACCTNO || ': ' || AFT.TYPENAME EN_DISPLAY, CF.FULLNAME DESCRIPTION
FROM CFMAST CF, CIMAST CI, AFMAST AF, AFTYPE AFT
WHERE CF.CUSTID=AF.CUSTID AND CI.AFACCTNO = AF.ACCTNO AND AF.ACTYPE=AFT.ACTYPE;
