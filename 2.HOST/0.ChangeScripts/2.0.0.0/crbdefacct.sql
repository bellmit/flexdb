DELETE crbdefacct WHERE trfcode in ('FDSWITHDRAW','FDSDEPOSIT');
INSERT INTO CRBDEFACCT (AUTOID, TRFCODE, REFDORC, REFUNHOLD, REFBANK, REFACCTNO, REFACCTNAME, MSGID)
VALUES (201, 'FDSWITHDRAW', 'C', 'Y', 'BIDVHN', '12210000709095', 'Công ty Cổ phần Chứng khoán Maritime Bank', '1101');
INSERT INTO CRBDEFACCT (AUTOID, TRFCODE, REFDORC, REFUNHOLD, REFBANK, REFACCTNO, REFACCTNAME, MSGID)
VALUES (203, 'FDSDEPOSIT', 'D', 'N', 'BIDVHN', '12210000709095', 'Công ty Cổ phần Chứng khoán Maritime Bank', '1100');
COMMIT;