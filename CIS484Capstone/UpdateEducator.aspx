<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateEducator.aspx.cs" Inherits="UpdateEducator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Update Educator Information</h2>

    Educator Name: <asp:DropDownList ID="ddlEducatorName" runat="server" AppendDataBoundItems="false" AutoPostBack="true" DataTextField="EducatorFirstName" DataValueField="EducatorID"  OnSelectedIndexChanged ="ddlEducator_SelectedIndexChanged1"></asp:DropDownList>

    <br />
    <br />
    First Name:
    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>

&nbsp; Last Name:
    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>

    <br />
    <br />
    <br />
        <asp:Label ID="lblLastUpdated" runat="server" Text=""></asp:Label>
    &nbsp;<asp:Label ID="lblLastUpdatedBy" runat="server" Text=""></asp:Label>
    </p>
    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
    &nbsp;
        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
</asp:Content>

