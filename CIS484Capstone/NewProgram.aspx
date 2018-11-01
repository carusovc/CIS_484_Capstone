<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewProgram.aspx.cs" Inherits="NewProgram" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <h2>Add New Program</h2>Program Name:
    <asp:TextBox ID="txtProgramName" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblLastUpdated" runat="server" Text=""></asp:Label>
        <asp:Label ID="lblLastUpdatedBy" runat="server" Text=""></asp:Label>
    &nbsp;<br />
    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
    </p>
</asp:Content>

