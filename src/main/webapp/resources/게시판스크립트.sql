create table mvc_bbs(
  bNo number(3) primary key,
  bName varchar2(20),
  bSubject varchar2(80),
  bContent varchar2(300),
  bDate date default sysdate,
  bHit number(3) default 0,
  bGroup number(4),
  bStep number(4),
  bIndent number(4)
);

create sequence seq_bbs;

delete from mvc_bbs
where bhit = 0;

commit;

select * from  mvc_bbs;

select bNo, bName, bSubject, bContent, bDate, bHit, bGroup, bStep, bIndent from mvc_bbs order by bGroup desc, bStep asc;


insert into mvc_bbs (bNo, bName, bSubject, bContent, bGroup, bStep, bIndent) values(seq_bbs.nextVal,'홍길동','ㅇㅇ','ㅁㅁ',1,3,5);

