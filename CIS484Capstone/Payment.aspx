﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

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


               
         

   <nav class="navbar navbar-dark bg-dark">
  <button class="navbar-toggler d-md-none" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand " style=" color: #FFBC7C; font-weight: 400; font-size: 150%;" href="Programs.aspx">Wildlife Center of Virginia</a>
        <div class="ml-auto">
        <asp:Label ID="lblWelcome" runat="server" Text="" class="" style="color:#e0d7c3;" ></asp:Label>
         <a class=" d-none d-md-block" style="color:#FFBC7C;" href="Default.aspx">
               <span>Logout</span></a>
</div>
  <div class="collapse navbar-collapse "  id="navbarTogglerDemo03">
    <ul class="navbar-nav ml-auto mt-2 mt-lg-0 d-md-none">
      <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <%--<a class="nav-link" href="Programs.aspx">--%>

                    <span>Programs</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Programs.aspx">View Programs</a>
                    <a class="dropdown-item" href="ProgramTheme.aspx">View Program Themes</a>
                </div>
            </li>
            <%--      <li class="nav-item">
          <a class="nav-link" href="AnimalPage.aspx">
            <i class="fas fa-fw fa-book-open"></i>--%>
            <li class="nav-item dropdown no-arrow ">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">



                    <span>Animals</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="AnimalPage.aspx">View Animals</a>
                    <a class="dropdown-item" href="#" data-target="#AddAnimal" data-toggle="modal">Add New Animal</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateAnimal" data-toggle="modal">Edit Animals</a>
                </div>
            </li>
             <li class="nav-item ">
                    <a class="nav-link" href="Report.aspx">

                        <span>Reports</span></a>
                </li>
            <li class="nav-item dropdown no-arrow active">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Payment</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Payment.aspx">New Payment Form</a>
                    <a class="dropdown-item" href="Invoices.aspx">Invoices</a>
                    
                </div>
            </li>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Organizations</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#" data-target="#AddOrganization" data-toggle="modal">Add New Organization</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateOrganization" data-toggle="modal">Edit Organizations</a>
                </div>
            </li>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Educators</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Educators.aspx">View Educators</a>
                    <a class="dropdown-item" href="#" data-target="#AddEducator" data-toggle="modal">Add New Educator</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateEducator" data-toggle="modal">Edit Educators</a>
                </div>
            </li>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Volunteers</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Volunteers.aspx">View Volunteers</a>
                    <a class="dropdown-item" href="#" data-target="#AddVolunteer" data-toggle="modal">Add New Volunteer</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateVolunteer" data-toggle="modal">Edit Volunteers</a>
                </div>
            </li>

            <li class="nav-item " style="display: inline-block;
  white-space: nowrap;">
                <a class="nav-link" href="createUser.aspx">

                    <span>Create Outreach Coordinator Access</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Default.aspx">

                    <span>Logout</span></a>
            </li>

    </ul>
   
  </div>
</nav>

    

    <div id="wrapper">

        <!-- Sidebar -->

        <ul class="sidebar navbar-nav d-none d-md-block">
            <li class="nav-item dropdown no-arrow ">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <%--<a class="nav-link" href="Programs.aspx">--%>

                    <span>Programs</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Programs.aspx">View Programs</a>
                    <a class="dropdown-item" href="ProgramTheme.aspx">View Program Themes</a>
                </div>
            </li>
            <%--      <li class="nav-item">
          <a class="nav-link" href="AnimalPage.aspx">
            <i class="fas fa-fw fa-book-open"></i>--%>
            <li class="nav-item dropdown no-arrow ">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                     <span>Animals</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="AnimalPage.aspx">View Animals</a>
                    <a class="dropdown-item" href="#" data-target="#AddAnimal" data-toggle="modal">Add New Animal</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateAnimal" data-toggle="modal">Edit Animals</a>
                </div>
            </li>
             <li class="nav-item ">
                    <a class="nav-link" href="Report.aspx">

                        <span>Reports</span></a>
                </li>
            <li class="nav-item ">
                    <a class="nav-link" href="Tableau.aspx">

                        <span>Visualization</span></a>
                </li>
            <li class="nav-item dropdown no-arrow active">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Payment</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Payment.aspx">New Payment Form</a>
                    <a class="dropdown-item" href="Invoices.aspx">Invoices</a>
                    
                </div>
            </li>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Organizations</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#" data-target="#AddOrganization" data-toggle="modal">Add New Organization</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateOrganization" data-toggle="modal">Edit Organizations</a>
                </div>
            </li>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Educators</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Educators.aspx">View Educators</a>
                    <a class="dropdown-item" href="#" data-target="#AddEducator" data-toggle="modal">Add New Educator</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateEducator" data-toggle="modal">Edit Educators</a>
                </div>
            </li>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Volunteers</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Volunteers.aspx">View Volunteers</a>
                    <a class="dropdown-item" href="#" data-target="#AddVolunteer" data-toggle="modal">Add New Volunteer</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateVolunteer" data-toggle="modal">Edit Volunteers</a>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="createUser.aspx">

                    <span>Create Outreach Coordinator Access</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Default.aspx">

                    <span>Logout</span></a>
            </li>

        </ul>

      <div id="content-wrapper">


        <div class="container-fluid block ">
     
  







        <div >
            <div class="container-fluid">
                
    <div class="container1">
      <div class="card card-register mx-auto mt-5">
                        <div class="card-header NewUserTitle">Add New Payment</div>
                        <div class="card-body">
                            <div class="form-group">

                                 <div class="form-group row">
                                  <div class="col-sm-12 col-md-6">
                                    <h6>Invoice Number</h6>
                                
                                <asp:TextBox ID="txtInvoiceNum" runat="server" class="form-control" placeholder ="Enter Invoice Number"></asp:TextBox>
                                   
                                     </div>
                                <%--<asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server" ControlToValidate="txtInvoiceNum" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                     
                                  <div class="col-sm-12 col-md-6">   
                                      <h6>Date of Payment</h6>
                                <asp:Label runat="server" id="lblDate"></asp:Label>
                                </div>
                                     </div>
                                 <p></p>


                                <div class="form-group row">
                             <div class="col-sm-12 col-md-6">
                                 <h6>Program</h6>
                                    <asp:DropDownList ID="ddlProgramType" runat="server" class="form-control" AppendDataBoundItems="false" AutoPostBack="true" DataTextField="OrgName" DataValueField="OrgID" OnSelectedIndexChange="ddlProgramType_SelectedIndexChanged">                                  
                                        <asp:ListItem Value ="0">--Select Program--</asp:ListItem> </asp:DropDownList>
                                  <%--<asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="ddlOrganization" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                </div>
                                    <div class="col-sm-12 col-md-6">
                               <h6>Organization</h6>
                                    <asp:DropDownList ID="ddlOrganization" runat="server" class="form-control" AppendDataBoundItems="false" AutoPostBack="false" DataTextField="OrgName" DataValueField="OrgID" >                                  
                                        <asp:ListItem Value ="0">--Select Organization--</asp:ListItem> </asp:DropDownList>
