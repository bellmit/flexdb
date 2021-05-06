CREATE OR REPLACE PROCEDURE gl0034 (
   PV_REFCURSOR   IN OUT   PKG_REPORT.REF_CURSOR,
   OPT            IN       VARCHAR2,
   BRID           IN       VARCHAR2,
   F_DATE         IN       VARCHAR2,
   T_DATE         IN       VARCHAR2,
   BRGID          IN       VARCHAR2  -- 1111 KHU VUC SG 0021 KHU VUC HA NOI
  )
IS

--
-- PURPOSE:
-- BAO CAO SO DU TIEN MAT
-- MODIFICATION HISTORY
-- PERSON               DATE                COMMENTS
-- ---------------     -----------         ---------------------
-- DUNGNH              06/08/2010          TAO MOI
-- ---------   ------  -------------------------------------------


   V_STROPTION        VARCHAR2 (5);       -- A: ALL; B: BRANCH; S: SUB-BRANCH
   V_STRBRID          VARCHAR2 (4);       -- USED WHEN V_NUMOPTION > 0

   V_FROM_DATE        DATE;
   V_TO_DATE          DATE;
   V_CURRDATE         DATE;
   V_STRBRGID         VARCHAR2 (10);

   V_GIATRIUNGTRUOC   NUMBER(20);
   V_PHIUNGTRUOC      NUMBER(20);
   V_HOANTRAUNGTRUOC  NUMBER(20);

   V_GIATRIGIAINGAN   NUMBER(20);
   V_GIATRITHANHLY    NUMBER(20);
   V_PHITHANHLY       NUMBER(20);

   V_LAITIENGUI       NUMBER(20);
   V_PHILENHBAN       NUMBER(20);
   V_PHILENHMUA       NUMBER(20);
   V_TRACOTUC         NUMBER(20);
   V_THUETNCN         NUMBER(20);


CURSOR A --THONG TIN CUA KHACH HANG.
    IS
--UONG TRUOC TIEN BAN VA PHI UNG TRUOC
SELECT ROUND(SUM(NAMT)) NAMT, ROUND(SUM(FEEAMT)) FEEAMT
FROM AFMAST AF, CFMAST CF,
(
    SELECT CI.ACCTNO, CI.NAMT,0 FEEAMT
    FROM VW_CITRAN_ALL CI, APPTX TX
    WHERE CI.TXCD = TX.TXCD
        AND TX.FIELD IN('AAMT')
        AND TX.TXTYPE = 'C'
        AND TX.APPTYPE = 'CI'
        AND NVL(CI.TLTXCD,'1153') = '1143'
        AND TXDATE <= V_TO_DATE
        AND TXDATE >= V_FROM_DATE
    UNION ALL
    SELECT CI.ACCTNO, 0 NAMT, CI.NAMT FEEAMT
    FROM VW_CITRAN_ALL CI, APPTX TX
    WHERE CI.TXCD = TX.TXCD
        AND TX.FIELD IN('BALANCE')
        AND TX.TXTYPE = 'D'
        AND TX.APPTYPE = 'CI'
        AND NVL(CI.TLTXCD,'1153') = '1143'
        AND TXDATE <= V_TO_DATE
        AND TXDATE >= V_FROM_DATE
    UNION ALL
    SELECT ACCTNO, AMT NAMT, FEEAMT
    FROM ADSCHD
    WHERE DELTD <> 'Y'
        AND TXDATE <= V_TO_DATE
        AND TXDATE >= V_FROM_DATE
    UNION ALL
    SELECT ACCTNO, AMT NAMT, FEEAMT
    FROM ADSCHDHIST
    WHERE DELTD <> 'Y'
        AND TXDATE <= V_TO_DATE
        AND TXDATE >= V_FROM_DATE
) TR
WHERE AF.CUSTID = CF.CUSTID
    AND AF.ACCTNO = TR.ACCTNO
    AND CF.CUSTODYCD LIKE fn_get_companycd||'%'
;

-- DECLARE PROGRAM VARIABLES AS SHOWN ABOVE
BEGIN
   V_STROPTION := OPT;

   IF V_STROPTION = 'A' THEN     -- TOAN HE THONG
      V_STRBRID := '%';
   ELSIF V_STROPTION = 'B' THEN
      V_STRBRID := SUBSTR(BRID,1,2) || '__' ;
   ELSE
      V_STRBRID := BRID;
   END IF;
--
   V_FROM_DATE := TO_DATE(F_DATE,'DD/MM/YYYY');
   V_TO_DATE   := TO_DATE(T_DATE,'DD/MM/YYYY');
   SELECT TO_DATE(VARVALUE,'DD/MM/RRRR') INTO V_CURRDATE  FROM SYSVAR WHERE VARNAME = 'CURRDATE' AND GRNAME = 'SYSTEM';
