<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProgramForm.aspx.cs" Inherits="ProgramForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
<asp:Label ID="lblOnOff" runat="server" Text="On-Site/Off-Site"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Status:
    <asp:TextBox ID="txtStatus" runat="server" Width="152px"></asp:TextBox>
&nbsp; 
&nbsp;<asp:RadioButtonList ID="rboOnOff" runat="server">
        <asp:ListItem>On</asp:ListItem>
        <asp:ListItem>Off</asp:ListItem>
    </asp:RadioButtonList>
    
    <br />
    Organization Name: <asp:TextBox ID="TextBox1" runat="server" Width="149px" Height="22px"></asp:TextBox> &nbsp; Program:
    <asp:TextBox ID="txtProgram" runat="server" Width="140px"></asp:TextBox>
    
&nbsp; Program Address:
    <asp:TextBox ID="txtProgramAddress" runat="server" Width="295px"></asp:TextBox>
    
    <br />
    <br />
    City:
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
&nbsp; Country:
    <asp:TextBox ID="txtCountry" runat="server" Width="191px"></asp:TextBox>
    
    <br />
    <br />
    Report Month:
    <asp:DropDownList ID="ddlReportMonth" runat="server">
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
&nbsp; Date/Time:
    <asp:TextBox ID="txtDateTime" runat="server"></asp:TextBox>
    
    <br />
    <br />
    Educators:
    <asp:TextBox ID="txtEducators" runat="server" Width="162px"></asp:TextBox>
&nbsp; 
    # of Adults:
    <asp:TextBox ID="txtNumOfAdults" runat="server"></asp:TextBox>
&nbsp; # of Children:&nbsp;
    <asp:TextBox ID="txtNumOfChildren" runat="server"></asp:TextBox>
    <br />
    <br />
    Bird:&nbsp;
    <asp:TextBox ID="txtBird" runat="server" Width="176px"></asp:TextBox>
    
&nbsp; Mammal:&nbsp;
    <asp:TextBox ID="txtMammal" runat="server" Width="139px"></asp:TextBox>
    
&nbsp; Reptile:
    <asp:TextBox ID="txtReptile" runat="server" Width="163px"></asp:TextBox>
    
    <br />
    <br />
    Wait for Payment?<asp:RadioButtonList ID="rboWaitForPayment" runat="server">
        <asp:ListItem>Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
    
</asp:Content>

