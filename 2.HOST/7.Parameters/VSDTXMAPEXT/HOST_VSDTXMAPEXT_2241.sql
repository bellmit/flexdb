﻿--
--
/
DELETE VSDTXMAPEXT WHERE OBJNAME = '2241';
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/1','TXDATE','D','$07',null,'Ngày tạo yêu cầu',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/1','TITLE','C','$88','SELECT AL.cdcontent FROM CFMAST CF, ALLCODE AL WHERE CF.CUSTODYCD=''<$FILTERID>''AND CF.SEX=AL.CDVAL AND AL.CDNAME=''VSDTITLE''','Giới tính',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/1','SYMBOL','C','$01','SELECT SYMBOL FROM SBSECURITIES WHERE CODEID=''<$FILTERID>''','Mã chứng khoán',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/1','SHAREHOLDERCODE','C','$88',null,'Tài khoản nhà đầu tư',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/1','REFERENCEID','C','$77',null,'Mã đợt phát hành',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/1','QTTY','C','$06',null,'Khối lượng',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/1','NATIONAL','C','$88','SELECT AL.cdcontent FROM CFMAST CF, ALLCODE AL WHERE CF.CUSTODYCD=''<$FILTERID>''AND CF.COUNTRY=AL.CDVAL AND AL.CDNAME=''NATIONAL''','Mã quốc gia',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/1','IDTYPE','C','$88','SELECT AL.cdcontent FROM CFMAST CF, ALLCODE AL WHERE CF.CUSTODYCD=''<$FILTERID>''AND CF.IDTYPE=AL.CDVAL AND AL.CDNAME=''VSDIDTYPE''','Loại giấy tờ',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/1','IDPLACE','C','$88','SELECT IDPLACE FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Nơi cấp CMT/hộ chiếu/giấy phép',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/1','IDDATE','D','$88','SELECT IDDATE FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Ngày cấp CMT/hộ chiếu/giấy phép',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/1','IDCODE','C','$88','SELECT IDCODE FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Giấy đăng ký sở hữu',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/1','FULLNAME','D','$88','SELECT FULLNAME FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Tên đầy đủ nhà đầu tư',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/1','DESC','C','$30',null,'Diễn giải',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/1','DATEOFBIRTH','D','$88','SELECT DATEOFBIRTH FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Ngày sinh',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/1','CUSTODYCD','C','$88',null,'Tài khoản nhà đầu tư',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/1','ALTERNATEID','C','$88','select nvl(a.cdcontent,''VISD/OTHR'') ALTE from (
select case when custtype = ''B'' or nvl(a.cdcontent, ''ZZ'') = ''ZZ'' then ''XXX'' else IDTYPE end || ''/'' ||
case when nvl(a.cdcontent, ''ZZ'') = ''ZZ'' then ''X'' else CUSTTYPE end  || ''/'' ||
  case when nvl(a.cdcontent, ''ZZ'') <> ''VN'' then ''XX'' else nvl(a.cdcontent, ''ZZ'')  end  as ALTE
from cfmast cf left join ALLCODE A on CF.country=A.CDVAL aND A.Cdname=''NATIONAL''
WHERE CUSTODYCD = ''<$FILTERID>'') mst left join allcode a on mst.alte = a.cdval and a.cdname = ''VSDALTE'' and a.cdtype = ''CF''','Thông tin đăng ký sở hữu, loại hình cổ đông',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/1','ADDRESS','D','$88','SELECT ADDRESS FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Địa chỉ thường trú',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/2','TXDATE','D','$07',null,'Ngày tạo yêu cầu',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/2','TITLE','C','$88','SELECT AL.cdcontent FROM CFMAST CF, ALLCODE AL WHERE CF.CUSTODYCD=''<$FILTERID>''AND CF.SEX=AL.CDVAL AND AL.CDNAME=''VSDTITLE''','Giới tính',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/2','SYMBOL','C','$01','SELECT SYMBOL FROM SBSECURITIES WHERE CODEID=''<$FILTERID>''','Mã chứng khoán',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/2','SHAREHOLDERCODE','C','$88',null,'Tài khoản nhà đầu tư',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/2','REFERENCEID','C','$77',null,'Mã đợt phát hành',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/2','QTTY','C','$04',null,'Khối lượng',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/2','NATIONAL','C','$88','SELECT AL.cdcontent FROM CFMAST CF, ALLCODE AL WHERE CF.CUSTODYCD=''<$FILTERID>''AND CF.COUNTRY=AL.CDVAL AND AL.CDNAME=''NATIONAL''','Mã quốc gia',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/2','IDTYPE','C','$88','SELECT AL.cdcontent FROM CFMAST CF, ALLCODE AL WHERE CF.CUSTODYCD=''<$FILTERID>''AND CF.IDTYPE=AL.CDVAL AND AL.CDNAME=''VSDIDTYPE''','Loại giấy tờ',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/2','IDPLACE','C','$88','SELECT IDPLACE FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Nơi cấp CMT/hộ chiếu/giấy phép',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/2','IDDATE','D','$88','SELECT IDDATE FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Ngày cấp CMT/hộ chiếu/giấy phép',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/2','IDCODE','C','$88','SELECT IDCODE FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Giấy đăng ký sở hữu',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/2','FULLNAME','D','$88','SELECT FULLNAME FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Tên đầy đủ nhà đầu tư',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/2','DESC','C','$30',null,'Diễn giải',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/2','DATEOFBIRTH','D','$88','SELECT DATEOFBIRTH FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Ngày sinh',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/2','CUSTODYCD','C','$88',null,'Tài khoản nhà đầu tư',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/2','ALTERNATEID','C','$88','select nvl(a.cdcontent,''VISD/OTHR'') ALTE from (
select case when custtype = ''B'' or nvl(a.cdcontent, ''ZZ'') = ''ZZ'' then ''XXX'' else IDTYPE end || ''/'' ||
case when nvl(a.cdcontent, ''ZZ'') = ''ZZ'' then ''X'' else CUSTTYPE end  || ''/'' ||
  case when nvl(a.cdcontent, ''ZZ'') <> ''VN'' then ''XX'' else nvl(a.cdcontent, ''ZZ'')  end  as ALTE
from cfmast cf left join ALLCODE A on CF.country=A.CDVAL aND A.Cdname=''NATIONAL''
WHERE CUSTODYCD = ''<$FILTERID>'') mst left join allcode a on mst.alte = a.cdval and a.cdname = ''VSDALTE'' and a.cdtype = ''CF''','Thông tin đăng ký sở hữu, loại hình cổ đông',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//NORM/2','ADDRESS','D','$88','SELECT ADDRESS FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Địa chỉ thường trú',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/1','TXDATE','D','$07',null,'Ngày tạo yêu cầu',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/1','TITLE','C','$88','SELECT AL.cdcontent FROM CFMAST CF, ALLCODE AL WHERE CF.CUSTODYCD=''<$FILTERID>''AND CF.SEX=AL.CDVAL AND AL.CDNAME=''VSDTITLE''','Giới tính',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/1','SYMBOL','C','$01','SELECT SYMBOL FROM SBSECURITIES WHERE CODEID=''<$FILTERID>''','Mã chứng khoán',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/1','SHAREHOLDERCODE','C','$88',null,'Tài khoản nhà đầu tư',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/1','REFERENCEID','C','$77',null,'Mã đợt phát hành',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/1','QTTY','C','$06',null,'Khối lượng',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/1','NATIONAL','C','$88','SELECT AL.cdcontent FROM CFMAST CF, ALLCODE AL WHERE CF.CUSTODYCD=''<$FILTERID>''AND CF.COUNTRY=AL.CDVAL AND AL.CDNAME=''NATIONAL''','Mã quốc gia',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/1','IDTYPE','C','$88','SELECT AL.cdcontent FROM CFMAST CF, ALLCODE AL WHERE CF.CUSTODYCD=''<$FILTERID>''AND CF.IDTYPE=AL.CDVAL AND AL.CDNAME=''VSDIDTYPE''','Loại giấy tờ',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/1','IDPLACE','C','$88','SELECT IDPLACE FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Nơi cấp CMT/hộ chiếu/giấy phép',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/1','IDDATE','D','$88','SELECT IDDATE FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Ngày cấp CMT/hộ chiếu/giấy phép',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/1','IDCODE','C','$88','SELECT IDCODE FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Giấy đăng ký sở hữu',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/1','FULLNAME','D','$88','SELECT FULLNAME FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Tên đầy đủ nhà đầu tư',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/1','DESC','C','$30',null,'Diễn giải',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/1','DATEOFBIRTH','D','$88','SELECT DATEOFBIRTH FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Ngày sinh',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/1','CUSTODYCD','C','$88',null,'Tài khoản nhà đầu tư',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/1','ALTERNATEID','C','$88','select nvl(a.cdcontent,''VISD/OTHR'') ALTE from (
select case when custtype = ''B'' or nvl(a.cdcontent, ''ZZ'') = ''ZZ'' then ''XXX'' else IDTYPE end || ''/'' ||
case when nvl(a.cdcontent, ''ZZ'') = ''ZZ'' then ''X'' else CUSTTYPE end  || ''/'' ||
  case when nvl(a.cdcontent, ''ZZ'') <> ''VN'' then ''XX'' else nvl(a.cdcontent, ''ZZ'')  end  as ALTE