--
    IF(BRGID <> 'ALL') THEN
     V_STRBRGID := BRGID;
   ELSE
     V_STRBRGID := '%';
   END IF;

--GIA TRI HOAN TRA UNG TRUOC.
SELECT ROUND(SUM(CI.NAMT)) INTO V_HOANTRAUNGTRUOC
FROM VW_CITRAN_ALL CI, APPTX TX, AFMAST AF, CFMAST CF, VW_TLLOG_ALL TL
WHERE CI.TXCD = TX.TXCD
    AND TX.APPTYPE = 'CI'
    AND TX.FIELD = 'AAMT'
    AND TX.TXTYPE = 'D'
    AND CI.ACCTNO = AF.ACCTNO
    AND AF.CUSTID = CF.CUSTID
    AND CI.DELTD <> 'Y'
    AND CI.TXNUM = TL.TXNUM
    AND CI.TXDATE = TL.TXDATE
    AND CI.TXDATE <= V_TO_DATE
    AND CI.TXDATE >= V_FROM_DATE
    AND (CASE WHEN TL.BRID = '0021' THEN TL.BRID ELSE '1111' END) LIKE V_STRBRGID
    AND CF.CUSTODYCD LIKE fn_get_companycd||'%'
;

--GIA TRI NGAN SAN PHAM (GOC)
SELECT ROUND(SUM(LN.RLSAMT+LN.ORLSAMT)) INTO V_GIATRIGIAINGAN
FROM VW_LNMAST_ALL LN, VW_DFMAST_ALL DF
WHERE LN.ACCTNO = DF.LNACCTNO(+)
    AND NVL(DF.CIACCTNO,' ') <> '0011026699'
    AND LN.RLSDATE <= V_TO_DATE
    AND LN.RLSDATE >= V_FROM_DATE
    AND (CASE WHEN NVL(SUBSTR(DF.ACCTNO,1,4),SUBSTR(LN.ACCTNO,1,4)) = '0021'
                THEN NVL(SUBSTR(DF.ACCTNO,1,4),SUBSTR(LN.ACCTNO,1,4))
                ELSE '1111' END
            ) LIKE V_STRBRGID
;

--THANH LY SAN PHAM (GOC)
SELECT ROUND(SUM(LNTR.NAMT)) INTO V_GIATRITHANHLY
FROM VW_LNTRAN_ALL LNTR, APPTX AP, VW_DFMAST_ALL DF
WHERE LNTR.TXCD = AP.TXCD
    AND AP.APPTYPE = 'LN'
    AND LNTR.ACCTNO = DF.LNACCTNO(+)
    AND NVL(DF.CIACCTNO,' ') <> '0011026699'
    AND AP.FIELD  IN ('PRINPAID','OPRINPAID')
    AND AP.TXTYPE = 'C'
    AND LNTR.NAMT <> 0
    AND LNTR.TXDATE <= V_TO_DATE
    AND LNTR.TXDATE >= V_FROM_DATE
    AND (CASE WHEN NVL(SUBSTR(DF.ACCTNO,1,4),SUBSTR(LNTR.ACCTNO,1,4)) = '0021'
                THEN NVL(SUBSTR(DF.ACCTNO,1,4),SUBSTR(LNTR.ACCTNO,1,4))
                ELSE '1111' END
            ) LIKE V_STRBRGID
;

--THANH LY SAN PHAM (PHI).
SELECT ROUND(SUM(LNTR.NAMT)) INTO V_PHITHANHLY
FROM VW_LNTRAN_ALL LNTR, APPTX AP, VW_DFMAST_ALL DF
WHERE LNTR.TXCD = AP.TXCD
    AND AP.APPTYPE = 'LN'
    AND LNTR.ACCTNO = DF.LNACCTNO(+)
    AND NVL(DF.CIACCTNO,' ') <> '0011026699'
    AND AP.FIELD  IN ('INTPAID','OINTPAID')
    AND AP.TXTYPE = 'C'
    AND LNTR.NAMT <> 0
    AND LNTR.TXDATE <= V_TO_DATE
    AND LNTR.TXDATE >= V_FROM_DATE
    AND (CASE WHEN NVL(SUBSTR(DF.ACCTNO,1,4),SUBSTR(LNTR.ACCTNO,1,4)) = '0021'
                THEN NVL(SUBSTR(DF.ACCTNO,1,4),SUBSTR(LNTR.ACCTNO,1,4))
                ELSE '1111' END
            ) LIKE V_STRBRGID
;

