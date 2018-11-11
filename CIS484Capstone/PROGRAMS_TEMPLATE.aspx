<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PROGRAMS_TEMPLATE.aspx.cs" Inherits="Programs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <%-- Needed - Coverage Check CVC 11/5/18 --%>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/sunny/jquery-ui.css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script type="text/javascript">
        $(function () {
            var icons = {
                header: "ui-icon-circle-arrow-e",
                activeHeader: "ui-icon-circle-arrow-s"
            };
            $("#accordion").accordion({
                icons: icons
            });
            $("#toggle").button().click(function () {
                if ($("#accordion").accordion("option", "icons")) {
                    $("#accordion").accordion("option", "icons", null);
                } else {
                    $("#accordion").accordion("option", "icons", icons);
                }
            });
        });
    </script>


    <%-- Needed Coverage Check 11/5/18 CVC --%>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $("body").on("click", "[src*=plus]", function () {
            $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>");
            $(this).attr("src", "images/minus.png");
        });
        $("body").on("click", "[src*=minus]", function () {
            $(this).attr("src", "images/plus.png");
            $(this).closest("tr").next().remove();
        });
    </script>

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
                    <span>Edit Program Content</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#" data-target="#UpdateOrganization" data-toggle="modal">Edit Organizations</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateAnimal" data-toggle="modal">Edit Animals</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateEducator" data-toggle="modal">Edit Educators</a>
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
                            <div class="card-header NewUserTitle text-center">Programs</div>
                            <div class="card-body">

                                <div class="mx-auto d-flex justify-content-center">

                                    <div class="btn btn-primary btn-inside" data-target="#AddAnimalModal" data-toggle="modal">Add Program</div>
                                    <div class="btn btn-primary btn-inside" data-target="#UpdateAnimalModal" data-toggle="modal">Edit Program</div>

                                </div>

                                <%-- this div  is the internal div--%>
                                <div class="block3">
                                    <ul class="nav nav-tabs block4" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active TabStyle" data-toggle="tab" href="#AllTab" style="color: black;">All Programs</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link TabStyle" data-toggle="tab" href="#LiveTab" style="color: black;">Live Programs</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link TabStyle" data-toggle="tab" href="#OnlineTab" style="color: black;">Online Programs</a>
                                    </ul>

                                    <div class="tab-content">
                                        <div id="AllTab" class="container1 block3 tab-pane  WildTable active table-striped">
                                            <div class="InternalTab">
                                                <p>Hello</p>
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                            </div>
                                        </div>

                                        <%-- For the Live Programs--%>
                                        <div id="LiveTab" class="tab-pane fade in active">
                                            <%--VERSION 1 Live--%>
                                            <div class="block justify-content-center ">
                                                <asp:Repeater ID="rptProgramHLLive" runat="server" OnItemDataBound="OnItemDataBoundLive">
                                                    <HeaderTemplate>
                                                        <table class="Grid table table-borderless  table-striped table-condensed WideTable " border="1" table-layout: fixed>
                                                            <tr >
                                                                <th  scope="col">&nbsp
                                                                </th>

                                                                <th scope="col">Program Date
                                                                </th>
                                                                <th scope="col">Program Type
                                                                </th>
                                                                <th scope="col">Organization
                                                                </th>

                                                            </tr>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td>

                                                                <img alt="" style="cursor: pointer; padding-left: -50%;" src="images/plus.png" />
                                                                <asp:Panel ID="pnlProgramLive" runat="server" Style="display: none">
                                                                    <asp:Repeater ID="rptProgramLLLive" runat="server">

                                                                        <HeaderTemplate>

                                                                            <table class="ChildGrid table table-condensed WideTable  col-md-12" border="0" table-layout: fixed>

                                                                                 <tr class="row">
                                                                                    <th  class="col-md-4"scope="col" <%--style="width: 250px"--%>>Status
                                                                                    </th>
                                                                                    <th  class="col-md-4"scope="col" <%--style="width: 250px"--%>>Number of Children
                                                                                    </th>
                                                                                    <th  class="col-md-4"scope="col" <%--style="width: 250px"--%>>Number of Adults
                                                                                    </th>

                                                                                </tr>
                                                                        </HeaderTemplate>
                                                                        <ItemTemplate>
                                                                             <tr class="row">
                                                                            <td class="col-md-4">
                                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Status") %>' />
                                                                            </td>
                                                                            <td class="col-md-4">
                                                                                <asp:Label ID="lblNumOfChildren" runat="server" Text='<%# Eval("NumberOfChildren") %>' />
                                                                            </td>
                                                                            <td class="col-md-4">
                                                                                <asp:Label ID="lblNumOfAdults" runat="server" Text='<%# Eval("NumberOfAdults") %>' />
                                                                            </td>

                                                                            </tr>
                                                                        </ItemTemplate>



                                                                        <FooterTemplate>
                                                                            </table>
                                                                        </FooterTemplate>

                                                                    </asp:Repeater>
                                                                    <asp:Repeater ID="rptProgramLL2Live" runat="server">

                                                                        <HeaderTemplate>

                                                                            <table class="ChildGrid table table-condensed WideTable" border="0" table-layout: fixed>

                                                                                <tr class="row">

                                                                                    <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>Street Addess
                                                                                    </th>
                                                                                    <th  class="col-md-4"scope="col" <%--style="width: 250px"--%>>City County
                                                                                    </th>
                                                                                    <th  class="col-md-4"scope="col" <%--style="width: 250px"--%>>State
                                                                                    </th>

                                                                                </tr>
                                                                        </HeaderTemplate>
                                                                        <ItemTemplate>
                                                                             <tr class="row">
                                                                            <td class="col-md-4">
                                                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProgramAddress") %>' />
                                                                            </td>
                                                                            <td class="col-md-4">
                                                                                <asp:Label ID="lblCity" runat="server" Text='<%# Eval("City") %>' />
                                                                            </td>
                                                                            <td class="col-md-4">
                                                                                <asp:Label ID="lblState" runat="server" Text='<%# Eval("State") %>' />
                                                                            </td>

                                                                            </tr>
                                                                        </ItemTemplate>



                                                                        <FooterTemplate>
                                                                            </table>
                                                                        </FooterTemplate>

                                                                    </asp:Repeater>
                                                                    <asp:Repeater ID="rptProgramLL3Live" runat="server">

                                                                        <HeaderTemplate>

                                                                            <table class="ChildGrid table table-condensed WideTable" border="0" table-layout: fixed>

                                                                                <tr class="row">
                                                                                    <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>On/Off Site
                                                                                    </th>
                                                                                    <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>Payment Satus
                                                                                    </th>
                                                                                    <th  class="col-md-4"scope="col" <%--style="width: 250px"--%>>Comments
                                                                                    </th>

                                                                                </tr>
                                                                        </HeaderTemplate>
                                                                        <ItemTemplate>
                                                                            <tr class="row">
                                                                            <td class="col-md-4">
                                                                                <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("OnOff") %>' />
                                                                            </td>
                                                                            <td class="col-md-4">
                                                                                <asp:Label ID="lblCity" runat="server" Text='<%# Eval("PaymentNeeded") %>' />
                                                                            </td>
                                                                            <td class="col-md-4">
                                                                                <asp:Label ID="lblState" runat="server" Text='<%# Eval("Comments") %>' />
                                                                            </td>


                                                                            </tr>
                                                                        </ItemTemplate>



                                                                        <FooterTemplate>
                                                                            </table>
                                                                        </FooterTemplate>

                                                                    </asp:Repeater>
                                                                </asp:Panel>
                                                                <asp:HiddenField ID="hfProgramIDLive" runat="server" Value='<%# Eval("ProgramID") %>' />
                                                                <td>
                                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProgramDate") %>' />

                                                                </td>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblProgramDate" runat="server" Text='<%# Eval("ProgramType") %>' />

                                                            </td>
                                                            </td> 
                                                <td>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Organization") %>' />

                                                </td>
                                                            <td></td>


                                                        </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                            </div>
                                        </div>



                                        <div id="OnlineTab" class="tab-pane fade in active">
                                            <%--VERSION 1 Online--%>
                                            <div class="block justify-content-center col-md-18">
                                                <asp:Repeater ID="rptProgramHLOnline" runat="server" OnItemDataBound="OnItemDataBoundOnline">
                                                    <HeaderTemplate>
                                                        <table class="Grid table table-borderless table-hover table-condensed WideTable table" border="1" table-layout: fixed>
                                                            <tr>
                                                                <th scope="col"></th>

                                                                <th scope="col">Program Date</th>

                                                                <th scope="col">Program Type</th>
                                                            </tr>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td>

                                                                <img alt="" style="cursor: pointer; padding-left: -50%;" src="images/plus.png" />
                                                                <asp:Panel ID="pnlProgramOnline" runat="server" Style="display: none">
                                                                    <asp:Repeater ID="rptProgramLLOnline" runat="server">

                                                                        <HeaderTemplate>

                                                                            <table class="ChildGrid table table-condensed WideTable " border="0" table-layout: fixed>

                                                                                <tr>

                                                                                    <th scope="col" >Number of Children
                                                                                    </th>
                                                                                    <th scope="col" >Number of Adults
                                                                                    </th>
                                                                                    <th scope="col" >Educator Name
                                                                                    </th>
                                                                                </tr>
                                                                        </HeaderTemplate>
                                                                        <ItemTemplate>
                                                                            <td>
                                                                                <asp:Label ID="lblNumOfChildren" runat="server" Text='<%# Eval("NumberOfKids") %>' />
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="lblNumOfAdults" runat="server" Text='<%# Eval("NumberOfPeople") %>' />
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("TeacherName") %>' />
                                                                            </td>

                                                                            </tr>
                                                                        </ItemTemplate>



                                                                        <FooterTemplate>
                                                                            </table>
                                                                        </FooterTemplate>

                                                                    </asp:Repeater>
                                                                    <asp:Repeater ID="rptProgramLL2Online" runat="server">

                                                                        <HeaderTemplate>

                                                                            <table class="ChildGrid table table-condensed WideTable" border="0" table-layout: fixed>

                                                                                <tr>

                                                                                    <th scope="col" <%--style="width: 250px"--%>>City
                                                                                    </th>
                                                                                    <th scope="col" <%--style="width: 250px"--%>>State
                                                                                    </th>
                                                                                    <th scope="col" <%--style="width: 250px"--%>>Country
                                                                                    </th>
                                                                                </tr>
                                                                        </HeaderTemplate>
                                                                        <ItemTemplate>
                                                                            <td>
                                                                                <asp:Label ID="lblCity" runat="server" Text='<%# Eval("City") %>' />
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="lblState" runat="server" Text='<%# Eval("State") %>' />
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("Country") %>' />
                                                                            </td>

                                                                            </tr>
                                                                        </ItemTemplate>



                                                                        <FooterTemplate>
                                                                            </table>
                                                                        </FooterTemplate>

                                                                    </asp:Repeater>
                                                                    <asp:Repeater ID="rptProgramLL3Online" runat="server">

                                                                        <HeaderTemplate>

                                                                            <table class="ChildGrid table table-condensed WideTable" border="0" table-layout: fixed>

                                                                                <tr>
                                                                                    <th scope="col" <%--style="width: 250px"--%>>Contact Email
                                                                                    </th>
                                                                                    <th scope="col" <%--style="width: 250px"--%>>Comments
                                                                                    </th>

                                                                                </tr>
                                                                        </HeaderTemplate>
                                                                        <ItemTemplate>
                                                                          
                                                                            <td>
                                                                                <asp:Label ID="lblCity" runat="server" Text='<%# Eval("ContactEmail") %>' />
                                                                            </td>
                                                                            <td>
                                                                                <asp:Label ID="lblState" runat="server" Text='<%# Eval("Comments") %>' />
                                                                            </td>


                                                                            </tr>
                                                                        </ItemTemplate>



                                                                        <FooterTemplate>
                                                                            </table>
                                                                        </FooterTemplate>

                                                                    </asp:Repeater>
                                                                </asp:Panel>
                                                                <asp:HiddenField ID="hfProgramIDOnline" runat="server" Value='<%# Eval("OnlineProgramID") %>' />
                                                                <td>
                                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProgramDate") %>' />
                                                                    <%--to be program date--%>
                                                                </td>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblProgramDate" runat="server" Text='<%# Eval("ProgramType") %>' />
                                                                <%--to be program date--%>
                                                            </td>
                                                            <td></td>

                                                        </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                            </div>
                                        </div>



                                    </div>


                                </div>
                            </div>



                        </div>
                    </div>

                    <div runat="server" id="Div1">
                    </div>
            </div>

            <div class="text-center">
                <%--<a class="d-block small mt-3" href="Default.aspx">Login Page</a>--%>
                <%--<a class="d-block small" href="forgot-password.html">Forgot Password?</a>--%>
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


</asp:Content>

