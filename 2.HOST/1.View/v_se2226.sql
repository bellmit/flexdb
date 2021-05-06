CREATE OR REPLACE FORCE VIEW V_SE2226 AS
SELECT
CA.AUTOID, CA.TRADE BALANCE,CA.RQTTY,CA.PBALANCE,CA.AFACCTNO, SUBSTR(CA.CAMASTID,1,4) ||
'.' || SUBSTR(CA.CAMASTID,5,6) || '.' ||
SUBSTR(CA.CAMASTID,11,6) CAMASTID, A0.CDCONTENT CATYPE, CA.CODEID, CA.EXCODEID,
CA.QTTY, CA.AMT, CA.AQTTY,CA.NMQTTY, (CA.qtty  - CA.NMQTTY-INQTTY) MQTTY,
(CA.qtty  - CA.NMQTTY-INQTTY) * CAMAST.EXPRICE AAMT, (CASE WHEN nvl(CAMAST.TOCODEID,'A') = 'A' THEN sym.symbol ELSE symto.symbol END ) SYMBOL,SYM.SYMBOL SYMBOLDIS, A1.CDCONTENT STATUS,
CA.AFACCTNO || (CASE WHEN CAMAST.ISWFT='Y' THEN (CASE WHEN nvl(CAMAST.TOCODEID,'A') = 'A' THEN (SELECT CODEID FROM SBSECURITIES WHERE REFCODEID =SYM.CODEID) ELSE (SELECT CODEID FROM SBSECURITIES WHERE REFCODEID =SYMTO.CODEID) END)
 ELSE (CASE WHEN nvl(CAMAST.TOCODEID,'A') = 'A' THEN CAMAST.CODEID ELSE CAMAST.TOCODEID END ) END)  SEACCTNO,CA.AFACCTNO
|| (CASE WHEN CAMAST.EXCODEID IS NULL THEN CAMAST.CODEID
ELSE CAMAST.EXCODEID END) EXSEACCTNO,
SYM.PARVALUE PARVALUE, EXSYM.PARVALUE EXPARVALUE,
CAMAST.REPORTDATE REPORTDATE, CAMAST.ACTIONDATE  ,
camast.description,cf.custodycd,cf.fullname,cf.idcode,cf.address,
decode (camast.catype, '014', 0, 1) ISRIGHTOFF,
A3.CDCONTENT AFSTATUS,A4.CDCONTENT isreceive,
(CASE WHEN camast.catype NOT IN ('014','023') THEN ca.inqtty ELSE 0 END) INQTTY,
 (CASE WHEN camast.catype  IN ('014','023') THEN ca.inqtty ELSE 0 END) inqtty2 , (CA.QTTY-CA.INQTTY) REGISQTTY, ca.pqtty,camast.catype catypeval
FROM CASCHD CA, SBSECURITIES SYM,SBSECURITIES SYMTO, SBSECURITIES EXSYM,
ALLCODE A0, ALLCODE A1, CAMAST ,AFMAST AF , CFMAST CF, ALLCODE A3,ALLCODE A4
WHERE A0.CDTYPE = 'CA' AND A0.CDNAME = 'CATYPE' AND A0.CDVAL = CAMAST.CATYPE
AND A1.CDTYPE = 'CA' AND A1.CDNAME = 'CASTATUS' AND A1.CDVAL = CA.STATUS
AND A3.CDTYPE = 'CF' AND A3.CDNAME = 'STATUS' AND A3.CDVAL = AF.STATUS
AND A4.CDTYPE = 'SY' AND A4.CDNAME = 'YESNO' AND A4.CDVAL = CA.isreceive
AND CA.AFACCTNO = AF.ACCTNO AND AF.CUSTID =CF.CUSTID
AND CA.CAMASTID = CAMAST.CAMASTID
AND camast.codeid=sym.codeid AND SYMTO.CODEID=(CASE WHEN nvl(CAMAST.TOCODEID,'A') <> 'A' THEN CAMAST.TOCODEID ELSE CAMAST.CODEID END)
AND CA.DELTD ='N'
AND EXSYM.CODEID = (CASE WHEN CAMAST.EXCODEID IS NULL THEN CAMAST.CODEID ELSE CAMAST.EXCODEID END)
AND ca.isreceive='Y'
AND ca.status NOT IN ('J','C');
