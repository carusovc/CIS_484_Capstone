﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Landing.aspx.cs" Inherits="Landing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>WildTek Login</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

	  <!-- Bootstrap v4 -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
<link href="Content/Login.css" rel="stylesheet" type="text/css" media="screen">

</head>

<body>
<section class="login-block">
    <div class="container">
	<div class="row">
		<div class="col-md-4 login-sec">
		    <%--<h2 class="text-center">Choose </h2>--%>
		    <form class="login-form text-center">
  
      <asp:Button ID="createUser" class="btn btn-primary btn float-left btn-login btn-block" runat="server" OnClick="btncreateUser_Click" Text="Create User" />
        <asp:Button ID="modifyDBinformation" class="btn btn-primary btn float-left btn-login btn-block" runat="server" OnClick="btnmodifyDBinformation" Text="Modify Wildlife Center Information" />
      <asp:Button ID="viewReports" class="btn btn-primary btn float-left btn-login btn-block" runat="server" OnClick="btnviewReports_Click" Text="View Reports" />
        <asp:Button ID="finances" class="btn btn-primary btn float-left btn-login btn-block" runat="server" OnClick="btnfinances_Click" Text="Payment Records" />
     
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

