CREATE OR REPLACE PROCEDURE GL0024(
   PV_REFCURSOR   IN OUT   PKG_REPORT.REF_CURSOR,
   OPT            IN       VARCHAR2,
   BRID           IN       VARCHAR2,
   F_DATE         IN       VARCHAR2,
   T_DATE         IN       VARCHAR2
  
)
IS
--
-- PURPOSE: BRIEFLY EXPLAIN THE FUNCTIONALITY OF THE PROCEDURE
--
-- MODIFICATION HISTORY
-- PERSON      DATE    COMMENTS
-- NAMNT  08-OCT-07  CREATED
-- ---------   ------  -------------------------------------------
   V_STROPTION        VARCHAR2 (5);       -- A: ALL; B: BRANCH; S: SUB-BRANCH
   V_STRBRID          VARCHAR2 (4);              -- USED WHEN V_NUMOPTION > 0
   V_CIACCTNO           VARCHAR2 (20);
-- DECLARE PROGRAM VARIABLES AS SHOWN ABOVE
BEGIN
-- INSERT INTO TEMP_BUG(TEXT) VALUES('CF0001');COMMIT;
   V_STROPTION := OPT;

   IF (V_STROPTION <> 'A') AND (BRID <> 'ALL')
   THEN
      V_STRBRID := BRID;
   ELSE
      V_STRBRID := '%%';
   END IF;


   -- END OF GETTING REPORT'S PARAMETERS
   -- GET REPORT'S DATA

 OPEN PV_REFCURSOR
       FOR
       
 SELECT SUBSTR(MST.ACCTNO,7,5) glbank , max(gl.GLNAME) GLNAME , SUM (MST.CRAMT)  CRAMT , SUM(MST.DRAMT) DRAMT
 FROM
( SELECT   GL.TXDATE, GL.TXNUM, GL.BKDATE BUSDATE, GL.CCYCD,  GL.ACCTNO, GL.DORC, GL.SUBTXNO,
 (CASE WHEN DORC='D' THEN GL.AMT ELSE 0 END) DRAMT,(CASE WHEN DORC='C' THEN GL.AMT ELSE 0 END) CRAMT
 FROM   GLTRANA GL
 WHERE GL.DELTD<>'Y' AND GL.BKDATE  <= TO_DATE (T_DATE , 'DD/MM/YYYY') AND GL.BKDATE  >= TO_DATE(F_DATE  , 'DD/MM/YYYY') ) MST,
 GLBANK GL,(SELECT  ACCTNO,TXDATE,TXNUM,DORC,SUBTXNO,SUM(AMT ) AMT FROM GLTRANA WHERE SUBSTR(ACCTNO,7,2)='11'  GROUP BY ACCTNO,TXDATE,TXNUM,DORC,SUBTXNO) DTL
 WHERE MST.TXDATE=DTL.TXDATE AND MST.TXNUM=DTL.TXNUM AND MST.SUBTXNO=DTL.SUBTXNO AND DTL.DORC= (CASE WHEN MST.DORC='D' THEN 'C' ELSE 'D' END)
AND GL.GLBANK =SUBSTR(MST.ACCTNO,7,5)
GROUP BY SUBSTR(MST.ACCTNO,7,5)
ORDER BY SUBSTR(MST.ACCTNO,7,5)


         ;
 EXCEPTION
   WHEN OTHERS
   THEN
    --INSERT INTO TEMP_BUG(TEXT) VALUES('CF0001');COMMIT;
      RETURN;
END;                                                              -- PROCEDURE
/
