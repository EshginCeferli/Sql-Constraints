--create database Lab
--create database Course

use Course

create table Teachers(
	Id int primary key identity(1,1),
	[Name] nvarchar(50) not null,
	Surname nvarchar(50),
	Email nvarchar(50) unique,
	Age int,
	Salary decimal
	)

select * from Teachers

insert into Teachers([Name],Surname,Email,Age,Salary)
values('Esqin','Ceferli','esqin@code.az',20,3100),
('Cavid','Basirov','cavid@code.az',28,2100),
('Sadiq','Nehemtov','sadiq@code.az',22,345.5),
('Orxan','Akberov','orxan@code.az',28,870),
('Togrul','Bagirov','Togrul@code.az',23,150)

SELECT * FROM Teachers WHERE Age > (SELECT AVG(Age) FROM Teachers);

SELECT * FROM Teachers WHERE salary BETWEEN 1000 and 3000;

Select Email from Teachers where Email like '%code.az';

Select * from Teachers where [Name] like 'c%';