from cfmast cf left join ALLCODE A on CF.country=A.CDVAL aND A.Cdname=''NATIONAL''
WHERE CUSTODYCD = ''<$FILTERID>'') mst left join allcode a on mst.alte = a.cdval and a.cdname = ''VSDALTE'' and a.cdtype = ''CF''','Thông tin đăng ký sở hữu, loại hình cổ đông',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/1','ADDRESS','D','$88','SELECT ADDRESS FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Địa chỉ thường trú',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/2','TXDATE','D','$07',null,'Ngày tạo yêu cầu',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/2','TITLE','C','$88','SELECT AL.cdcontent FROM CFMAST CF, ALLCODE AL WHERE CF.CUSTODYCD=''<$FILTERID>''AND CF.SEX=AL.CDVAL AND AL.CDNAME=''VSDTITLE''','Giới tính',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/2','SYMBOL','C','$01','SELECT SYMBOL FROM SBSECURITIES WHERE CODEID=''<$FILTERID>''','Mã chứng khoán',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/2','SHAREHOLDERCODE','C','$88',null,'Tài khoản nhà đầu tư',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/2','REFERENCEID','C','$77',null,'Mã đợt phát hành',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/2','QTTY','C','$04',null,'Khối lượng',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/2','NATIONAL','C','$88','SELECT AL.cdcontent FROM CFMAST CF, ALLCODE AL WHERE CF.CUSTODYCD=''<$FILTERID>''AND CF.COUNTRY=AL.CDVAL AND AL.CDNAME=''NATIONAL''','Mã quốc gia',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/2','IDTYPE','C','$88','SELECT AL.cdcontent FROM CFMAST CF, ALLCODE AL WHERE CF.CUSTODYCD=''<$FILTERID>''AND CF.IDTYPE=AL.CDVAL AND AL.CDNAME=''VSDIDTYPE''','Loại giấy tờ',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/2','IDPLACE','C','$88','SELECT IDPLACE FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Nơi cấp CMT/hộ chiếu/giấy phép',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/2','IDDATE','D','$88','SELECT IDDATE FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Ngày cấp CMT/hộ chiếu/giấy phép',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/2','IDCODE','C','$88','SELECT IDCODE FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Giấy đăng ký sở hữu',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/2','FULLNAME','D','$88','SELECT FULLNAME FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Tên đầy đủ nhà đầu tư',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/2','DESC','C','$30',null,'Diễn giải',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/2','DATEOFBIRTH','D','$88','SELECT DATEOFBIRTH FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Ngày sinh',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/2','CUSTODYCD','C','$88',null,'Tài khoản nhà đầu tư',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/2','ALTERNATEID','C','$88','select nvl(a.cdcontent,''VISD/OTHR'') ALTE from (
select case when custtype = ''B'' or nvl(a.cdcontent, ''ZZ'') = ''ZZ'' then ''XXX'' else IDTYPE end || ''/'' ||
case when nvl(a.cdcontent, ''ZZ'') = ''ZZ'' then ''X'' else CUSTTYPE end  || ''/'' ||
  case when nvl(a.cdcontent, ''ZZ'') <> ''VN'' then ''XX'' else nvl(a.cdcontent, ''ZZ'')  end  as ALTE
from cfmast cf left join ALLCODE A on CF.country=A.CDVAL aND A.Cdname=''NATIONAL''
WHERE CUSTODYCD = ''<$FILTERID>'') mst left join allcode a on mst.alte = a.cdval and a.cdname = ''VSDALTE'' and a.cdtype = ''CF''','Thông tin đăng ký sở hữu, loại hình cổ đông',null);
INSERT INTO VSDTXMAPEXT (OBJTYPE,OBJNAME,TRFCODE,FLDNAME,FLDTYPE,AMTEXP,CMDSQL,CAPTION,ODRNUM)
VALUES ('T','2241','540.NEWM.CLAS//PEND/2','ADDRESS','D','$88','SELECT ADDRESS FROM CFMAST WHERE CUSTODYCD=''<$FILTERID>''','Địa chỉ thường trú',null);
COMMIT;
/
