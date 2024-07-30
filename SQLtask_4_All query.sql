create table customers(
	customer_id serial primary key,
	first_name varchar(50),
	last_name varchar (50),
	company varchar (50),
	city varchar(50),
	country varchar(50),
	age int
)
select * from customers
	
insert into customers values
	
(1,'Andrew','Goodman','Stewart-Flynn','Rowlandberg','Macao',23),
(2,'Alvin','Lane','Terry','Proctor','guinea',78),
(3,'Jenna','Harding','BaileyGroup','Moniquemouth','China',26),
(4,'Fernand','Ford','Moss-Maxwell','Leeborough','Macao',78),
(5,'Kara','Woods','Mccarthy-Kelley','Port Jacksonland','Nepal',56),
(6,'Marissa','gamble','Cherry','Webertown','Sudan',34),
(7,'Julie','Cooley','Norman','SharpSandra','Japan',33),
(8,'Lauren','Villa','Travi and Hensley','Yolanda','Fiji',78),
(9,'EmilyBryant	','Moon','Strickland and Combs','East Normanchester','Seychelles',55),
(10,'Marie	Estrada','May Inc','Welchton','UnitedArab','Emirates',34)
select * from customers

copy customers from 'D:\SQL\task4_csv(8).xlsx' delimiter ',' csv header

select * from customers

1)--DO every query we dont up untilnow in large data set

create table customers(
	customer_id serial primary key,
	first_name varchar(50),
	last_name varchar (50),
	company varchar (50),
	city varchar(50),
	country varchar(50),
	age int
)
	
select * from customers

alter table customers rename column last_name to surname

select * from customers

--Distinct
select DISTINCT country from customers
select DISTINCT country ,city from customers

--Where
select * from customers where age=22
select * from customers where city='jackbury'

--AND
select * from customers where country='Fiji' and customer_id=96

--OR
select * from customers where first_name='alvin' or country='guinea'

--NOT equal to
select * from customers where not age=20

--delete
delete from customers where age=89
delete from customers where first_name='andrew' or age=23
select * from customers

--alter 
alter table customers add emailaddress varchar

--Drop
alter table customers drop surname

--change type of column
alter table customers alter column age
type int

-- alter column constraint alter table customers aler column emailaddress set notnull

alter table customers rename column age to data
alter table customers rename column data to age

select* from customers

2)--add constraint to check a age should not be greater than 78

create table studentdata(
	name varchar(50),
	age int,
	college varchar(50),
	subject varchar(50)
)
select * from studentdata
 insert into studentdata (name,age,college,subject) values ('sakshi',23,'col1','art'),('pooja',34,'col2','science'),('sejal',79,'col3','commers'),('ketki',34,'col4','economics'),
('pranjali',67,'col5','computer'),('nikita',78,'col6','art'),('urvashi',79,'col7','science'),('jahvi',22,'col8','computer'),('naina',45,'col9','bilogy'),('tejaswini',88,'col10','chemicalscience')

update studentdata set age=78 where age >78
	
alter table studentdata add constraint age check(age<=78)

update studentdata set name = CASE
when name ='pooja' then 'a2'
when name ='urvashi' then 'b2'
when name ='jahvi' then 'c2'
when name = 'nikita' then 'b1'
when name ='pranjali' then 'c3'
ELSE NAME
END

update studentdata set name='newstudent' where name in ('a1','c2')

select * from studentdata



	
