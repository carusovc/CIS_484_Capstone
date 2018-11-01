<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateOrganization.aspx.cs" Inherits="UpdateOrganization" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <h2>Update Organization</h2>
    <p>Select Organization:
        <asp:DropDownList ID="ddlOrganization" runat="server" AppendDataBoundItems="false" AutoPostBack="true" DataTextField="OrgName" DataValueField="OrgID"  OnSelectedIndexChanged ="ddlOrganization_SelectedIndexChanged1">
        </asp:DropDownList>
            <p>
       Organization Name:
    <asp:TextBox ID="txtOrgName" runat="server"></asp:TextBox>
    &nbsp;&nbsp; City:
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
&nbsp; County:
    <asp:TextBox ID="txtCounty" runat="server"></asp:TextBox>
&nbsp;<br />
    <br />
    <asp:Label ID="lblLastUpdated" runat="server" Text=""></asp:Label>
    &nbsp;<asp:Label ID="lblLastUpdatedBy" runat="server" Text=""></asp:Label>
    </p>
    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
    </p></p>
</asp:Content>

