<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OnlineForm.aspx.cs" Inherits="Online" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label> :
        &nbsp;<asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    &nbsp; 
    <br />
    Type ID: <asp:TextBox ID="txtType" runat="server" Width="103px"></asp:TextBox>
    <br />
    <br />
    # of Kids in Class:&nbsp;
    <asp:TextBox ID="txtNumOfKids" runat="server"></asp:TextBox>
&nbsp; # of People:
    <asp:TextBox ID="txtNumOfPeople" runat="server"></asp:TextBox>
&nbsp; City
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
    &nbsp; State/Country:
    <asp:TextBox ID="txtStateCountry" runat="server"></asp:TextBox>
    <br />
    <br />
    Teacher:
    <asp:TextBox ID="txtTeacher" runat="server"></asp:TextBox>
&nbsp; Email:
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
&nbsp; Grade:&nbsp;
    <asp:TextBox ID="txtGrade" runat="server"></asp:TextBox>
    <br />
    <br />
    Educator:
    <asp:TextBox ID="txtEducator" runat="server"></asp:TextBox>
&nbsp;Theme:
    <asp:TextBox ID="txtTheme" runat="server"></asp:TextBox>
&nbsp; Animals Used:&nbsp;
    <asp:TextBox ID="txtAnimalsUsed" runat="server"></asp:TextBox>
    <br />
    <br />
    Comments:
    <asp:TextBox ID="txtComments" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
&nbsp;
</asp:Content>

