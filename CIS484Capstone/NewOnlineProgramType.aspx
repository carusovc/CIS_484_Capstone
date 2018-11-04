<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewOnlineProgramType.aspx.cs" Inherits="NewOnlineProgramType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Add Online Program</h2>
    <p>&nbsp;</p>
    <p>Online Program Name:
        <asp:TextBox ID="txtOnlineProgram" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblLastUpdated" runat="server" Text=""></asp:Label> <asp:Label ID="lblLastUpdatedBy" runat="server" Text=""></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
    </p>
    <p>&nbsp;</p>
</asp:Content>

