<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Online.aspx.cs" Inherits="Online" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label> &nbsp;<asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
    &nbsp;
    Month:
    <asp:DropDownList ID="ddlMonth" runat="server">
        <asp:ListItem>January</asp:ListItem>
        <asp:ListItem>February</asp:ListItem>
        <asp:ListItem>March</asp:ListItem>
        <asp:ListItem>April</asp:ListItem>
        <asp:ListItem>May</asp:ListItem>
        <asp:ListItem>June</asp:ListItem>
        <asp:ListItem>July</asp:ListItem>
        <asp:ListItem>August</asp:ListItem>
        <asp:ListItem>September</asp:ListItem>
        <asp:ListItem>October</asp:ListItem>
        <asp:ListItem>November</asp:ListItem>
        <asp:ListItem>December</asp:ListItem>
    </asp:DropDownList>
        &nbsp;
        Type <asp:TextBox ID="txtType" runat="server"></asp:TextBox>
    <br />
    <br />
    # of Kids in Class:&nbsp;
    <asp:TextBox ID="txtNumOfKids" runat="server"></asp:TextBox>
&nbsp; # of People:
    <asp:TextBox ID="txtNumOfPeople" runat="server"></asp:TextBox>
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
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
&nbsp;
</asp:Content>

