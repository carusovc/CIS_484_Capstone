<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Online" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    </asp:Label> Month:
    <asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged">
        <asp:ListItem>Month</asp:ListItem>
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
        &nbsp;&nbsp; Date:
    <asp:DropDownList ID="ddlDate" runat="server" AutoPostBack="True">
        <asp:ListItem Value="Day"></asp:ListItem>
    </asp:DropDownList>
&nbsp; Year:
    <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged">
        <asp:ListItem Value="Year"></asp:ListItem>
    </asp:DropDownList>
&nbsp;<br />
    <br />
    Amount:&nbsp;
    <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
    &nbsp; Check Number:
    <asp:TextBox ID="txtCheckNum" runat="server"></asp:TextBox>
    &nbsp;or Payment Type
    <asp:TextBox ID="txtPaymentType" runat="server"></asp:TextBox>
    <br />
    Organization:
    <asp:TextBox ID="txtOrganization" runat="server"></asp:TextBox>
&nbsp; Invoice:
    <asp:TextBox ID="txtInvoiceNum" runat="server"></asp:TextBox>
    &nbsp; Cancelled Y/N
    <asp:TextBox ID="txtCancelledChar" runat="server" MaxLength="1" Width="23px"></asp:TextBox>
    <br />
    <br />
<%--    <<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />--%>
    &nbsp;
    <asp:Button ID="btnPopulate" runat="server" Text="Populate" OnClick="btnPopulate_Click" />
&nbsp;
    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click1" Text="Submit" />
</asp:Content>

