<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateProgramForm.aspx.cs" Inherits="UpdateProgramForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p>
        <h2>Update Program Form</h2>
    <p>Select Program ID:
        <asp:DropDownList ID="ddlProgramID" runat="server" AppendDataBoundItems="false" AutoPostBack="true" DataTextField="ProgramID" DataValueField="ProgramID" OnSelectedIndexChanged ="ddlProgramID_SelectedIndexChanged1">
        </asp:DropDownList>
            <p>
       Program Type:
                &nbsp;<asp:DropDownList ID="ddlProgramType" runat="server">
                </asp:DropDownList>
                &nbsp; Organization:
                <asp:DropDownList ID="ddlOrganization" runat="server">
                </asp:DropDownList>
                &nbsp; Status:
&nbsp;<asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
    </p>
     <p>
         &nbsp;</p>
     <p>
         Program Address:
         <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
&nbsp; City:
         <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
&nbsp;County:
         <asp:TextBox ID="txtCounty" runat="server"></asp:TextBox>
                &nbsp;State:
         <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
    </p>
     <p>
         &nbsp;</p>
     <p>
         On/Off Site:&nbsp;&nbsp;Number of Children:
         <asp:TextBox ID="txtNumOfChildren" runat="server"></asp:TextBox>
&nbsp; Number of Adults:
         <asp:TextBox ID="txtNumOfAdults" runat="server"></asp:TextBox>
         &nbsp; <asp:RadioButtonList ID="rboOnOff" runat="server">
             <asp:ListItem Value="0">Yes</asp:ListItem>
             <asp:ListItem Value="1">No</asp:ListItem>
         </asp:RadioButtonList> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
     Payment Needed?<asp:RadioButtonList ID="rboPayment" runat="server">
             <asp:ListItem>Yes</asp:ListItem>
             <asp:ListItem>No</asp:ListItem>
         </asp:RadioButtonList>
     <p>
         Program Date:<asp:TextBox ID="txtProgramDate" runat="server"></asp:TextBox>
&nbsp;
&nbsp;
                Program Time:
         <asp:TextBox ID="txtProgramTime" runat="server"></asp:TextBox>
         &nbsp; Educators:
         <asp:TextBox ID="txtTempEducators" runat="server"></asp:TextBox>
    </p>
     <p>
         Birds:
         <asp:TextBox ID="txtTempBirds" runat="server"></asp:TextBox>
&nbsp; Reptiles:<asp:TextBox ID="txtTempReptiles" runat="server"></asp:TextBox>
&nbsp;Mammals:
         <asp:TextBox ID="txtTempMammals" runat="server"></asp:TextBox>
    </p>
     <p>
         Grades:
         <asp:TextBox ID="txtTempGrades" runat="server"></asp:TextBox>
     </p>
     <p>
         Comments:
         <asp:TextBox ID="txtComments" runat="server"></asp:TextBox>
                <br />
    <br />
    <asp:Label ID="lblLastUpdated" runat="server" Text=""></asp:Label>
    &nbsp;<asp:Label ID="lblLastUpdatedBy" runat="server" Text=""></asp:Label>
    </p>
    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
    </p></p>
</asp:Content>