<%--                                  <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server" ControlToValidate="ddlOrganization" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                </div>
                                 
                                </div>
                                <p></p>
                                

                               <div class="form-group row">
                        
                            
                               
                             

                                 <div class="col-sm-12 col-md-6">
                                <h6>Amount</h6>
                              
                                <asp:TextBox ID="txtAmount" runat="server" class="form-control" placeholder ="Enter Amount"></asp:TextBox>

                                </div>
                                <p></p>

                                
                                <p></p>
                                   <p></p>

                                <div class="form-group row">
                               <div class="col-sm-12 col-md-6">
                                <h6> Payment Type</h6>
                               <asp:DropDownList ID="ddlPaymentType" runat="server"  class="form-control" AppendDataBoundItems="false" AutoPostBack="true" OnSelectedIndexChanged="ddlPaymentType_SelectedIndexChanged">
                                    <asp:ListItem Value ="0">--Payment Type--</asp:ListItem>
                                    <asp:ListItem>Check</asp:ListItem>
                                    <asp:ListItem>Credit</asp:ListItem>
                                    <asp:ListItem>Debit</asp:ListItem>
                               </asp:DropDownList>
                             
                                </div>
                              <%--<asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="ddlPaymentType" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                 <div class="col-sm-12 col-md-6">
                               <h6>Check Number</h6>
                             
                               
                                <asp:TextBox ID="txtCheckNum" runat="server" class="form-control" ReadOnly="true" placeholder ="Enter Check Number"></asp:TextBox>
                                    <%-- <asp:CompareValidator ID="CheckNumberValidator" runat="server" ControlToValidate="txtCheckNum" Type="Integer"
                                        Operator="DataTypeCheck" ErrorMessage="Value must be a number." />--%>
                               <%-- <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ControlToValidate="txtCheckNum" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                </div>
                                </div>
                                <p></p>

                                <div class="form-group row">
                                <div class="col-sm-12 col-md-6">
                                   
                                <%--<asp:TextBox ID="txtCancelledChar" runat="server" MaxLength="1" Width="70px" class="form-control" placeholder ="(Y/N)"></asp:TextBox>
                                <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server" ControlToValidate="txtCancelledChar" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                </div>
                        </div>
                        </div>
                        <div class="mx-auto d-flex justify-content-center">
                            <%--<asp:Button ID="btnPopulate" runat="server" Text="Populate" OnClick="btnPopulate_Click" class="btn btn-primary btn-inside" />--%>
                            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click1" class="btn btn-primary btn-inside" Text="Submit" />
                               <asp:Button ID="btnInvoices" runat="server" OnClick="btnInvoices_Click" class="btn btn-primary btn-inside" Text="View Invoices" />
                        </div>
                        <p></p>
                        <asp:Label ID="lblStatus" ForeColor="red" runat="server"></asp:Label>
                    </div>
                </div>
         
            </div>
                   </div>
                </div>
            </div>
           
            </div>
        </div>
         
</asp:Content>

