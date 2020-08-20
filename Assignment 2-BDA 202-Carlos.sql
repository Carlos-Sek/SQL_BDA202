create database training

CREATE TABLE Student
(
	StudentID int,
	FirstName nvarchar (50),
	LastName nvarchar (50),
	DateOfBirth datetime,
	PRIMARY KEY (StudentID)
);

CREATE TABLE Program
(
	ProgramID int,
	ProgramDescription nvarchar(100),
	PRIMARY KEY (ProgramID) 
);

CREATE TABLE Course
(
	CourseID int,
	CourseDescription nvarchar(100),
	Capacity int,
	ProgramID int,
	PRIMARY KEY (CourseID),
	FOREIGN KEY (ProgramID) REFERENCES Program(ProgramID)
);

CREATE TABLE StudentCourse
(
	StudentID int,
	CourseID int,
	DateCompleted nvarchar (50),
	Grade nvarchar (10),
	PRIMARY KEY (StudentID , CourseID),
	FOREIGN KEY (StudentID ) REFERENCES Student(StudentID),
	FOREIGN KEY (CourseID ) REFERENCES Course(CourseID),
);

CREATE TABLE Instructor
(
	InstructorID int,
	FirstName nvarchar(50),
	LastName nvarchar(50),
	EmailAddress nvarchar(50),
	Primary key (InstructorID)
);

CREATE TABLE CourseInstructor
(
	CourseID int,
	InstructorID int,
	DateStarted datetime,
	PRIMARY KEY (CourseID, InstructorID),
	FOREIGN KEY (CourseID) references Course(CourseID),
	Foreign key (InstructorID) references Instructor(InstructorID)
);



