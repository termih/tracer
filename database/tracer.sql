

create database tracer
character set  utf8
collate utf8_hungarian_ci;

create table groups (
    id int not null primary key auto_increment,
    name varchar(20)
);

create table tasks (
    id int not null primary key auto_increment,
    desc varchar(50),
    maxscore varchar(10),
    examGroup varchar(10)
);


create table students (
    id int not null primary key auto_increment,
    name varchar(50),
    examGroup varchar(10),
    groupId int
);

create table solutions (
    id int not null primary key auto_increment,
    studentId int,
    taskId int,
    score int
);

