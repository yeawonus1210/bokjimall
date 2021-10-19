drop table BBSS;

create table BBSS (
userid varchar2(20) not null,
userpassword varchar2(20) not null,
username varchar2(30) not null,
useremail varchar2(30),
userphone varchar2(20),
useraddress varchar2(50)
);

select * from BBSS;

insert into BBSS values('123','123','이경철','dlrudcjfzx@naver.com','010-8448-5281','서울시강서구화곡동148-202호');

commit;