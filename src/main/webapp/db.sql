create table users(
	id varchar2(28) primary key,
	password varchar2(8) not null,
	name varchar2(30) not null
);

create table board(
	id varchar2(8) not null,
	title varchar2(200) not null primary key,
	content varchar2(1000) not null,
	foreign key (id) references users(id)
);

insert into users values('admin', '111', '김시민');
insert into users values('lee', '111', '이순신');
insert into users values('yul', '111', '권율');

insert into board(seq, id, title, content) values(3, 'admin', 'yap', '^_^b');

drop table users;
drop table board;

select * from users;
select * from board;