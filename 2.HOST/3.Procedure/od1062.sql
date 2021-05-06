CREATE OR REPLACE PROCEDURE od1062(
   PV_REFCURSOR   IN OUT   PKG_REPORT.REF_CURSOR,
   OPT            IN       VARCHAR2,
   BRID           IN       VARCHAR2,
   F_DATE         IN       VARCHAR2,
   T_DATE         IN       VARCHAR2,
   PV_SECTYPE     IN       VARCHAR2,
   PV_TRADEPLACE  IN       VARCHAR2,
   SGD_NUM        IN       NUMBER
   )
IS
    --
    -- PURPOSE: THONG KE GIA TRI GD MUA, BAN CP TRONG NGAY
    -- MODIFICATION HISTORY
    -- PERSON       DATE        COMMENTS
    -- NAMNT        08-Nov-2012 CREATED
    -- ---------    ------      -------------------------------------------

    V_STROPTION      VARCHAR2 (5);            -- A: ALL; B: BRANCH; S: SUB-BRANCH
    V_BRID         VARCHAR2 (4);

    V_STRBRID        VARCHAR2 (40);            -- USED WHEN V_NUMOPTION > 0
    V_TRADEPLACE     VARCHAR2 (20);
    V_TRADEPLACE2     VARCHAR2 (20);
    V_SECTYPE        VARCHAR2 (20);
