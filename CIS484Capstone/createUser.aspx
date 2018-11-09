﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="createUser.aspx.cs" Inherits="createUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
<meta charset="UTF-8">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.css" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/sb-admin.css" rel="stylesheet">
         <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

      <link href="https://fortawesome.github.io/Font-Awesome/assets/font-awesome/css/font-awesome.css" rel="stylesheet">
    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

      <!-- Logo FOnt-->
      <link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet">

	  <!-- Bootstrap v4 -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
<link href="Content/Login.css" rel="stylesheet" type="text/css" media="screen">
<link href="Content/sb-admin.css" rel="stylesheet" type="text/css" media="screen">
        
      <!-- Logo FOnt-->
      <link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet">

                
            <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1 logo" href="Default.aspx">WildTek</a>


      <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
        
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-user-circle fa-fw"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
          </div>
        </li>
      </ul>

    </nav>


            <div id="wrapper">

 <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown" >
          
          <%--<a class="nav-link" href="Programs.aspx">--%>
                      <span>Programs</span>
          </a>
            <div class="dropdown-menu dropdown-menu-right" >
                <a class="dropdown-item" href="Programs.aspx">View Programs</a>
            <a class="dropdown-item" href="#" data-target="#AddProgram" data-toggle="modal" >Add New Program Type</a>
          </div>
        </li>
<%--      <li class="nav-item">
          <a class="nav-link" href="AnimalPage.aspx">
            <i class="fas fa-fw fa-book-open"></i>--%>
          <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown" >
     
            <span>Animals</span>
          </a>
            <div class="dropdown-menu dropdown-menu-right" >
                <a class="dropdown-item" href="AnimalPage.aspx">View Animals</a>
            <a class="dropdown-item" href="#" data-target="#AddAnimal" data-toggle="modal">Add New Animal</a>
            <a class="dropdown-item" href="#" data-target="#UpdateAnimal" data-toggle="modal">Update Animals</a>
          </div>
        </li>
           <li class="nav-item dropdown no-arrow ">
          <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown" >
          
            <span>Reports</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" >
            <a class="dropdown-item" href="AnimalMonthlyWildlifeReport.aspx">Animal</a>
            <a class="dropdown-item" href="MonthlyWildlifeReport.aspx">Monthly</a>
            <a class="dropdown-item" href="YearlyWildlifeReport.aspx">Yearly</a>
            <a class="dropdown-item" href="TabLiveReports.aspx">Live Program</a>
            <a class="dropdown-item" href="TabOnlineProgramReports.aspx">Online Program</a>
            <a class="dropdown-item" href="TabGradeReport.aspx">Grade</a>
          </div>
        </li>
          <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown" >
          
            <span>Payment</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" >
              <a class="dropdown-item" href="Payment.aspx">New Payment Form</a>
            <a class="dropdown-item" href="Invoices.aspx">Invoices</a>
            <a class="dropdown-item" href="YearlyInvoices.aspx">Yearly Invoices</a>
          </div>
        </li>

          <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown" >
        
            <span>Organizations</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" >
            <a class="dropdown-item" href="#" data-target="#AddOrganization" data-toggle="modal">Add New Organization</a>
              <a class="dropdown-item" href="#" data-target="#UpdateOrganization" data-toggle="modal">Update Organizations</a>
          </div>
        </li>

           <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown" >

            <span>Educators</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" >
            <a class="dropdown-item" href="#" data-target="#AddEducator" data-toggle="modal">Add New Educator</a>
            <a class="dropdown-item" href="#" data-target="#UpdateEducator" data-toggle="modal">Update Educators</a>
          </div>
        </li>

                  <li class="nav-item">
          <a class="nav-link" href="Location.aspx">
            
            <span>Location</span></a>
        </li>

          <li class="nav-item active">
          <a class="nav-link" href="createUser.aspx">
          
            <span>Create Outreach Coordinator Access</span></a>
        </li>
          <li class="nav-item">
          <a class="nav-link" href="Default.aspx">
          
            <span>Logout</span></a>
        </li>

      </ul>

      <div id="content-wrapper">

          

        <div class="container-fluid ">

          

<section class="login-block">
    

<div class="container1">
      <div class="card card-register mx-auto mt-5">
        <div class="card-header NewUserTitle text-center">Add Outreach Coordinator</div>
        <div class="card-body">
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">  
                      <h6 >First Name</h6>
                      <asp:TextBox ID="txtFirstName" runat="server" class="form-control" placeholder="First name" required="required"></asp:TextBox>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">                    
                      <h6>Last Name</h6>
                     
                      <asp:TextBox ID="txtLastName" class="form-control" placeholder="Last name" required="required" runat="server"></asp:TextBox>               
                  </div>
                </div>
              </div>
            </div>

            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                        <h6>Username</h6>
                    
                   <%--  <label for="inputPassword">PASSWORD</label> --%>
                     
                                    <asp:TextBox ID="txtUsername" class="form-control" placeholder="Pick a username" required="required" runat="server"></asp:TextBox>
                </div></div>
                   
                           
                    <div class="col-md-6">
                  <div class="form-label-group">
                <h6>Password</h6>
               
          <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="form-control" placeholder="Password" required="required"></asp:TextBox>
                      <br?/> <asp:CheckBox ID="chkShowPassword" runat="server" Text="Show Password"  AutoPostback ="True" OnCheckedChanged ="chkShowPassword_CheckedChanged"/>
                   
                      
                </div>
                          <p runat="server" class=" PasswordReq" style="font-size: 75%;"> Password must include: <br> 1 Number, 1 Special Character <br> 1 Capital Letter, Minimum 8 Characters  </p>
              </div>
            </div>
            
                </div>
            <div class="row">
                <div class="col-md-4 mx-auto">
                    <br />
          <%--  </div>   
            <asp:CheckBox ID="chkShowPassword" runat="server" Text="Show Password"  AutoPostback ="True" OnCheckedChanged ="chkShowPassword_CheckedChanged"/> --%>
            <asp:Button ID="btnSubmit" class="btn btn-primary btn-login btn-block" href="ProgramForm.aspx" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                </div>
            </div>
            
            
            <asp:Label ID="lblStatus" runat="server"></asp:Label>
            
          

          <%--  <br /> --%>
          <div class="text-center">
            <%--<a class="d-block small mt-3" href="Default.aspx">Login Page</a>--%>
            <%--<a class="d-block small" href="forgot-password.html">Forgot Password?</a>--%>
          </div>
        </div>
      </div>
    </div>



       
</section>


    </div>
    </div>

</div>
</asp:Content>