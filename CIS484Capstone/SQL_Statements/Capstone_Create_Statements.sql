Use WildTek
Go

Create Table Statuses(
 StatusID int IDENTITY(1,1) NOT NULL,
 Status varchar(50) NOT NULL,
 LastUpdated datetime NOT NULL,
 LastUpdatedBy varchar(100) NOT NULL,
 CONSTRAINT PK_StatusID PRIMARY KEY (StatusID));

Create Table OnlineProgramType(
OnlineProgramTypeID int IDENTITY(1,1) NOT NULL,
OnlineProgramTypeName varchar(100) NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_OnlineProgramTypeID PRIMARY KEY (OnlineProgramTypeID));

Create Table Grade (
GradeID int IDENTITY(1,1) NOT NULL,
GradeLevel varchar(50) NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_GradeID PRIMARY KEY (GradeID));

Create Table Educators (
EducatorID int IDENTITY(1,1) NOT NULL,
EducatorFirstName varchar(50) NOT NULL,
EducatorLastName varchar(50) NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_EducatorID PRIMARY KEY (EducatorID));

Create Table Animal (
AnimalID int IDENTITY(1,1) NOT NULL,
AnimalType varchar(50) NOT NULL,
AnimalName varchar(50) NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_AnimalID PRIMARY KEY (AnimalID));

Create Table Organization (
OrgID int IDENTITY(1,1) NOT NULL,
OrgName varchar(50) NOT NULL,
City varchar(30) NOT NULL,
County varchar(30) NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_OrgID PRIMARY KEY (OrgID));

CREATE TABLE ProgramType(
ProgramTypeID int IDENTITY(1,1) NOT NULL,
ProgramName varchar(100) NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_ProgramType PRIMARY KEY (ProgramTypeID));

Create Table PaymentRecord(
PaymentID int IDENTITY(1,1) NOT NULL,
PaymentAmount float NOT NULL,
paymentDate DateTime NOT NULL,
CheckNumber varchar(25) NULL,
PaymentType varchar(25) NOT NULL,
Invoice varchar(50) NOT NULL,
CancelledInvoice char(1) NOT NULL,
OrgID int NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_PaymentRecord PRIMARY KEY (PaymentID),
CONSTRAINT FK_PaymentRecordOrganization FOREIGN KEY (OrgID) references Organization);

Create Table OnlineProgram(
OnlineProgramID int IDENTITY(1,1)  NOT NULL,
ProgramDate date NOT NULL,
Month varchar(25) NOT NULL,
OnlineProgramTypeID int NOT NULL,
StatusID int NOT NULL,
NumberOfKids int NULL,
NumberOfPeople int NULL,
City varchar(50) NULL,
State varchar(50) NULL,
Country varchar(100) NULL,
TeacherName varchar(100) NULL,
ContactEmail varchar(100) NULL,
ExtraComments varchar(250) NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_OnlineProgram PRIMARY KEY (OnlineProgramID),
CONSTRAINT FK_OnlineProgramOnlineProgramType FOREIGN KEY (OnlineProgramTypeID) references OnlineProgramType,
CONSTRAINT FK_OnlineProgramStatusID FOREIGN KEY (StatusID) references Statuses);

Create Table OnlineEducators(
OnlineProgramID int NOT NULL,
EducatorID int NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_OnlineEducator PRIMARY KEY (OnlineProgramID, EducatorID),
CONSTRAINT FK_OnlineEducatorOnline FOREIGN KEY (OnlineProgramID) references OnlineProgram,
CONSTRAINT FK_OnlineEducatorEducator FOREIGN KEY (EducatorID) references Educators);

Create Table OnlineAnimal(
OnlineProgramID int NOT NULL,
AnimalID int NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_OnlineAnimal PRIMARY KEY (OnlineProgramID, AnimalID),
CONSTRAINT FK_OnlineAnimalOnline FOREIGN KEY (OnlineProgramID) references OnlineProgram,
CONSTRAINT FK_OnlineAnimalAnimal FOREIGN KEY (AnimalID) references Animal);


Create table Program (
ProgramID int IDENTITY(1,1) NOT NULL,
ProgramTypeID int NOT NULL,
OrgID int NOT NULL,
StatusID int NOT NULL,
ProgramAddress varchar(50) NULL,
CityCounty varchar(50) NULL,
State varchar(50) NULL,
OnOff bit NOT NULL,
NumberOfChildren int NOT NULL,
NumberOfAdults int NOT NULL,
PaymentNeeded char(1) NULL,
ProgramDate date NOT NULL,
ProgramTime time NOT NULL,
EventMonth varchar(15) NOT NULL,
ExtraComments varchar(250) NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_ProgramID PRIMARY KEY (ProgramID),
CONSTRAINT FK_OrgID FOREIGN KEY (OrgID) references Organization,
CONSTRAINT FK_ProgramTypeID FOREIGN KEY (ProgramTypeID) references ProgramType,
CONSTRAINT FK_StatusID FOREIGN KEY (StatusID) references Statuses);


Create Table ProgramEducators(
ProgramID int NOT NULL,
EducatorID int NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_ProgramEducator PRIMARY KEY (ProgramID, EducatorID),
CONSTRAINT FK_ProgramEducatorProgram FOREIGN KEY (ProgramID) references Program,
CONSTRAINT FK_ProgramEducatorEducator FOREIGN KEY (EducatorID) references Educators);

Create Table ProgramAnimal(
ProgramID int NOT NULL,
AnimalID int NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_ProgramAnimal PRIMARY KEY (ProgramID, AnimalID),
CONSTRAINT FK_ProgramAnimalProgram FOREIGN KEY (ProgramID) references Program,
CONSTRAINT FK_ProgramAnimalAnimal FOREIGN KEY (AnimalID) references Animal);
                               
Create Table OnlineProgramGrades(
OnlineProgramID int NOT NULL,
GradeID int NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_OnlineGrade PRIMARY KEY (OnlineProgramID, GradeID),
CONSTRAINT FK_OnlineGradeOnline FOREIGN KEY (OnlineProgramID) references OnlineProgram,
CONSTRAINT FK_OnlineGradeGrade FOREIGN KEY (GradeID) references Grade);
                                       
Create Table ProgramGrades(
ProgramID int NOT NULL,
GradeID int NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_ProgramGrade PRIMARY KEY (ProgramID, GradeID),
CONSTRAINT FK_ProgramGradeProgram FOREIGN KEY (ProgramID) references Program,
CONSTRAINT FK_ProgramGradeGrade FOREIGN KEY (GradeID) references Grade);
