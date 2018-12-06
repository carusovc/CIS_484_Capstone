Use WildTek

Create Table Volunteers(
VolunteerID int IDENTITY(1,1) NOT NULL,
Username varchar (20) NOT NULL,
VolunteerFirstName varchar(100) NOT NULL,
VolunteerLastName varchar(100) Not NULL,
VolunteerPhoneNumber varchar(15) NOT NULL,
VolunteerEmail varchar(50) NOT NULL,
VolunteerStatus varchar(20) NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
VolunteerCategory varchar(20) NOT NULL,
CONSTRAINT PK_VolunteerID PRIMARY KEY (VolunteerID));


Create Table Educators (
EducatorID int IDENTITY(1,1) NOT NULL,
Username varchar (20) NOT NULL,
EducatorFirstName varchar(50) NOT NULL,
EducatorLastName varchar(50) NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
Status varchar(20) NULL,
EducatorPhoneNumber varchar(15) NOT NULL, 
EducatorEmail varchar(50) NOT NULL, 
EducatorCategory varchar(20) NULL,
CONSTRAINT PK_EducatorID PRIMARY KEY (EducatorID));

Create Table OnlineProgramType(
OnlineProgramTypeID int IDENTITY(1,1) NOT NULL,
OnlineProgramTypeName varchar(100) NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
Status varchar(20) NULL,
CONSTRAINT PK_OnlineProgramTypeID PRIMARY KEY (OnlineProgramTypeID));

Create Table Grade (
GradeID int IDENTITY(1,1) NOT NULL,
GradeLevel varchar(50) NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_GradeID PRIMARY KEY (GradeID));

Create Table Animal (
AnimalID int IDENTITY(1,1) NOT NULL,
AnimalType varchar(50) NOT NULL,
AnimalName varchar(50) NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
Status varchar(100) Not Null,
animalImage varbinary(MAX),
CONSTRAINT PK_AnimalID PRIMARY KEY (AnimalID));

Create Table Organization (
OrgID int IDENTITY(1,1) NOT NULL,
OrgName varchar(50) NOT NULL,
StreetAddress varchar(50) NOT NULL,
City varchar(30) NOT NULL,
County varchar(30) NOT NULL,
State varchar(2) NOT NULL,
PostalCode varchar(20) NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_OrgID PRIMARY KEY (OrgID));
                                 
CREATE table ContactInformation(
ContactID int IDENTITY(1,1) NOT NULL,
ContactFirstName varchar(50) NOT NULL,
ContactLastName varchar(50) NOT NULL,
ContactEmail varchar(100) NOT NULL,
PrimaryContact char(1) NOT NULL,
OrgID int NOT NULL,
LastUpdated datetime Not NULL, 
LastUpdatedBy varchar(100) Not NULL,
CONSTRAINT PK_ContactInformation PRIMARY KEY (ContactID),
CONSTRAINT FK_ContactInformationOrgID FOREIGN KEY (OrgID) references Organization);

CREATE TABLE ProgramType(
ProgramTypeID int IDENTITY(1,1) NOT NULL,
ProgramName varchar(100) NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
Status varchar(20) NULL,
CONSTRAINT PK_ProgramType PRIMARY KEY (ProgramTypeID));

Create Table PaymentRecord(
PaymentID int IDENTITY(1,1) NOT NULL,
PaymentAmount float NOT NULL,
paymentDate DateTime NOT NULL,
CheckNumber varchar(25) NULL,
PaymentType varchar(25) NOT NULL,
Invoice varchar(50) NOT NULL,
Paid char(1) Not null,
CancelledInvoices char(1) Not null,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_PaymentRecord PRIMARY KEY (PaymentID));

Create Table OnlineProgram(
OnlineProgramID int IDENTITY(1,1)  NOT NULL,
ProgramDate date NOT NULL,
Month varchar(25) NOT NULL,
OnlineProgramTypeID int NOT NULL,
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
CONSTRAINT FK_OnlineProgramOnlineProgramType FOREIGN KEY (OnlineProgramTypeID) references OnlineProgramType);

Create Table OnlineVolunteers(
OnlineProgramID int NOT NULL,
VolunteerID int NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_OnlineVolunteers PRIMARY KEY (OnlineProgramID, VolunteerID),
CONSTRAINT FK_OnlineVolunteersOnline FOREIGN KEY (OnlineProgramID) references OnlineProgram,
CONSTRAINT FK_OnlineVolunteersVolunteers FOREIGN KEY (VolunteerID) references Volunteers);


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
Status varchar(50) NOT NULL,
ProgramAddress varchar(50) NULL,
CityCounty varchar(50) NULL,
State varchar(50) NULL,
OnOff bit NOT NULL,
NumberOfChildren int NOT NULL,
NumberOfAdults int NOT NULL,
PaymentID int NULL,
Paid char(1) Not null,
ProgramDate date NOT NULL,
ProgramTime time NOT NULL,
EventMonth varchar(15) NOT NULL,
ExtraComments varchar(250) NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_ProgramID PRIMARY KEY (ProgramID),
CONSTRAINT FK_OrgID FOREIGN KEY (OrgID) references Organization,
CONSTRAINT FK_ProgramTypeID FOREIGN KEY (ProgramTypeID) references ProgramType,
CONSTRAINT FK_PaymentID FOREIGN KEY (PaymentID) references PaymentRecord);

Create Table ProgramVolunteers(
ProgramID int NOT NULL,
VolunteerID int NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_ProgramVolunteers PRIMARY KEY (ProgramID, VolunteerID),
CONSTRAINT FK_ProgramVolunteersProgram FOREIGN KEY (ProgramID) references Program,
CONSTRAINT FK_ProgramVolunteersEducator FOREIGN KEY (VolunteerID) references Volunteers);


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
                         
Create table AllPrograms (
AllProgramID int IDENTITY(0,1) NOT NULL,
ProgramCategory varchar(100) NULL,
ProgramDate date NULL,
ProgramType varchar(150) NULL,
LiveProgramTime time(7) NULL,
EventMonth varchar(50) NULL,
LiveProgramStatus varchar(50) NULL,
NumberOfChildren int NULL,
NumberOfAdults int NULL,
LiveProgramStreetAddress varchar(100) NULL,
CityCounty varchar(100) NULL,
OnlineProgramCountry varchar(150),
State varchar(100) NULL,
LiveProgramOnOff bit NULL,
LiveProgramPaid char(1),
LiveProgramPaymentID int NULL,
OnlineTeacherName varchar(150) NULL,
OnlinePrimaryContactEmail varchar(150) NULL,
OnlineSecondaryEmail varchar(150) NULL,
ExtraComments varchar(300) NULL,
LastUpdated datetime NULL,
LastUpdatedBy varchar(150) NULL
)
                                   

CREATE TABLE Person(
UserID int IDENTITY (1,1) NOT NULL,
FirstName varchar(20) NOT NULL,
LastName varchar(30) NOT NULL,
Username varchar (20) NOT NULL,
Email varchar (50) NULL,
Status varchar(20) NULL,
PersonCategory char(1) NULL
PRIMARY KEY (UserID));

CREATE TABLE Pass(
UserID int FOREIGN KEY references Person(UserID) NOT NULL,
Username varchar(30) NOT NULL,
PasswordHash varchar(256) NOT NULL,
PRIMARY KEY (UserID));


Create table tblResetPasswordRequests
(
 ID UniqueIdentifier Primary key,
 UserID int Foreign key references Person(UserID),
 ResetRequestDateTime DateTime
)
