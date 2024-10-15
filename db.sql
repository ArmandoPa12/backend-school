create database escuela;

create table users
(
	id SERIAL primary key,
	username varchar(250) not null,
	password varchar(250) not null
);