BEGIN
    V_STROPTION := upper(OPT);
    V_BRID := BRID;

    IF  (PV_SECTYPE <> 'ALL')
    THEN
        V_SECTYPE := PV_SECTYPE;
    ELSE
        V_SECTYPE := '%';
    END IF;

    IF V_STROPTION = 'A' THEN
        V_STRBRID := '%%';
    ELSIF V_STROPTION = 'B' AND V_BRID <> 'ALL' AND V_BRID IS NOT NULL THEN
        SELECT MAPID INTO V_STRBRID FROM BRGRP WHERE BRID = V_BRID;
    ELSIF V_STROPTION = 'S' AND V_BRID <> 'ALL' AND V_BRID IS NOT NULL THEN
        V_STRBRID := V_BRID;
    ELSE
        V_STRBRID := V_BRID;
    END IF;

    IF  PV_TRADEPLACE = 'ALL' OR PV_TRADEPLACE IS NULL THEN
        V_TRADEPLACE := '%%';
        V_TRADEPLACE2 := '%%';
    ELSIF PV_TRADEPLACE = '200' THEN
        V_TRADEPLACE := '002';
        V_TRADEPLACE2 := '005';
    ELSE
        V_TRADEPLACE := PV_TRADEPLACE;
        V_TRADEPLACE2 := PV_TRADEPLACE;
    END IF;

    OPEN PV_REFCURSOR
    FOR




        SELECT   OD.TXDATE, OD.SECTYPE,  MAX(A1.CDCONTENT) TRADEPLACE,
            SUM(CASE WHEN OD.EXECTYPE = 'B' AND OD.CUSTATCOM = 'Y' THEN OD.EXECAMT ELSE 0 END) B_AMT_CUSCOM,
            SUM(CASE WHEN OD.EXECTYPE = 'S' AND OD.CUSTATCOM = 'Y' THEN OD.EXECAMT ELSE 0 END) S_AMT_CUSCOM,
            SUM(CASE WHEN OD.EXECTYPE = 'B' AND OD.CUSTATCOM = 'N' THEN OD.EXECAMT ELSE 0 END) B_AMT_NONCOM,
            SUM(CASE WHEN OD.EXECTYPE = 'S' AND OD.CUSTATCOM = 'N' THEN OD.EXECAMT ELSE 0 END) S_AMT_NONCOM,
            --ROUND(SUM(OD.EXECAMT*OD.FEERATE/100)) FEEACR, --ROUND(SUM(OD.EXCFEEAMT)/SUM(OD.EXECAMT)*100,4) FEERATE,
            round(sum(od.FEACR_TMP)) FEEACR,
            ROUND(MAX(OD.FEERATE),4) FEERATE, SGD_NUM SGDNUM
        FROM
        (
              SELECT OD.TXDATE, OD.EXECTYPE  ,  OD.CUSTATCOM,od.tradeplace,
                OD.SECTYPE,
                SUM(OD.EXECAMT) EXECAMT,
                SUM(OD.FEEACR) FEEACR,
                SUM(NVL(OD.EXCFEEAMT,0)) EXCFEEAMT,
                TRUNC (SUM( OD.EXECAMT* OD.FEERATE) /SUM(OD.EXECAMT),6)  FEERATE,
                SUM(OD.EXECAMT* OD.FEERATE/100) FEACR_TMP
              from
                (
             SELECT OD.TXDATE, SUBSTR(OD.EXECTYPE,2,1) EXECTYPE,  CF.CUSTATCOM,od.tradeplace,
                CASE WHEN SB.SECTYPE IN ('001','011') THEN 'CP' WHEN SB.SECTYPE IN ('003','006') THEN 'TP' ELSE 'CCQ' END SECTYPE,
                (OD.EXECAMT) EXECAMT,
                (CASE WHEN OD.EXECAMT >0 AND OD.FEEACR =0 AND OD.STSSTATUS = 'N'
                THEN ROUND(OD.EXECAMT*ODT.DEFFEERATE/100) ELSE OD.FEEACR END) FEEACR,
                (NVL(OD.EXCFEEAMT,0)) EXCFEEAMT,
                (CASE WHEN SB.SECTYPE IN ('001','008','011') AND OD.TRADEPLACE IN ('001','002') THEN TO_NUMBER(SYS1.VARVALUE)
                        WHEN SB.SECTYPE IN ('001','008') AND OD.TRADEPLACE IN ('005') THEN TO_NUMBER(SYS2.VARVALUE)
                        WHEN SB.SECTYPE IN ('003','006')  AND nvl(RP.orderid,'0') = '0' AND NVL(RP2.ORDERID,'0') ='0' THEN TO_NUMBER(SYS3.VARVALUE)
                        WHEN SB.SECTYPE IN ('003','006') AND nvl(RP.orderid,'0') <> '0' THEN TO_NUMBER(SYS4.VARVALUE)
                        WHEN SB.SECTYPE IN ('003','006') AND nvl(RP2.orderid,'0') <> '0' THEN 0
                        ELSE 0 END) FEERATE,
                CASE WHEN nvl(RP.orderid,'0') <> '0' THEN '1' ELSE '0' END ISREPO
            FROM vw_odmast_tradeplace_all OD, CFMAST CF, AFMAST AF, SBSECURITIES SB, --TLPROFILES TLP,
                BRGRP BR, ODTYPE ODT, SYSVAR SYS1, SYSVAR SYS2, SYSVAR SYS3,SYSVAR SYS4,
                (select ORDERID from -- lenh repo lan 1
                (   SELECT TB.ORDERID FROM TBL_ODREPO TB, VW_ODMAST_ALL OD WHERE TB.ORDERID = OD.ORDERID AND TB.DELTD='N'
                    AND GETDUEDATE(TB.EXPTDATE,'B','002',OD.CLEARDAY) - GETDUEDATE(TB.TXDATE,'B','002',OD.CLEARDAY)  <=14
                UNION ALL  --LENH REPO LAN 1 BEN MUA (1 FIRM)
                    SELECT TB.REF_ORDERID ORDERID FROM TBL_ODREPO TB, VW_ODMAST_ALL OD  WHERE TB.REF_ORDERID = OD.ORDERID AND TB.DELTD='N'
                    AND TB.REF_ORDERID IS NOT NULL    AND GETDUEDATE(TB.EXPTDATE,'B','002',OD.CLEARDAY) - GETDUEDATE(TB.TXDATE,'B','002',OD.CLEARDAY)  <=14
                UNION ALL  --LENH CON CUA LENH REPO LAN 1( LENH TONG)
                    SELECT OD2.ORDERID ORDERID FROM TBL_ODREPO TB, VW_ODMAST_ALL OD , VW_ODMAST_ALL OD2  WHERE TB.ORDERID = OD.ORDERID
                    AND TB.DELTD='N' AND OD.GRPORDER ='Y' AND OD.ORDERID = OD2.voucher   AND OD2.voucher  IS NOT NULL
                    AND GETDUEDATE(TB.EXPTDATE,'B','002',OD.CLEARDAY)  - GETDUEDATE(TB.TXDATE,'B','002',OD.CLEARDAY)  <=14
                ) group by orderid )  RP,
              (select ORDERID from  ---DANH SACH LENH REPO LAN 2 (khong tinh phi)
                (--LENH LAN 2
                 SELECT TB.ORDERID2  ORDERID FROM TBL_ODREPO TB, VW_ODMAST_ALL OD  WHERE TB.ORDERID2 = OD.ORDERID  AND TB.DELTD='N'
                 UNION ALL  --LENH LAN 2 DOI UNG (1 FIRM)
                 SELECT TB.REF_ORDERID2 ORDERID  FROM TBL_ODREPO TB, VW_ODMAST_ALL OD WHERE TB.REF_ORDERID2 = OD.ORDERID  AND TB.DELTD='N'
                 UNION ALL  --LENH LAN 2 CUA LENH TONG
                 SELECT OD2.ORDERID ORDERID  FROM TBL_ODREPO TB, VW_ODMAST_ALL OD ,
                 VW_ODMAST_ALL OD2  WHERE TB.ORDERID2 = OD.ORDERID
                 AND TB.DELTD='N' AND OD.GRPORDER ='Y'  AND OD.ORDERID = OD2.VOUCHER
                 AND OD2.VOUCHER  IS NOT NULL
                ) group by orderid )  RP2
            WHERE OD.AFACCTNO = AF.ACCTNO AND AF.CUSTID = CF.CUSTID
                AND OD.CODEID = SB.CODEID
                --AND OD.TLID = TLP.TLID
                --AND TLP.BRID = BR.BRID
                AND SB.SECTYPE LIKE V_SECTYPE
               -- AND SB.SECTYPE IN ('001','006','008')
                AND SUBSTR(AF.ACCTNO,1,4) = BR.brid
                AND OD.actype = ODT.actype
                AND OD.EXECAMT > 0
                AND OD.orderid = RP.orderid(+)
                AND OD.orderid = RP2.orderid(+)
                AND SYS1.GRNAME = 'DEFINED' AND SYS1.VARNAME = 'FEEVSD_CP'
                AND SYS2.GRNAME = 'DEFINED' AND SYS2.VARNAME = 'FEEVSDUC_CP'
                AND SYS3.GRNAME = 'DEFINED' AND SYS3.VARNAME = 'FEEVSD_TP'
                AND SYS4.GRNAME = 'DEFINED' AND SYS4.VARNAME = 'FEEVSD_TP_RP'
                AND OD.TXDATE >= TO_DATE (F_DATE, 'DD/MM/YYYY')
                AND OD.TXDATE <= TO_DATE (T_DATE, 'DD/MM/YYYY')
                AND (OD.TRADEPLACE LIKE V_TRADEPLACE OR OD.TRADEPLACE LIKE V_TRADEPLACE2)
                AND nvl(cf.brid,V_STRBRID) LIKE V_STRBRID 
                ) OD
            GROUP BY OD.TXDATE, OD.EXECTYPE, od.CUSTATCOM,  od.SECTYPE,od.tradeplace
        ) OD, ALLCODE A1
        WHERE A1.CDTYPE = 'OD' AND A1.CDNAME = 'TRADEPLACE' AND A1.CDVAL = OD.TRADEPLACE
        GROUP BY  OD.TXDATE, OD.SECTYPE
        ORDER BY  OD.TXDATE,  OD.SECTYPE;

EXCEPTION
   WHEN OTHERS
   THEN
      RETURN;
END;
/