<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="userLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet">

<!-- Bootstrap v4 -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
<link href="Content/Login.css" rel="stylesheet" type="text/css" media="screen">
<link href="Content/sb-admin.css" rel="stylesheet" type="text/css" media="screen">


<section class="login-block">
<div class="container">
	<div class="row">
		<div class="col-md-4 login-sec">
		    <h2 class="text-center logo">WildTek Login</h2>
		    
            <div class="form-group">
            <label for="txtUsername" class="text-uppercase" runat="server">Username</label>
                <asp:TextBox ID="txtUsername" class="input-md textinput form-control" placeholder="Username" style="margin-bottom: 10px" type="text" runat="server"></asp:TextBox>
             </div>

        <div class="form-group">
            <label for="txtPassword" class="text-uppercase" runat="server">Password</label>
            <asp:TextBox ID="txtPassword" class="input-md textinput textInput form-control" name="password1" placeholder="Password" style="margin-bottom: 10px" runat="server" TextMode="Password"></asp:TextBox>
        </div>
  
        <asp:CheckBox ID="chkShowPassword" runat="server" Text="Show Password"  AutoPostback ="True" OnCheckedChanged ="chkShowPassword_CheckedChanged"/>
        <br />
        <asp:Label ID="lblStatus" ForeColor="red" runat="server"></asp:Label>
                 
        <div class="form-check">
            <%--<label class="form-check-label">
            <input type="checkbox" class="form-check-input">
                <small>Remember Me</small>
            </label>--%> <br>

        <br/>
    
        
            <asp:Button ID="btnLogin" class="btn btn-primary  btn-login btn-block" runat="server" OnClick="btnLogin_Click" Text="Login" />
             <%--This needs to be removed --%>
          
            <br/>
           
            <asp:Button ID="createForm" class="btn btn-primary btn-login btn-block" runat="server" OnClick="btnForm_Click" Text="Enter Program Information" />
              <a class="mx-auto" href="createUser"> Create User</a>
        </div>
        <br />
        </div>	  
		 <%--This is the image on the login screen --%>
		<div class="col-md-8 banner-sec">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
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
</asp:Content>