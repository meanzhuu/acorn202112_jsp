-- table for user(member) data storage
create table users(
	id varchar2(100) primary key,
	pw varachar2(100) not null, 
	email varchar2(100),
	profile varchar2(100),
	regdate date
);