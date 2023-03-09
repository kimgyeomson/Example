create table student(
	stdnum    varchar2(20) constraint student_num_pk primary key
,	stdname   varchar2(15) constraint student_name_nn not null
,	stdgender varchar2(15) constraint studnet_gender_nn not null
,	stdkor    varchar2(15) constraint student_kor_nn not null
,	stdeng	  varchar2(15) constraint student_eng_nn not null
,	stdmat    varchar2(15) constraint student_mat_nn not null
,	stdsci	  varchar2(15) constraint student_sci_nn not null
);

commit;