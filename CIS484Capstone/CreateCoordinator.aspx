<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateCoordinator.aspx.cs" Inherits="CreateCoordinator" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

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

        <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle">
            <i class="fas fa-bars"></i>
        </button>

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
            <li class="nav-item">
                <a class="nav-link" href="Programs.aspx">
                    <i class="fas fa-fw fa-book-open"></i>
                    <span>Programs</span>
                </a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="AnimalPage.aspx">
                    <i class="fas fa-fw fa-book-open"></i>
                    <span>Animal</span>
                </a>
            </li>
            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                    <i class="fas fa-envelope fa-fw"></i>
                    <span>Reports</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="AnimalMonthlyWildlifeReport.aspx">Animal</a>
                    <a class="dropdown-item" href="MonthlyWildlifeReport.aspx">Monthly</a>
                    <a class="dropdown-item" href="YearlyWildlifeReport.aspx">Yearly</a>
                    <a class="dropdown-item" href="TabLiveReports.aspx">Live Program</a>
                    <a class="dropdown-item" href="TabOnlineProgramReports.aspx">Online Program</a>
                    <a class="dropdown-item" href="TabGradeReport.aspx">Grade</a>
                </div>
            </li>
            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                    <i class="fas fa-envelope fa-fw"></i>
                    <span>Payment</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Payment.aspx">New Payment Form</a>
                    <a class="dropdown-item" href="Invoices.aspx">Invoices</a>
                    <a class="dropdown-item" href="YearlyInvoices.aspx">Yearly Invoices</a>
                </div>
            </li>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                    <i class="fas fa-envelope fa-fw"></i>
                    <span>Add New Program Content</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#" data-target="#AddProgram" data-toggle="modal">Add New Program Type</a>
                    <a class="dropdown-item" href="#" data-target="#AddOrganization" data-toggle="modal">Add New Organization</a>
                    <a class="dropdown-item" href="#" data-target="#AddAnimal" data-toggle="modal">Add New Animal</a>
                    <a class="dropdown-item" href="#" data-target="#AddEducator" data-toggle="modal">Add New Educator</a>
                </div>
            </li>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                    <i class="fas fa-envelope fa-fw"></i>
                    <span>Update Program Content</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#" data-target="#UpdateOrganization" data-toggle="modal">Update Organizations</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateAnimal" data-toggle="modal">Update Animals</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateEducator" data-toggle="modal">Update Educators</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="createUser.aspx">
                    <i class="fas fa-fw fa-door"></i>
                    <span>Create Outreach Coordinator Access</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Default.aspx">
                    <i class="fas fa-fw fa-door"></i>
                    <span>Logout</span></a>
            </li>

        </ul>

        <div id="content-wrapper">



            <div class="container-fluid ">








                <section class="login-block  col-lg-8 col-md-10 col-s-12 mx-auto ">


                    <div class="container1">
                        <div class="card  mx-auto mt-5">
                            <div class="card-header NewUserTitle text-center">Create Outreach Coordinator Access</div>
                            <div class="card-body">


                                <%-- this div  is the internal div--%>
                                <div class=" justify-content-center">
                                    <div style="padding-left:30%">
                                        <asp:Label ID="Label4" runat="server" Text="First Name" Width="200px"></asp:Label>

                                        <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name" required="required" Width="200px"></asp:TextBox>
                                        <br />

                                        <asp:Label ID="Label3" runat="server" Text="Last Name" Width="200px"></asp:Label>

                                        <asp:TextBox ID="txtLastName" placeholder="Last Name" required="required" runat="server" Width="200px"></asp:TextBox>
                                        <br />
                                        <asp:Label ID="Label2" runat="server" Text="Username" Width="200px"></asp:Label>

                                        <asp:TextBox ID="txtUsername" placeholder="Pick a username" required="required" runat="server" Width="200px"></asp:TextBox>
                                        <br />
                                        <asp:Label ID="Label1" runat="server" Text="Password" Width="200px"></asp:Label>
                                        

                                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" required="required" Width="200px"></asp:TextBox>
                                        <br />
                                        <asp:CheckBox ID="chkShowPassword" runat="server" Text="Show Password" AutoPostBack="True" OnCheckedChanged="chkShowPassword_CheckedChanged" />
                                        <br />
                                        <asp:Label ID="lblReminder" runat="server" Text="Password must include: 1 Number, 1 Special Character, 1 Capital letter, and at least 8 characters long."></asp:Label>
                                    </div>

                                </div>
                                  </div>
                                <div class="justify-content-center">
                                    <asp:Button ID="btnSubmit" class="btn btn-primary btn-login btn-block" href="ProgramForm.aspx" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                                    <asp:Label ID="lblStatus" runat="server"></asp:Label>
                                    <br />
                                </div>
                        </div>
                    </div>
            </div>
            </section>         




            <!-- Bootstrap core JavaScript-->
            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Core plugin JavaScript-->
            <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Page level plugin JavaScript-->
            <script src="vendor/chart.js/Chart.min.js"></script>


            <!-- Custom scripts for all pages-->
            <script src="js/sb-admin.min.js"></script>




        </div>

    </div>
    </div>
</asp:Content>

