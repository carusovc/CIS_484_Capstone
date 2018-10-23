﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userLogin.aspx.cs" Inherits="userLogin" %>

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
		    <h2 class="text-center">WildTek Login</h2>
		    <form class="login-form">
  <div class="form-group">
    <label for="txtUsername" class="text-uppercase" runat="server">Username</label>
    <%--<input class="input-md emailinput form-control" id="txtUsername" name="email" placeholder="Email address" style="margin-bottom: 10px" type="email" runat="server"/>--%>

      <asp:TextBox ID="txtUsername" class="input-md emailinput form-control" placeholder="Username" style="margin-bottom: 10px" type="text" runat="server"></asp:TextBox>
    
  </div>
  <div class="form-group">
    <label for="txtPassword" class="text-uppercase" runat="server">Password</label>
   <%-- <input class="input-md textinput textInput form-control" id="txtPassword" name="password1" placeholder="Password" style="margin-bottom: 10px" type="password" runat="server"/>--%>

    <asp:TextBox ID="txtPassword" class="input-md textinput textInput form-control" name="password1" placeholder="Password" style="margin-bottom: 10px" runat="server" TextMode="Password"></asp:TextBox>

  </div>
  
  <%--<label ID="lblStatus" runat="server"> </label>--%>

    <asp:Label ID="lblStatus" runat="server"></asp:Label>
                 
    <div class="form-check">
    <%--<label class="form-check-label">
      <input type="checkbox" class="form-check-input">
      <small>Remember Me</small>
    </label>--%> <br>

    <asp:CheckBox ID="chkShowPassword" runat="server" Text="Show Password"  AutoPostback ="True" OnCheckedChanged ="chkShowPassword_CheckedChanged"/>

    <%--<a href="New-User.html"><label class="form-check-label">
      
      <small class="Account">Sign Up</small>
    </label> </a> --%>
    <br>
    
    <%--<a class="btn float-right btn-login" id="btnLogin" runat="server" OnClick="btnLogin_Click" role="button" runat="server">Submit</a> --%>
    <asp:Button ID="btnLogin" class="btn float-right btn-login" runat="server" OnClick="btnLogin_Click" Text="Login" />
  
  </div>
  
</form>
		</div>
		<div class="col-md-8 banner-sec">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                 
            
    <div class="carousel-item active">
      <div class="carousel-caption d-none d-md-block">
        <div class="banner-text">
            <h2>WildTek</h2>
        </div>	
  </div>
		
            </div>	   
		    
		</div>
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











       <%-- <div>

            <br />
            <br />
            <strong>Login</strong><br />
            Username:
            <asp:TextBox ID="txtUsername" CssClass="Login.css" runat="server"></asp:TextBox>
            <br />
            Password:
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
            <br />
            <asp:CheckBox ID="chkShowPassword" runat="server" Text="Show Password"  AutoPostback ="True" OnCheckedChanged ="chkShowPassword_CheckedChanged"/>
            <br />
            <asp:Label ID="lblStatus" runat="server"></asp:Label>--
       </div>--%>

</asp:Content>

