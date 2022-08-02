use mudasir4135
create table ulogin
(
userid varchar (50) primary key not null,
password varchar (100) not null,
role varchar (50) not null
)


insert into ulogin values ( 'Mudasir', 'Mudasir123' , 'Admin')


select * from [dbo].ulogin

create table accountant
(
userid varchar (50) primary key not null,
password varchar (100) not null,
role varchar (50) not null
)

insert into accountant values ( 'Ali', 'Ali123', 'Accountant')
select * from accountant