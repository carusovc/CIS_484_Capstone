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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildlifeCenterConnectionString2 %>" SelectCommand="SELECT [OrgID], [OrgName] FROM [Organization]"></asp:SqlDataSource>
&nbsp;Program:
    <asp:DropDownList ID="ddlProgramTypeID" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProgramName" DataValueField="ProgramTypeID">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildlifeCenterConnectionString %>" SelectCommand="SELECT * FROM [ProgramType]"></asp:SqlDataSource>
    
&nbsp; Program Address:
    <asp:TextBox ID="txtProgramAddress" runat="server" Width="295px"></asp:TextBox>
    
    <br />
    <br />
    City:
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
&nbsp; County:
    <asp:TextBox ID="txtCounty" runat="server" Width="191px"></asp:TextBox>
    
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
    &nbsp;<asp:Button ID="btnAdd" runat="server" Text="Add Animal" OnClick="btnAdd_Click" />
&nbsp;
    <br />
    <br />
    <asp:Label ID="lblAnimalType" runat="server" Text="Animal Type:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblAnimalName" runat="server" Text="Animal Name:"></asp:Label>
&nbsp;<asp:DropDownList ID="ddlAnimalName" DataTextField="AnimalName" DataValueField="AnimalID" runat="server">
    </asp:DropDownList>
<%--&nbsp;<asp:RadioButtonList ID="rboAnimalType" AutoPostBack="true" runat="server" OnSelectedIndexChanged="rboAnimalType_SelectedIndexChanged">
        <asp:ListItem>Bird</asp:ListItem>
        <asp:ListItem>Mammal</asp:ListItem>
        <asp:ListItem>Reptile</asp:ListItem>
    </asp:RadioButtonList>--%>
    <asp:RadioButton ID="rboBird" Text="Bird" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="Group1" AutoPostBack="true" />
                    <asp:RadioButton ID="rboMammal" Text="Mammal" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="Group1" AutoPostBack="true" />
                    <asp:RadioButton ID="rboReptile" Text="Reptile" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="Group1" AutoPostBack="true" />
    <br />
    Payment Completed?<asp:RadioButtonList ID="rboWaitForPayment" runat="server">
        <asp:ListItem Value="Y">Yes</asp:ListItem>
        <asp:ListItem Value="N">No</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    
&nbsp;<asp:Button ID="btnLogOut" runat="server" Text="Logout" OnClick="btnLogOut_Click" />
    
</asp:Content>

