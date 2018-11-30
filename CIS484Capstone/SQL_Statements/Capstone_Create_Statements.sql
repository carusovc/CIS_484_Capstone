Use WildTek
Go

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

Create Table Educators (
EducatorID int IDENTITY(1,1) NOT NULL,
EducatorFirstName varchar(50) NOT NULL,
EducatorLastName varchar(50) NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
Status varchar(20) NULL,
CONSTRAINT PK_EducatorID PRIMARY KEY (EducatorID));

Create Table Animal (
AnimalID int IDENTITY(1,1) NOT NULL,
AnimalType varchar(50) NOT NULL,
AnimalName varchar(50) NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
Status varchar(100) Not Null,
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
--PaymentID int NULL,
CONSTRAINT PK_OnlineProgram PRIMARY KEY (OnlineProgramID),
CONSTRAINT FK_OnlineProgramOnlineProgramType FOREIGN KEY (OnlineProgramTypeID) references OnlineProgramType);
--CONSTRAINT FK_OnlineProgramPaymentID FOREIGN KEY (PaymentID) references PaymentRecord

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
--CONSTRAINT FK_ProgramPaymentID NULL FOREIGN KEY (PaymentID) references PaymentRecord);



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

                                       
Create Table Volunteers(
VolunteerID int IDENTITY(1,1) NOT NULL,
VolunteerFirstName varchar(100) NOT NULL,
VolunteerLastName varchar(100) Not NULL,
VolunteerPhoneNumber varchar(15) NOT NULL,
VolunteerEmail varchar(50) NOT NULL,
VolunteerStatus varchar(20) NOT NULL,
LastUpdated datetime NOT NULL,
LastUpdatedBy varchar(100) NOT NULL,
CONSTRAINT PK_VolunteerID PRIMARY KEY (VolunteerID));

                                       
Create Procedure [dbo].[InsertLivePrograms]
AS
BEGIN
INSERT INTO AllPrograms(ProgramCategory, ProgramDate, ProgramType, LiveProgramTime, EventMonth, LiveProgramStatus, NumberOfChildren, NumberOfAdults, LiveProgramStreetAddress, CityCounty, State, LiveProgramOnOff, LiveProgramPaid, ExtraComments, LastUpdated, LastUpdatedBy)
Select 'Live Program' as ProgramCategory, p.ProgramDate, ProgramType.ProgramName, p.ProgramTime, p.EventMonth, p.Status, p.NumberOfChildren, p.NumberOfAdults, p.NumberOfAdults, p.CityCounty, p.State, p.OnOff, p.Paid, p.ExtraComments, p.LastUpdated, p.LastUpdatedBy
From Program p inner join ProgramType on p.ProgramTypeID = ProgramType.ProgramTypeID
WHERE ProgramID Between 0 and 1000
Order By p.ProgramDate Desc
END
                                       
Create Procedure [dbo].[InsertOnlinePrograms]
AS
BEGIN
INSERT INTO AllPrograms(ProgramCategory, ProgramDate, ProgramType, EventMonth, NumberOfChildren, NumberOfAdults, CityCounty, OnlineProgramCountry, State, OnlineTeacherName, OnlinePrimaryContactEmail, OnlineSecondaryEmail, ExtraComments, LastUpdated, LastUpdatedBy) 
Select 'Online Program' as ProgramCategory, o.ProgramDate, OnlineProgramType.OnlineProgramTypeName, o.Month, o.NumberOfKids, o.NumberOfPeople, o.City, o.Country, o.State, o.TeacherName, o.ContactEmail, o.SecondaryEmail, o.ExtraComments, o.LastUpdated, o.LastUpdatedBy
From OnlineProgram o inner join OnlineProgramType on o.OnlineProgramTypeID = OnlineProgramType.OnlineProgramTypeID
WHERE OnlineProgramID Between 1 and 100
Order By o.ProgramDate Desc
End                                       

                                       
Create Proc [dbo].[spChangePassword]
@GUID uniqueidentifier,
@Password nvarchar(100)
as
Begin
 Declare @UserID int
 
 Select @UserID = UserID 
 from tblResetPasswordRequests
 where ID= @GUID
 
 if(@UserID is null)
 Begin
  -- If UserId does not exist
  Select 0 as IsPasswordChanged
 End
 Else
 Begin
  -- If UserId exists, Update with new password
  Update Pass set
  [PasswordHash] = @Password
  where UserID = @UserID
  
  -- Delete the password reset request row 
  Delete from tblResetPasswordRequests
  where ID = @GUID
  
  Select 1 as IsPasswordChanged
 End
End
                                       
                                       
Create Proc [dbo].[spIsPasswordResetLinkValid] 
@GUID uniqueidentifier
as
Begin
 Declare @UserID int
 
 If(Exists(Select UserID from tblResetPasswordRequests where ID = @GUID))
 Begin
  Select 1 as IsValidPasswordResetLink
 End
 Else
 Begin
  Select 0 as IsValidPasswordResetLink
 End
End
           
           
Create proc [dbo].[spResetPassword]
@Username nvarchar(100)
as
Begin
 Declare @UserID int
 Declare @Email nvarchar(100)
 
 Select @UserID = UserID, @Email = Email 
 from Person
 where Username = @Username
 
 if(@UserID IS NOT NULL)
 Begin
  --If username exists
  Declare @GUID UniqueIdentifier
  Set @GUID = NEWID()
  
  Insert into tblResetPasswordRequests
  (ID, UserID, ResetRequestDateTime)
  Values(@GUID, @UserID, GETDATE())
  
  Select 1 as ReturnCode, @GUID as UniqueID, @Email as Email
 End
 Else
 Begin
  --If username does not exist
  SELECT 0 as ReturnCode, NULL as UniqueID, NULL as Email
 End
End