--LAI TIEN TIEN GUI KHACH HANG
SELECT ROUND(SUM(CITR.NAMT)) INTO V_LAITIENGUI
FROM VW_CITRAN_ALL CITR, APPTX AP, VW_TLLOG_ALL TL
WHERE CITR.TXCD = AP.TXCD
    AND AP.FIELD = 'CRINTACR'
    AND AP.TXTYPE = 'D'
    AND AP.APPTYPE = 'CI'
    AND CITR.NAMT <> 0
    AND CITR.TXNUM = TL.TXNUM
    AND CITR.TXDATE = TL.TXDATE
    AND CITR.TXDATE <= V_TO_DATE
    AND CITR.TXDATE >= V_FROM_DATE
    AND (CASE WHEN NVL(TL.BRID,' ') = '0021' THEN TL.BRID ELSE '1111' END) LIKE V_STRBRGID
;

--TRA CO TUC NIEM YET
SELECT ROUND(SUM(TL.MSGAMT)) INTO V_TRACOTUC
FROM VW_TLLOG_ALL TL
WHERE TL.TLTXCD = '3350'
    AND TL.TXDATE <= V_TO_DATE
    AND TL.TXDATE >= V_FROM_DATE
    AND (CASE WHEN NVL(TL.BRID,' ') = '0021' THEN TL.BRID ELSE '1111' END) LIKE V_STRBRGID
;

--THUE THU NHAP CA NHAN
SELECT ROUND(SUM(TL.MSGAMT)) INTO V_THUETNCN
FROM VW_TLLOG_ALL TL
WHERE TL.TLTXCD = '0066'
    AND TL.TXDATE <= V_TO_DATE
    AND TL.TXDATE >= V_FROM_DATE
    AND (CASE WHEN NVL(TL.BRID,' ') = '0021' THEN TL.BRID ELSE '1111' END) LIKE V_STRBRGID
;

--PHI MOI GIOI CUA LENH BAN
SELECT ROUND(SUM(FEEAMT)) into V_PHILENHBAN
FROM VW_ODMAST_ALL OD, VW_TLLOG_ALL TL, vw_stschd_all st
WHERE EXECTYPE IN ('NS','SS','MS')
    AND OD.TXNUM = TL.TXNUM
    AND OD.TXDATE = TL.TXDATE
    and od.orderid = st.orgorderid
    and st.cleardate <= V_TO_DATE
    and st.cleardate >= V_FROM_DATE
    AND (CASE WHEN NVL(TL.BRID,' ') = '0021' THEN TL.BRID ELSE '1111' END) LIKE V_STRBRGID
;

--PHI MOI GIOI CUA LENH MUA
SELECT ROUND(SUM(case when od.txdate = v_CurrDate
                 then round(id.matchqtty * id.matchprice * odtype.deffeerate/100)
                 ELSE OD.FEEAMT END)) INTO V_PHILENHMUA
FROM VW_IOD_ALL ID, VW_ODMAST_ALL OD, VW_TLLOG_ALL TL, odtype
WHERE ID.ORGORDERID = OD.ORDERID
    AND OD.EXECTYPE = 'NB'
    AND OD.TXNUM = TL.TXNUM
    AND OD.TXDATE = TL.TXDATE
    AND OD.ACTYPE = ODTYPE.ACTYPE
    AND OD.TXDATE <= V_TO_DATE
    AND OD.TXDATE >= V_FROM_DATE
    AND (CASE WHEN NVL(TL.BRID,' ') = '0021' THEN TL.BRID ELSE '1111' END) LIKE V_STRBRGID
;

OPEN A;
FETCH A INTO V_GIATRIUNGTRUOC, V_PHIUNGTRUOC;
IF A%NOTFOUND THEN
     V_GIATRIUNGTRUOC := 0 ;
     V_PHIUNGTRUOC := 0 ;
END IF;


OPEN PV_REFCURSOR
FOR
select NVL(V_GIATRIUNGTRUOC,0) GIATRIUNGTRUOC, NVL(V_PHIUNGTRUOC,0) PHIUNGTRUOC,
       NVL(V_HOANTRAUNGTRUOC,0) HOANTRAUNGTRUOC, NVL(V_GIATRIGIAINGAN,0) GIATRIGIAINGAN,
       NVL(V_GIATRITHANHLY,0) GIATRITHANHLY, NVL(V_PHITHANHLY,0) PHITHANHLY,
       NVL(V_LAITIENGUI,0) LAITIENGUI, NVL(V_TRACOTUC,0) TRACOTUC,
       NVL(V_THUETNCN,0) THUETNCN, NVL(V_PHILENHBAN,0) PHILENHBAN,
       NVL(V_PHILENHMUA,0) PHILENHMUA
from DUAL
;

EXCEPTION
   WHEN OTHERS
   THEN
      RETURN;
END;
/
