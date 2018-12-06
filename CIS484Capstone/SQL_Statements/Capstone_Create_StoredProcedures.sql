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
INSERT INTO AllPrograms(ProgramCategory, ProgramDate, ProgramType, EventMonth, NumberOfChildren, NumberOfAdults, CityCounty, OnlineProgramCountry, State, OnlineTeacherName, OnlinePrimaryContactEmail, ExtraComments, LastUpdated, LastUpdatedBy) 
Select 'Online Program' as ProgramCategory, o.ProgramDate, OnlineProgramType.OnlineProgramTypeName, o.Month, o.NumberOfKids, o.NumberOfPeople, o.City, o.Country, o.State, o.TeacherName, o.ContactEmail, o.ExtraComments, o.LastUpdated, o.LastUpdatedBy
From OnlineProgram o inner join OnlineProgramType on o.OnlineProgramTypeID = OnlineProgramType.OnlineProgramTypeID
WHERE OnlineProgramID Between 1 and 100
Order By o.ProgramDate Desc
End                                       

                                       
Create Procedure [dbo].[spChangePassword]
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
                                       
                                       
Create Procedure [dbo].[spIsPasswordResetLinkValid] 
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
           
           
Create Procedure [dbo].[spResetPassword]
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