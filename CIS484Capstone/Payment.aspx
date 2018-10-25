<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

	  <!-- Bootstrap v4 -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
<link href="Content/Login.css" rel="stylesheet" type="text/css" media="screen">

</head>

<body>
<section class="login-block">
    

<div class="container">
      <div class="card card-register mx-auto mt-5">
          <div class="card-header NewUserTitle">Payment Information Form</div>
    
        <div class="card-body">
         <form class="login-form">
  <div class="form-group">
         <label for="Month">Month:</label>
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
          <label for="Date">Date:</label>
    <asp:DropDownList ID="ddlDate" runat="server" AutoPostBack="True">
        <asp:ListItem Value="Day"></asp:ListItem>
    </asp:DropDownList>
  <label for="Year">Year:</label>
    <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged">
        <asp:ListItem Value="Year"></asp:ListItem>
    </asp:DropDownList>
<br />
    <br />
     <label for="Amount">Amount:</label>
    <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
     <label for="CheckNumber">Check Number:</label>
    <asp:TextBox ID="txtCheckNum" runat="server"></asp:TextBox>
    <label for="Other">Or Payment Type:</label>
    <asp:TextBox ID="txtPaymentType" runat="server"></asp:TextBox>
    <br />
     <label for="org">Organization:</label>
    <asp:TextBox ID="txtOrganization" runat="server"></asp:TextBox>
  <label for="Invoice">Invoice:</label>
    <asp:TextBox ID="txtInvoiceNum" runat="server"></asp:TextBox>
    <label for="cancelled">Cancelled Y/N</label>
    <asp:TextBox ID="txtCancelledChar" runat="server" MaxLength="1" Width="23px"></asp:TextBox>

  </div>

        <asp:Button ID="btnPopulate" runat="server" Text="Populate" OnClick="btnPopulate_Click" class="btn btn-primary  btn-login btn-block" />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click1" class="btn btn-primary  btn-login btn-block" Text="Submit" />
  

   
</form>

        </div>
      </div>
    </div>



       
</section>



<!-- jQuery and Bootstrap links - do not delete! -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<!-- end of do not delete -->
</body>
</html>














</asp:Content>

