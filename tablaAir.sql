
--insertar elementos en la tabla employee
--agrego 1000 registros
--declare
-- salario number(9,0):=0;
--begin
 -- for i in 1..1000 loop
   -- salario:=dbms_random.value(1000000,7999999);
  --  insert into employee (eid,NAME,salary) values (i,'Emp'||to_char(i),salario);
 -- end loop;
--end;
--select * from employee;
--select * from aircraft;
--truncate table flight;
--truncate table certificate;
--truncate table employee;
--truncate table aircraft;
drop table flight cascade constraints;
drop table aircraft cascade constraints;
drop table employee cascade constraints;
drop table certificate cascade constraints;

create table flight(
	flno number(4,0) primary key,
	origin varchar2(20),
	destination varchar2(20),
	distance number(6,0),
	departure_date date,
	arrival_date date,
	price number(7,2));

create table aircraft(
	aid number(9,0) primary key,
	name varchar2(30),
	distance number(6,0));

create table employee(
	eid number(9,0) primary key,
	name varchar2(30),
	salary number(10,2));

create table certificate(
	eid number(9,0),
	aid number(9,0),
	primary key(eid,aid),
	foreign key(eid) references employee,
	foreign key(aid) references aircraft); 
