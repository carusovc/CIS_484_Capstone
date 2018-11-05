<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewAnimalForm.aspx.cs" Inherits="NewAnimalForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    
    <div class="addAnimal">
    <h2>Create New Animal</h2>
    <p>&nbsp;</p>
    <p>Animal Type:
        <asp:DropDownList ID="ddlAnimalType" runat="server">
            <asp:ListItem>Bird</asp:ListItem>
            <asp:ListItem>Mammal</asp:ListItem>
            <asp:ListItem>Reptile</asp:ListItem>
        </asp:DropDownList>
    &nbsp;&nbsp; Animal Name:
        <asp:TextBox ID="txtAnimalName" runat="server"></asp:TextBox>

    &nbsp; Status:
        <asp:DropDownList ID="ddlStatus" runat="server">
            <asp:ListItem>Active</asp:ListItem>
            <asp:ListItem>Inactive</asp:ListItem>
        </asp:DropDownList>

    </p>
    <p>
        <asp:Label ID="lblLastUpdated" runat="server" Text=""></asp:Label>


    &nbsp;<asp:Label ID="lblLastUpdatedBy" runat="server" Text=""></asp:Label>


    </p>
    <p>
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />


    </p>


        </div>
</asp:Content>
