<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SimpleReport.aspx.cs" Inherits="SimpleReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <h1>This is the Simple Report based on Month</h1> 
    
    <asp:Label ID="lblMonth" runat="server" Text="Choose a Month:"></asp:Label>
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
     <br />
    
    <asp:Label ID="lblChildCount" runat="server" Text="Number of Children:"></asp:Label>
    <asp:TextBox ID="txtChildCount" runat="server"></asp:TextBox>
    <br />
        <asp:Label ID="lblAdultCount" runat="server" Text="Number of Adults:"></asp:Label>
    <asp:TextBox ID="txtAdultCount" runat="server"></asp:TextBox>
     <br />
    <asp:Label ID="lblTotalPersonCount" runat="server" Text="Total:"></asp:Label>
    <asp:TextBox ID="txtTotalPersonCount" runat="server"></asp:TextBox>
     <br />
    <asp:Label ID="lblOnsiteCount" runat="server" Text="Number of Onsite Programs"></asp:Label>
    <asp:TextBox ID="txtOnsiteCount" runat="server"></asp:TextBox>
 
     <br />
        <asp:Label ID="lblOffsiteCount" runat="server" Text="Number of Offsite Programs"></asp:Label>
    <asp:TextBox ID="txtOffsiteCount" runat="server"></asp:TextBox>
     <br />
     <asp:Label ID="lblTotalProgramCount" runat="server" Text="Total:"></asp:Label>
    <asp:TextBox ID="txtTotalProgramCount" runat="server"></asp:TextBox>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>

