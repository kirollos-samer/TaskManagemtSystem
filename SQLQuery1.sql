Create DataBase TasksMS
on primary (Name='TasksMs',FileName='D:\Kirollos Samer Sobhy-J0323108\Database\TasksMS.mdf')
Log on  (Name='TasksMs_Log',FileName='D:\Kirollos Samer Sobhy-J0323108\Database\TasksMS_Log.ldf')

use TasksMS

create Table Roles
(
RoleID int primary key,
RoleName Nvarchar(40)
)
insert into Roles (RoleID,RoleName)
Values
(100,'Employee'),
(200,'Manager')
Create Table Users
(
UserID int Primary key Identity(5,5),
UserName nvarchar(30),
UserPass nvarchar(30),
UserMail nvarchar(50) unique,
RoleID int,Foreign key (RoleID) references Roles(RoleID)
)
insert into Users(UserName,UserPass,UserMail,RoleID)
Values
('Kiro','12345','kiro@gmail.com',100),
('Osama','12345','Osama@gmail.com',100),
('Sara','12345','Sara@gmail.com',100),
('Omar','12345','Omar@gmail.com',200),
('Sheka','12345','Sheka@gmail.com',200),
('Jana','12345','Jana@gmail.com',200)

Create Table Tasks
(
TaskID int Primary key Identity(1,1),
TaskTitle nvarchar(50),
TaskDescription nvarchar(50),
TaskStatus Nvarchar(40), 
DueDate datetime
)



Insert into Tasks(TaskTitle,TaskDescription,TaskStatus,DueDate)
VALUES
('Capstone','Finish portfolio','Pending',10-12-2024),
('DataBase','Assesment','Pending',10-11-2024),
('Physics','Quarter','In progress',10-3-2025),
('English','Quiz','In progress',10-6-2024),
('CS','Course','In progress',10-8-2025)

Create Table CompletedTasks
(
TaskID int Primary key Identity(1,1),
TaskTitle nvarchar(50),
TaskDescription nvarchar(50),
TaskStatus Nvarchar(40), 
DueDate datetime
)

Create Table Employees
(
TaskID int primary key Identity(1,1),
Emp_Name Nvarchar(30),
TaskTitle Nvarchar(30),
TaskDescription Nvarchar(50),
TaskStatus Nvarchar(40)
)
Insert into Employees(Emp_Name,TaskTitle,TaskDescription,TaskStatus)
Values
('Kirollos','Capstone','Finish Portfolio','In progress'),
('Osama','Physics','Home work','Pending'),
('Omar','Mechanics','Quiz','Completed')
