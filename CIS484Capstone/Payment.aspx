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

        <a class="navbar-brand mr-1 logo" href="Default.html">WildTek</a>

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
            <li class="nav-item">
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
            <li class="nav-item dropdown no-arrow active">
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
            <div class="container-fluid block text-center">
                <div class="container1">
                    <div class="card card-register mx-auto mt-5">
                        <div class="card-header NewPaymentTitle">Add New Payment</div>
                        <div class="card-body">
                            <div class="form-group">
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <div class="form-label-group">
                                            <label for="Month" style="text-align: left;">MONTH:</label>
                                            <br />
                                            <asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged" style="text-align: left;">
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
                                    </div>
                                    <div class="col-md-6">

                                        <div class="form-label-group">

                                            <label for="Date" style="text-align: left;">DATE:</label>
                                            <br />
                                            <asp:DropDownList ID="ddlDate" runat="server" AutoPostBack="True" style="text-align: left;">

                                                <asp:ListItem Value="Day"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="form-label-group">

                                    <label for="Year">YEAR:</label>
                                    <br />
                                    <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged">
                                     <asp:ListItem Value="Year"></asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    
                                </div>
                            </div>
                            

                        <label for="Amount" style="float: left;">Amount:</label> <br /><br />
                        <asp:TextBox ID="txtAmount" runat="server" class="form-control" style="float: left;"></asp:TextBox><br /><br />
                        <label for="CheckNumber" style="float: left;">Check Number:</label><br /><br />
                        <asp:TextBox ID="txtCheckNum" runat="server" class="form-control" style="float: left;"></asp:TextBox><br /><br />
                        <label for="Other" style="float: left;">Or Payment Type:</label><br /><br />
                        <asp:TextBox ID="txtPaymentType" runat="server" class="form-control" style="float: left;"></asp:TextBox><br /><br />
                        <br />
                        <label for="org" style="float: left;">Organization:</label><br /><br />
                        <asp:TextBox ID="txtOrganization" runat="server" class="form-control" style="float: left;"></asp:TextBox><br /><br />
                        <label for="Invoice" style="float: left;">Invoice:</label><br /><br />
                        <asp:TextBox ID="txtInvoiceNum" runat="server" class="form-control" style="float: left;"></asp:TextBox><br /><br />
                        <label for="cancelled" style="float: left;">Cancelled Y/N</label>  
                        <asp:TextBox ID="txtCancelledChar" runat="server" MaxLength="1" Width="23px" style="float: left;"></asp:TextBox><br /><br />

                            
                            <br />
                            <asp:Label ID="lblStatus" runat="server"></asp:Label>
                            <br />

                            <div class="text-center">


                                <asp:Button ID="btnPopulate" runat="server" Text="Populate" OnClick="btnPopulate_Click" class="btn btn-primary  btn-login btn-block" />
                                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click1" class="btn btn-primary  btn-login btn-block" Text="Submit" />

                            </div>
                        </div>
                    </div>
                </div>





                <div class="row">
                    
                    <br />
                    <div class="form-group">
                        <%--<label for="Month">Month:</label>
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
    </asp:DropDownList>--%>
                        <%--<label for="Date">Date:</label>
    <asp:DropDownList ID="ddlDate" runat="server" AutoPostBack="True">
        <asp:ListItem Value="Day"></asp:ListItem>--%>
                        <%--</asp:DropDownList>--%>
                        <%--<label for="Year">Year:</label>
                        <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged">
                            <asp:ListItem Value="Year"></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />--%>
                        <%--<label for="Amount">Amount:</label>
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
                        <asp:TextBox ID="txtCancelledChar" runat="server" MaxLength="1" Width="23px"></asp:TextBox>--%>

                    </div>
                </div>


                <br />
                <br />
            </div>
            

        </div>

    </div>


</asp:Content>

