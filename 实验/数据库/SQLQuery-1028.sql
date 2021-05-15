create database student
create table Student(
studentNo int ,
name varchar(3) not null,
sex char(2) check(sex='ÄÐ' or sex='Å®'),
classNo varchar(4) ,
schooldata date null,
constraint pk_stuno primary key(studentNo),
constraint fk_clano foreign key(classNo) references Class(classNo)
)
create table Course(
courseNo char(9) not null primary key,
courseName varchar(30) not null,
jiaocai char(2) null default 'ÊÇ'
)
create table Score(
studentNo int not null,
courseNo varchar(9) not null,
score decimal(5,1) ,
primary key(studentNo,courseNo)
)
create table Class(
classNo varchar(4) primary key
check(classNo like'[1][0][0-9][0-9]'),
className varchar(20) not null unique
)
alter table Course
add float char(3)
alter table student
add constraint mk_schooldata default '2018-10-28' for schooldata
