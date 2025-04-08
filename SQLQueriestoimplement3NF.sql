create database training;
use training;
create table Student (
StudentID int,
FirstName varchar(50),
LastName varchar(50),
EmailAddress varchar(100),
DateOfBirth datetime,
Gender varchar(10),
PhoneNumber int,
primary key (StudentID)
);
create table Course (
CourseID int,
CourseName varchar(100),
CourseDescription varchar(100),
Capacity int,
primary key (CourseID)
);
create table StudentCourse (
StudentID int,
CourseID int,
CourseCompletionDate date,
Grade float,
primary key (StudentID, CourseID),
foreign key (StudentID) references Student(StudentID),
foreign key (CourseID) references Course(CourseID)
);
create table Instructor (
InstructorID int,
FirstName varchar(50),
LastName varchar(50),
EmailAddress varchar(100),
PhoneNumber int,
primary key (InstructorID)
);
create table InstructorCourse (
CourseID int,
InstructorID int,
CourseStartDate date,
primary key (CourseID,InstructorID),
foreign key (CourseID) references Course(CourseID),
foreign key (InstructorID) references Instructor(InstructorID)
);
create table Program (
ProgramID int,
ProgramDescription varchar(100),
primary key (ProgramID)
);
alter table Course
add column ProgramID int;
alter table Course
add foreign key (ProgramID)
references Program(ProgramID);
