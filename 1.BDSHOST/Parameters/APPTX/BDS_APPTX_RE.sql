﻿--
--
/
DELETE APPTX WHERE APPTYPE = 'RE';
INSERT INTO APPTX (APPTYPE,TXCD,TXUPDATE,TXTYPE,FIELD,FLDTYPE,OFILE,OFILEACT,IFILE,INTF,TBLNAME,TRANF,FLDRND)
VALUES ('RE','0047','D','D','INDISPOSAL','N',null,null,null,null,'REMAST','RETRAN','0');
INSERT INTO APPTX (APPTYPE,TXCD,TXUPDATE,TXTYPE,FIELD,FLDTYPE,OFILE,OFILEACT,IFILE,INTF,TBLNAME,TRANF,FLDRND)
VALUES ('RE','0046','C','C','INDISPOSAL','N',null,null,null,null,'REMAST','RETRAN','0');
INSERT INTO APPTX (APPTYPE,TXCD,TXUPDATE,TXTYPE,FIELD,FLDTYPE,OFILE,OFILEACT,IFILE,INTF,TBLNAME,TRANF,FLDRND)
VALUES ('RE','0045','D','D','INLMN','N',null,null,null,null,'REMAST','RETRAN','0');
INSERT INTO APPTX (APPTYPE,TXCD,TXUPDATE,TXTYPE,FIELD,FLDTYPE,OFILE,OFILEACT,IFILE,INTF,TBLNAME,TRANF,FLDRND)
VALUES ('RE','0044','C','C','INLMN','N',null,null,null,null,'REMAST','RETRAN','0');
INSERT INTO APPTX (APPTYPE,TXCD,TXUPDATE,TXTYPE,FIELD,FLDTYPE,OFILE,OFILEACT,IFILE,INTF,TBLNAME,TRANF,FLDRND)
VALUES ('RE','0043','D','D','INRFFEEACR','N',null,null,null,null,'REMAST','RETRAN','0');
INSERT INTO APPTX (APPTYPE,TXCD,TXUPDATE,TXTYPE,FIELD,FLDTYPE,OFILE,OFILEACT,IFILE,INTF,TBLNAME,TRANF,FLDRND)
VALUES ('RE','0042','C','C','INRFFEEACR','N',null,null,null,null,'REMAST','RETRAN','0');
INSERT INTO APPTX (APPTYPE,TXCD,TXUPDATE,TXTYPE,FIELD,FLDTYPE,OFILE,OFILEACT,IFILE,INTF,TBLNAME,TRANF,FLDRND)
VALUES ('RE','0041','D','D','INRFMATCHAMT','N',null,null,null,null,'REMAST','RETRAN','0');
INSERT INTO APPTX (APPTYPE,TXCD,TXUPDATE,TXTYPE,FIELD,FLDTYPE,OFILE,OFILEACT,IFILE,INTF,TBLNAME,TRANF,FLDRND)
VALUES ('RE','0040','C','C','INRFMATCHAMT','N',null,null,null,null,'REMAST','RETRAN','0');
INSERT INTO APPTX (APPTYPE,TXCD,TXUPDATE,TXTYPE,FIELD,FLDTYPE,OFILE,OFILEACT,IFILE,INTF,TBLNAME,TRANF,FLDRND)
VALUES ('RE','0039','D','D','DISPOSAL','N',null,null,null,null,'REMAST','RETRAN','0');
INSERT INTO APPTX (APPTYPE,TXCD,TXUPDATE,TXTYPE,FIELD,FLDTYPE,OFILE,OFILEACT,IFILE,INTF,TBLNAME,TRANF,FLDRND)
VALUES ('RE','0038','C','C','DISPOSAL','N',null,null,null,null,'REMAST','RETRAN','0');
INSERT INTO APPTX (APPTYPE,TXCD,TXUPDATE,TXTYPE,FIELD,FLDTYPE,OFILE,OFILEACT,IFILE,INTF,TBLNAME,TRANF,FLDRND)
VALUES ('RE','0037','D','D','LMN','N',null,null,null,null,'REMAST','RETRAN','0');
INSERT INTO APPTX (APPTYPE,TXCD,TXUPDATE,TXTYPE,FIELD,FLDTYPE,OFILE,OFILEACT,IFILE,INTF,TBLNAME,TRANF,FLDRND)
VALUES ('RE','0036','C','C','LMN','N',null,null,null,null,'REMAST','RETRAN','0');
INSERT INTO APPTX (APPTYPE,TXCD,TXUPDATE,TXTYPE,FIELD,FLDTYPE,OFILE,OFILEACT,IFILE,INTF,TBLNAME,TRANF,FLDRND)
VALUES ('RE','0035','D','D','RFFEEACR','N',null,null,null,null,'REMAST','RETRAN','0');
INSERT INTO APPTX (APPTYPE,TXCD,TXUPDATE,TXTYPE,FIELD,FLDTYPE,OFILE,OFILEACT,IFILE,INTF,TBLNAME,TRANF,FLDRND)
VALUES ('RE','0034','C','C','RFFEEACR','N',null,null,null,null,'REMAST','RETRAN','0');
INSERT INTO APPTX (APPTYPE,TXCD,TXUPDATE,TXTYPE,FIELD,FLDTYPE,OFILE,OFILEACT,IFILE,INTF,TBLNAME,TRANF,FLDRND)
VALUES ('RE','0033','D','D','RFMATCHAMT','N',null,null,null,null,'REMAST','RETRAN','0');
INSERT INTO APPTX (APPTYPE,TXCD,TXUPDATE,TXTYPE,FIELD,FLDTYPE,OFILE,OFILEACT,IFILE,INTF,TBLNAME,TRANF,FLDRND)
VALUES ('RE','0032','C','C','RFMATCHAMT','N',null,null,null,null,'REMAST','RETRAN','0');
COMMIT;
/