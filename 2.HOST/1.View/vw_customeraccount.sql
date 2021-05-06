CREATE OR REPLACE FORCE VIEW VW_CUSTOMERACCOUNT AS
SELECT 'CL' MODCODE, MST.ACCTNO, MST.CUSTID, MST.BOOKVALUE AMT FROM CLMAST MST
UNION ALL
SELECT 'LM' MODCODE, MST.ACCTNO, MST.CUSTID, MST.OPERLIMIT AMT FROM LMMAST MST
UNION ALL
SELECT 'GR' MODCODE, MST.ACCTNO, MST.CUSTID, MST.BALANCE AMT FROM GRMAST MST
UNION ALL
SELECT 'LN' MODCODE, MST.ACCTNO, LNK.CUSTID, MST.PRINNML+MST.PRINOVD AMT FROM LNMAST MST, LNAPPL LNK WHERE MST.APPLID=LNK.APPLID;
