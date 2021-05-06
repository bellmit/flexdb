CREATE OR REPLACE PROCEDURE df0011 (
   PV_REFCURSOR   IN OUT   PKG_REPORT.REF_CURSOR,
   OPT            IN       VARCHAR2,
   BRID           IN       VARCHAR2,
   F_DATE         IN       VARCHAR2,
   T_DATE         IN       VARCHAR2,
   PV_TLID        IN       VARCHAR2,
   PV_ACTYPE      IN       VARCHAR2,
   I_CUSTODYCD    IN       VARCHAR2,
   PV_AFACCTNO    IN       VARCHAR2
   )
IS
--s
-- PURPOSE: BRIEFLY EXPLAIN THE FUNCTIONALITY OF THE PROCEDURE
-- BAO CAO SU DU TK VAY BAO LANH TINH THEO KHACH HANG
-- MODIFICATION HISTORY
-- PERSON      DATE    COMMENTS
-- DUNGNH   17-MAY-10  CREATED
-- ---------   ------  -------------------------------------------

   V_STROPTION    VARCHAR2 (5);            -- A: ALL; B: BRANCH; S: SUB-BRANCH
   V_STRBRID      VARCHAR2 (4);            -- USED WHEN V_NUMOPTION > 0
   V_STRCIACCTNO  VARCHAR2 (20);


   V_FROMDATE           DATE;
   V_TODATE             DATE;
   V_STRI_CUSTODYCD     VARCHAR2(20);
   V_STRI_TLID          VARCHAR2(20);
   V_STRI_ACTYPE        VARCHAR2(20);
   V_STRI_AFACCTNO      VARCHAR2(20);


BEGIN
   V_STROPTION := OPT;

   IF V_STROPTION = 'A' THEN     -- TOAN HE THONG
      V_STRBRID := '%';
   ELSIF V_STROPTION = 'B' THEN
      V_STRBRID := SUBSTR(BRID,1,2) || '__' ;
   ELSE
      V_STRBRID := BRID;
   END IF;


   V_FROMDATE   :=  to_date(F_DATE,'DD/MM/YYYY');
   V_TODATE     :=  to_date(T_DATE,'DD/MM/YYYY');


   IF(I_CUSTODYCD <> 'ALL') THEN
      V_STRI_CUSTODYCD := I_CUSTODYCD;
   ELSE
      V_STRI_CUSTODYCD := '%';
   END IF;

    IF(PV_TLID <> 'ALL') THEN
      V_STRI_TLID := PV_TLID;
   ELSE
      V_STRI_TLID := '%';
   END IF;

    IF(PV_ACTYPE <> 'ALL') THEN
      V_STRI_ACTYPE := PV_ACTYPE;
   ELSE
      V_STRI_ACTYPE := '%';
   END IF;

    IF(PV_AFACCTNO <> 'ALL') THEN
      V_STRI_AFACCTNO := PV_AFACCTNO;
   ELSE
      V_STRI_AFACCTNO := '%';
   END IF;

----GET REPORT DATA:

OPEN PV_REFCURSOR
FOR
SELECT PV_TLID P_TLID, PV_ACTYPE P_ACTYPE, I_CUSTODYCD P_CUSTODYCD, SCHD.AUTOID, PV_AFACCTNO P_ACCTNO, SCHD.ALLOCATEDDATE, CF.CUSTODYCD, SCHD.ACCTNO , CF.FULLNAME, AFT.ACTYPE, TL.TLFULLNAME, SCHD.TLID, SCHD.ALLOCATEDLIMIT, SCHD.RETRIEVEDLIMIT, (RET.TXDATE),
       (CASE WHEN RET.TXDATE = SCHD.ALLOCATEDDATE THEN RET.RETRIEVEDAMT ELSE 0 END) RETRIEVED_T0,
       (CASE WHEN RET.TXDATE  between getduedate(SCHD.ALLOCATEDDATE,'B','001',1) and getduedate(SCHD.ALLOCATEDDATE,'B','001',2) THEN RET.RETRIEVEDAMT ELSE 0 END) RETRIEVED_T0_T2,
       (CASE WHEN RET.TXDATE > getduedate(SCHD.ALLOCATEDDATE,'B','001',2) THEN RET.RETRIEVEDAMT ELSE 0 END) RETRIEVED_AFT_T2,
       (SCHD.ALLOCATEDLIMIT - SCHD.RETRIEVEDLIMIT) ALLOCATEDLIMIT_LEFT
FROM TLPROFILES TL, CFMAST CF, AFMAST AF, AFTYPE AFT, RETRIEVEDT0LOG RET,
  (
  SELECT * FROM T0LIMITSCHDHIST
  union all
  SELECT * FROM T0LIMITSCHD
  )SCHD
WHERE CF.CUSTID = AF.CUSTID
      AND   AF.ACCTNO = SCHD.ACCTNO
      AND   SCHD.TLID = TL.TLID
      AND   AF.ACTYPE = AFT.ACTYPE
      AND   SCHD.AUTOID = RET.AUTOID
      AND   SCHD.TLID LIKE V_STRI_TLID
      AND   AF.ACTYPE LIKE V_STRI_ACTYPE
      AND   CF.CUSTODYCD LIKE V_STRI_CUSTODYCD
      AND   SCHD.ACCTNO LIKE V_STRI_AFACCTNO
      AND   SCHD.ALLOCATEDDATE BETWEEN V_FROMDATE AND V_TODATE
    --  GROUP BY SCHD.AUTOID, SCHD.ALLOCATEDDATE, CF.CUSTODYCD, SCHD.ACCTNO , CF.FULLNAME, AFT.ACTYPE, TL.TLFULLNAME, SCHD.TLID, SCHD.ALLOCATEDLIMIT, SCHD.RETRIEVEDLIMIT
      ORDER BY SCHD.ALLOCATEDDATE, AF.ACCTNO
;

EXCEPTION
   WHEN OTHERS
   THEN
      RETURN;
END;                                                              -- PROCEDURE
/
