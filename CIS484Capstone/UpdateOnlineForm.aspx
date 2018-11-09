<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateOnlineForm.aspx.cs" Inherits="UpdateOnlineForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Update Online Program</h2>

    Online Program ID: <asp:DropDownList ID="ddlOnlineProgramID" runat="server" AppendDataBoundItems="false" AutoPostBack="true" DataTextField="OnlineProgramID" DataValueField="OnlineProgramID" OnSelectedIndexChanged ="ddlOnlineProgramID_SelectedIndexChanged1">
        <asp:ListItem Text="--Select Online Program ID--" Value="0" />
                       </asp:DropDownList>
&nbsp; Program Date:
    <asp:TextBox ID="txtProgramDate" runat="server"></asp:TextBox>
&nbsp;<br />
    <br />
    Online Program Type:
    <asp:DropDownList ID="ddlProgramType" runat="server">
    </asp:DropDownList>
&nbsp; Number of Kids:
    <asp:TextBox ID="txtNumOfKids" runat="server"></asp:TextBox>
&nbsp; Number of Adults:
    <asp:TextBox ID="txtNumOfAdults" runat="server"></asp:TextBox>
    <br />
    <br />
    City:
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
&nbsp; State:
    <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
&nbsp; Country:
    <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
&nbsp; Teacher:
    <asp:DropDownList ID="ddlTeacher" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    Grades:
    <asp:ListBox ID="AddGrade" runat="server" SelectionMode="Multiple"><asp:ListItem Text="--Select Grades--" Value="0" /></asp:ListBox>
<%--    &nbsp;
    Grades:
    <asp:TextBox ID="txtTempGrade" runat="server"></asp:TextBox>--%>
&nbsp; Educators: <asp:ListBox ID="drpEducators" runat="server" SelectionMode="Multiple"><asp:ListItem Text="--Select Educators--" Value="0" /></asp:ListBox>
<%--    &nbsp;Educators:
    <asp:TextBox ID="txtEducators" runat="server"></asp:TextBox>--%>
    <br />
    <br />
    Birds:
    <asp:ListBox ID="ddlBirds" runat="server" SelectionMode="Multiple">
        <asp:ListItem Text="--Select Birds--" Value="0" />
    </asp:ListBox>
<%--    &nbsp; Birds:<asp:TextBox ID="txtTempBird" runat="server"></asp:TextBox>--%>
&nbsp;&nbsp; Reptiles:
    <asp:ListBox ID="ddlReptiles" runat="server" SelectionMode="Multiple">
        <asp:ListItem Text="--Select Reptiles--" Value="0" />
    </asp:ListBox>
<%--    &nbsp; Reptiles:
    <asp:TextBox ID="txtTempReptiles" runat="server"></asp:TextBox>--%>
&nbsp;<br />
    <br />
    Mammals:
    <asp:ListBox ID="lstMammals" runat="server" SelectionMode="Multiple">
        <asp:ListItem Text="--Select Mammals--" Value="0" />
    </asp:ListBox>
<%--    &nbsp;Mammals:&nbsp;
    <asp:TextBox ID="txtTempMammals" runat="server"></asp:TextBox>--%>
    <br />
    <br />
    <br />
    Contact Email:
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
&nbsp; Comments:
    <asp:TextBox ID="txtComments" runat="server"></asp:TextBox>
     <br />
    <br />
     <asp:Label ID="lblLastUpdated" runat="server" Text=""></asp:Label>
    &nbsp;<asp:Label ID="lblLastUpdatedBy" runat="server" Text=""></asp:Label>
    </p>
    <asp:Button ID="btnUpdate" runat="server" Text="Update"/>
&nbsp;
    <asp:Button ID="btnDelete" runat="server" Text="Delete" />
</asp:Content>