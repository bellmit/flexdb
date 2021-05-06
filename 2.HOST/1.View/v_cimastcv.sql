CREATE OR REPLACE FORCE VIEW V_CIMASTCV AS
SELECT CF.CUSTODYCD,    CI.BALANCE, NVL(CI.EMKAMT,0) EMKAMT,cf.brid 
FROM CIMAST CI ,CFMAST CF
WHERE CI.CUSTID = CF.CUSTID
AND (NVL(CI.BALANCE,0)<>0 OR NVL(CI.EMKAMT,0) <>0)
ORDER BY CF.CUSTODYCD;
