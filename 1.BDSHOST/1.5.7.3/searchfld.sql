﻿DELETE searchfld WHERE searchcode = 'CF0068' AND FIELDCODE IN ('REFULLNAME','GRPNAME');
insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (12, 'REFULLNAME', 'Tên môi giới', 'C', 'CF0068', 100, null, 'LIKE,=', 'N', 'Y', 'Y', 'N', 100, null, 'Description', 'N', null, null, 'N', null, null, null, 'N');

insert into searchfld (POSITION, FIELDCODE, FIELDNAME, FIELDTYPE, SEARCHCODE, FIELDSIZE, MASK, OPERATOR, FORMAT, DISPLAY, SRCH, KEY, WIDTH, LOOKUPCMDSQL, EN_FIELDNAME, REFVALUE, FLDCD, DEFVALUE, MULTILANG, ACDTYPE, ACDNAME, FIELDCMP, FIELDCMPKEY)
values (13, 'GRPNAME', 'Careby', 'C', 'CF0068', 100, null, 'LIKE,=', 'N', 'Y', 'Y', 'N', 100, null, 'Description', 'N', null, null, 'N', null, null, null, 'N');
COMMIT;
