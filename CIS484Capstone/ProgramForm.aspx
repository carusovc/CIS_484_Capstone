<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProgramForm.aspx.cs" Inherits="ProgramForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<br />
    <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label>
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
    Organization Name: &nbsp;<asp:DropDownList ID="ddlOrganizationName" runat="server" DataSourceID="SqlDataSource2" DataTextField="OrgName" DataValueField="OrgID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString2 %>" SelectCommand="SELECT [OrgID], [OrgName] FROM [Organization]"></asp:SqlDataSource>
&nbsp;Program:
    <asp:DropDownList ID="ddlProgramTypeID" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProgramName" DataValueField="ProgramTypeID">
</asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [ProgramTypeID], [ProgramName] FROM [ProgramType]"></asp:SqlDataSource>
&nbsp;Program:

    
&nbsp; Program Address:
    <asp:TextBox ID="txtProgramAddress" runat="server" Width="295px"></asp:TextBox>
    
    <br />
    <br />
    City/County:
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
    &nbsp; State:
    <asp:DropDownList ID="ddlState1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>State</asp:ListItem>
        <asp:ListItem Value="Non-USA Territory"></asp:ListItem>
        <asp:ListItem Value="AL"></asp:ListItem>
        <asp:ListItem Value="AK"></asp:ListItem>
        <asp:ListItem Value="AZ"></asp:ListItem>
        <asp:ListItem Value="AR"></asp:ListItem>
        <asp:ListItem Value="CA"></asp:ListItem>
        <asp:ListItem Value="CO"></asp:ListItem>
        <asp:ListItem Value="CT"></asp:ListItem>
        <asp:ListItem Value="DE"></asp:ListItem>
        <asp:ListItem Value="FL"></asp:ListItem>
        <asp:ListItem Value="GA"></asp:ListItem>
        <asp:ListItem Value="HI"></asp:ListItem>
        <asp:ListItem Value="ID"></asp:ListItem>
        <asp:ListItem Value="IL"></asp:ListItem>
        <asp:ListItem Value="IN"></asp:ListItem>
        <asp:ListItem Value="IA"></asp:ListItem>
        <asp:ListItem Value="KS"></asp:ListItem>
        <asp:ListItem Value="KY"></asp:ListItem>
        <asp:ListItem Value="LA"></asp:ListItem>
        <asp:ListItem Value="ME"></asp:ListItem>
        <asp:ListItem Value="MD"></asp:ListItem>
        <asp:ListItem Value="MA"></asp:ListItem>
        <asp:ListItem Value="MI"></asp:ListItem>
        <asp:ListItem Value="MN"></asp:ListItem>
        <asp:ListItem Value="MS"></asp:ListItem>
        <asp:ListItem Value="MO"></asp:ListItem>
        <asp:ListItem Value="MT"></asp:ListItem>
        <asp:ListItem Value="NE"></asp:ListItem>
        <asp:ListItem Value="NV"></asp:ListItem>
        <asp:ListItem Value="NH"></asp:ListItem>
        <asp:ListItem Value="NJ"></asp:ListItem>
        <asp:ListItem Value="NM"></asp:ListItem>
        <asp:ListItem Value="NY"></asp:ListItem>
        <asp:ListItem Value="NC"></asp:ListItem>
        <asp:ListItem Value="ND"></asp:ListItem>
        <asp:ListItem Value="OH"></asp:ListItem>
        <asp:ListItem Value="OK"></asp:ListItem>
        <asp:ListItem Value="OR"></asp:ListItem>
        <asp:ListItem Value="PA"></asp:ListItem>
        <asp:ListItem Value="RI"></asp:ListItem>
        <asp:ListItem Value="SC"></asp:ListItem>
        <asp:ListItem Value="SD"></asp:ListItem>
        <asp:ListItem Value="TN"></asp:ListItem>
        <asp:ListItem Value="TX"></asp:ListItem>
        <asp:ListItem Value="UT"></asp:ListItem>
        <asp:ListItem Value="VT"></asp:ListItem>
        <asp:ListItem Value="VA"></asp:ListItem>
        <asp:ListItem Value="WA"></asp:ListItem>
        <asp:ListItem Value="WV"></asp:ListItem>
        <asp:ListItem Value="WI"></asp:ListItem>
        <asp:ListItem Value="WY"></asp:ListItem>
    </asp:DropDownList>
    
    <br />
    <br />
    Month:
    <asp:DropDownList ID="ddlReportMonth" runat="server" AutoPostBack="True">
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
    &nbsp; Date:&nbsp;
    <asp:DropDownList ID="ddlDate" runat="server" AutoPostBack="True">
        <asp:ListItem Value="Day"></asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp; Year:
    <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged">
        <asp:ListItem Value="Year"></asp:ListItem>
    </asp:DropDownList>
&nbsp; Start Time:
    <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
    
    <br />
    <br />
    Educators:
    &nbsp;<asp:DropDownList ID="ddlEducator" runat="server" DataSourceID="SqlDataSource4" DataTextField="EducatorFirstName" DataValueField="EducatorFirstName">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString5 %>" SelectCommand="SELECT * FROM [Educators]"></asp:SqlDataSource>
    &nbsp;# of People:
    <asp:TextBox ID="txtNumOfAdults" runat="server"></asp:TextBox>
&nbsp; # of Children:&nbsp;
    <asp:TextBox ID="txtNumOfChildren" runat="server"></asp:TextBox>
    &nbsp; Grade
<asp:DropDownList ID="ddlGrade" runat="server" DataSourceID="SqlDataSource3" DataTextField="GradeLevel" DataValueField="GradeID">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString3 %>" SelectCommand="SELECT * FROM [Grade]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="lblAnimalType" runat="server" Text="Animal Type:"></asp:Label>&nbsp;<asp:DropDownList ID="ddlAnimalType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>Bird</asp:ListItem>
        <asp:ListItem>Mammal</asp:ListItem>
        <asp:ListItem>Reptile</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;
    <asp:Label ID="lblAnimalName" runat="server" Text="Animal Name:"></asp:Label>
&nbsp;<asp:DropDownList ID="ddlAnimalName" DataTextField="AnimalName" DataValueField="AnimalID" runat="server" AutoPostBack="True">
    </asp:DropDownList>

    &nbsp;<br />
    &nbsp;<asp:Button ID="Button1" runat="server" Text="Add Another Animal Used in Program" OnClick="btnAdd_Click" />
&nbsp;
    <br />
    Payment Completed?<asp:RadioButtonList ID="rboWaitForPayment" runat="server">
        <asp:ListItem Value="Y">Yes</asp:ListItem>
        <asp:ListItem Value="N">No</asp:ListItem>
    </asp:RadioButtonList> Comments: <asp:TextBox ID="txtComments" runat="server"></asp:TextBox>
    <br /> 
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    
&nbsp;<asp:Button ID="btnLogOut" runat="server" Text="Logout" OnClick="btnLogOut_Click" />
    
&nbsp;<asp:Button ID="btnPopulate" runat="server" Text="Populate" OnClick="btnPopulate_Click" />
    
</asp:Content>

