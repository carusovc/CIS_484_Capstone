<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateAnimal.aspx.cs" Inherits="UpdateAnimal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <p>
        <h2>Update Animal</h2>
    <p>Select Animal:
        <asp:DropDownList ID="ddlAnimal" runat="server" AppendDataBoundItems="false" AutoPostBack="true" DataTextField="AnimalName" DataValueField="AnimalID"  OnSelectedIndexChanged ="ddlAnimal_SelectedIndexChanged1">
        </asp:DropDownList>
            <p>
       Animal Type:
    &nbsp;<asp:DropDownList ID="ddlAnimalType" runat="server">
                    <asp:ListItem>Bird</asp:ListItem>
                    <asp:ListItem>Mammal</asp:ListItem>
                    <asp:ListItem>Reptile</asp:ListItem>
                </asp:DropDownList>
                &nbsp; Animal Name:
    <asp:TextBox ID="txtAnimalName" runat="server"></asp:TextBox>
                &nbsp;&nbsp;Status:
                <asp:DropDownList ID="ddlStatus" runat="server" AutoPostBack="true">
                    <asp:ListItem>Active</asp:ListItem>
                    <asp:ListItem>Inactive</asp:ListItem>
                </asp:DropDownList>
                <br />
    <br />
    <asp:Label ID="lblLastUpdated" runat="server" Text=""></asp:Label>
    &nbsp;<asp:Label ID="lblLastUpdatedBy" runat="server" Text=""></asp:Label>
    </p>
    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
    &nbsp;
        <asp:Button ID="btnDelete" runat="server" Text="Delete" />
    </p></p>
</asp:Content>

