create  database  fptaptechdb
use fptaptechdb
-- Tạo bảng Account
create table account(
      id int primary key,
      username varchar(30),
      password varchar(30)
);
insert into account values (1,'admin','admin123')
select * from account where username ='admin' and password ='admin123' 

-- Tạo bảng Students
create table students(
        id int primary key,
        name varchar(255) not null,
        address varchar(255)
);
use fptaptechdb
select * from students
-- Tạo bảng Subject
create table subjects(
      id int auto_increment primary key,
      name varchar(255) not null
);
-- Taọ bảng Marks
create table marks (
    id int auto_increment primary key,
    students_id int,
    subject_id int,
    marks float,
    foreign key(studentid) references students(id),
    foreign key(subject_id) references subject(id)
);
-- dữ liệu mẫu 
insert into students (id,name,address) values
(1,'John DOe','123 Main Street'),
(2,'Jane Smith', '456 Oak Avenue'),
(3, 'Bob Johnson', '789 Elm Lane' ),
(4, 'hung', "88 vinh phuc "),
(5, 'Charlie Wilson', '654 Birch Street');
-- Dữ liệu bảng Subject
insert into subjects (name ) values
('Mathematics'),
('Physics'),
('Chemistry'),
('Biology'),
('History');
--Tạo duữ liệu bảng Marks
insert into marks (student_id, subject_id, mark) values
(1, 1, 9.5),
(2, 2, 8.5),
(3, 1, 10),
(4, 3, 8.6),
(5, 2, 9.2),



























