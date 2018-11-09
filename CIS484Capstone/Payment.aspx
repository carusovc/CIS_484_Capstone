<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payments" %>

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
          <a class="nav-link" href="AnimalPage.aspx">--%>
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
           <li class="nav-item dropdown no-arrow">
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
          <li class="nav-item dropdown no-arrow active">
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
     
 
    
          <div class="row">
		<div class="col-md-12 ProgramTitle">
			
        <div >
            <div class="container-fluid">
                <div class="container1">
                    <div class="card card-register mx-auto mt-5">
                        <div class="card-header NewUserTitle text-center">Add New Payment</div>
                        <div class="card-body">
                            <div class="form-group">
                               <div class="form-group row">
                            <div class="col-sm-12 col-md-6">
                               <h6>Month</h6>
                               
                                <asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged" Style="text-align: left;" class="form-control">
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
                        
                                
                                   </div>
                                 <div class="col-sm-12 col-md-6">
                                <h6>Date</h6>
                               
                                <asp:DropDownList ID="ddlDate" runat="server" AutoPostBack="True" Style="text-align: left;" class="form-control">

                                            <asp:ListItem Value="Day"></asp:ListItem>
                                        </asp:DropDownList>
                                </div>
                                   </div>
                                <p></p>

                                
                                <p></p>

                                <div class="form-group row">
                              <div class="col-sm-12 col-md-6">
                                <h6>Year</h6>
                                
                                <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged" class="form-control">
                                <asp:ListItem Value="Year"></asp:ListItem>
                                </asp:DropDownList>


                                </div>
                                 <div class="col-sm-12 col-md-6">
                                <h6>Amount</h6>
                              
                                <asp:TextBox ID="txtAmount" runat="server" class="form-control" placeholder ="Enter Amount"></asp:TextBox>
                                </div>
                                </div>
                                <p></p>

                                
                                <p></p>

                                <div class="form-group row">
                               <div class="col-sm-12 col-md-6">
                                <h6> Check Number</h6>
                            
                                <asp:TextBox ID="txtCheckNum" runat="server" class="form-control" placeholder ="Enter Check Number"></asp:TextBox>
                                </div>

                                 <div class="col-sm-12 col-md-6">
                               <h6>Or Payment Type</h6>
                               
                                <asp:TextBox ID="txtPaymentType" runat="server" class="form-control" placeholder ="Enter Payment Type"></asp:TextBox>
                                </div>
                                </div>
                                <p></p>

                              


                                <div class="form-group row">
                            <div class="col-sm-12 col-md-6">
                               <h6>Organization</h6>
                             
                                <asp:TextBox ID="txtOrganization" runat="server" class="form-control" placeholder ="Enter Organization ID"></asp:TextBox>
                                </div>
                                   <div class="col-sm-12 col-md-6">
                                    <h6>Invoice Number</h6>
                                
                                <asp:TextBox ID="txtInvoiceNum" runat="server" class="form-control" placeholder ="Enter Invoice Number"></asp:TextBox>
                                </div>
                                </div>
                                <p></p>

                          
                                
                               

                                <div class="form-group row">
                                <div class="col-sm-12 col-md-6">
                                <h6>Cancelled (Y/N)</h6>
                               
                                <asp:TextBox ID="txtCancelledChar" runat="server" MaxLength="1" Width="70px" class="form-control" placeholder ="(Y/N)"></asp:TextBox>
                                
                                </div>
                        </div>
                        </div>
                        <div class="mx-auto d-flex justify-content-center">
                            <asp:Button ID="btnPopulate" runat="server" Text="Populate" OnClick="btnPopulate_Click" class="btn btn-primary btn-inside" />
                            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click1" class="btn btn-primary btn-inside" Text="Submit" />
                        </div>
                        <p></p>
                       
                    </div>
                </div>
            </div>
                   </div>
                </div>
            </div>
               </div>
            </div>
        </div>
               </div>

        </div>

               </div>
     
</asp:Content>

