<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Organizations.aspx.cs" Inherits="Organizations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">





    <%--                <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>

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




    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand " style="color: #FFBC7C; font-weight: 400; font-size: 150%;" href="Programs.aspx">Wildlife Center of Virginia</a>

        <div class="collapse navbar-collapse " id="navbarTogglerDemo03">
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
                <li class="nav-item dropdown no-arrow  ">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">



                        <span>Animals</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="AnimalPage.aspx">View Animals</a>
                        <a class="dropdown-item" href="#" data-target="#AddAnimal" data-toggle="modal">Add New Animal</a>
                        <a class="dropdown-item" href="#" data-target="#UpdateAnimal" data-toggle="modal">Edit Animals</a>
                    </div>
                </li>
                <%-- UGH BY GUNTER 11.26.18 
           <%--  <li class="nav-item ">
                    <a class="nav-link" href="Report.aspx">

                        <span>Reports</span></a>
                </li> --%>

                <li class="nav-item ">
                    <a class="nav-link" href="Report.aspx">

                        <span>Reports</span>
                    </a>

                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="Tableau.aspx">

                        <span>Visualization</span></a>
                </li>
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                        <span>Payment</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="Payment.aspx">New Payment Form</a>
                        <a class="dropdown-item" href="Invoices.aspx">Invoices</a>

                    </div>
                </li>

                <li class="nav-item dropdown no-arrow active">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                        <span>Organizations</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="Organizations.aspx">View Organizations</a>
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
                <li class="nav-item dropdown no-arrow ">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                        <span>Volunteers</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="Volunteers.aspx">View Volunteers</a>
                        <a class="dropdown-item" href="#" data-target="#AddVolunteer" data-toggle="modal">Add New Volunteer</a>
                        <a class="dropdown-item" href="#" data-target="#UpdateVolunteer" data-toggle="modal">Edit Volunteers</a>
                    </div>
                </li>
                <li class="nav-item " style="display: inline-block; white-space: nowrap;">
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

                    <span>Reports</span>
                </a>

            </li>

            <%--<li class="nav-item dropdown no-arrow ">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

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
            </li>--%>

            <li class="nav-item ">
                <a class="nav-link" href="Tableau.aspx">

                    <span>Visualization</span></a>
            </li>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Payment</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Payment.aspx">New Payment Form</a>
                    <a class="dropdown-item" href="Invoices.aspx">Invoices</a>

                </div>
            </li>

            <li class="nav-item dropdown no-arrow active">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Organizations</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Organizations.aspx">View Organizations</a>
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
            <li class="nav-item dropdown no-arrow ">
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
            <div class="container-fluid ">


                <section class="login-block  col-xl-10 col-lg-10 col-md-12 col-s-12 mx-auto ">
                    <%--<section class="card card-register mx-auto mt-5">--%>
                    <div class="container1">
                        <div class="card  mx-auto mt-3">
                            <div class="card-header NewUserTitle text-center">
                                Organization Listing
                            </div>
                            <div class="card-body">
                                <div class="mx-auto d-flex justify-content-center">
                                    <div class="btn btn-primary btn-inside" data-target="#AddOrganization" data-toggle="modal">Add Organization</div>
                                    <div class="btn btn-primary btn-inside" data-target="#UpdateOrganization" data-toggle="modal">Edit Organization</div>
                                    <div class="btn btn-primary btn-inside" data-target="#AddContact" data-toggle="modal">Add Contact</div>
                                </div>
                            </div>









                            <div class="col-lg-12 col-md-12 col-s-12 mx-auto">
                                <div class="container1 block">


                                    <%--start--%>
                                    <div class="modal fade" id="AddContact" tabindex="-1" role="dialog">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content mt-5">
                                                <div class="modal-header">
                                                    <h5 class="modal-title text-center" style="font-size: 145% !important; color: #e2561d !important;">Add Contact</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <div runat="server" id="OrgAddDiv">
                                                        <p>&nbsp;</p>
                                                        <div class="row">
                                                            <div class=" text-right col-md-4 InternalOrganizationForm">
                                                                <h6>Organization</h6>
                                                            </div>
                                                            <div class=" col-md-3 InternalOrgnaizationForm">
                                                                <asp:DropDownList ID="ddlOrg" class="btn btn-secondary btn-sm dropdown-toggle" Style="background-color: #FFFfff !important; color: #732700 !important; border-color: grey;" runat="server">
                                                                    <asp:ListItem Text="--Select Organization--" Value=""></asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>

                                                            <div class="row">
                                                                <div class="d-none d-md-block text-right col-md-4 InternalOrganizationForm">
                                                                    <h6>Contact First Name</h6>
                                                                </div>
                                                                <div class=" d-md-none text-left col-md-4 InternalOrganizationForm">
                                                                    <h6>Contact First Name</h6>
                                                                </div>
                                                                <div class=" col-md-3 InternalOrgnaizationForm">
                                                                    <asp:TextBox ID="txtContactFirstName" runat="server"></asp:TextBox>&nbsp;&nbsp;
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="d-none d-md-block text-right col-md-4 InternalOrganizationForm">
                                                                    <h6>Contact Last Name</h6>
                                                                </div>
                                                                <div class=" d-md-none text-left col-md-4 InternalOrganizationForm">
                                                                    <h6>Contact Last Name</h6>
                                                                </div>
                                                                <div class=" col-md-3 InternalOrgnaizationForm">
                                                                    <asp:TextBox ID="txtContactLastName" runat="server"></asp:TextBox>&nbsp;&nbsp;
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="d-none d-md-block text-right col-md-4 InternalOrganizationForm">
                                                                    <h6>Contact Email</h6>
                                                                </div>
                                                                <div class=" d-md-none text-left col-md-4 InternalOrganizationForm">
                                                                    <h6>Contact Email</h6>
                                                                </div>
                                                                <div class=" col-md-3 InternalOrgnaizationForm">
                                                                    <asp:TextBox ID="txtContactEmail" runat="server"></asp:TextBox>&nbsp;&nbsp;
                                                                </div>
                                                            </div>


                                                            <div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                        <asp:Button ID="btnAddContact" class="btn btn-primary btn-inside" runat="server" Text="Add" OnClick="btnAddContact_Click" />
                                                        <%-- <button type="button" class="btn btn-primary btn-inside">Save changes</button>--%>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <%-- this div  is the internal div--%>




                                    <div class="col-lg-12 col-md-12 col-s-12 mx-auto">
                                        <div class="container1 block">


                                            <%--</div>--%>

                                            <script>
                                                $(function () {
                                                    $('a[data-toggle="tab"]').on('click', function (e) {
                                                        window.localStorage.setItem('activeTab', $(e.target).attr('href'));
                                                    });
                                                    var activeTab = window.localStorage.getItem('activeTab');
                                                    if (activeTab) {
                                                        $('#myTab a[href="' + activeTab + '"]').tab('show');
                                                        window.localStorage.removeItem("activeTab");
                                                    }
                                                });       </script>

                                            <%-- this div  is the internal div--%>




                                            <ul class="nav nav-tabs block4" id="myTab" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link active TabStyle" id="AllTabNav" data-toggle="tab" href="#OrganizationsAllTab" style="color: black;">
                                                        <p class="d-none d-lg-block">All Organizations</p>
                                                        <p class="d-lg-none">All </p>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link TabStyle" id="LiveTabNav" data-toggle="tab" href="#ContactsTab" style="color: black;">
                                                        <p class="d-none d-lg-block">Organization Contacts</p>
                                                        <p class="d-lg-none">Active </p>
                                                    </a>
                                                </li>

                                            </ul>


                                            <div class="tab-content">
                                                <div id="OrganizationsAllTab" class="tab-pane show active">
                                                    <div class="InternalOrganizationsTab">

                                                        <div class="row">
                                                            <%-- for Org listing--%>
                                                            <div class=" mx-auto d-flex justify-content-center col-xl-4 col-lg-6 col-md-6 col-sm-12 col-xs-12 InternalAnimalForm">
                                                                <asp:DropDownList ID="ddlOrderBy" runat="server" class="btn btn-secondary btn-sm dropdown-toggle" Style="background-color: #FFFfff !important; color: #732700 !important; border-color: grey;" AppendDataBoundItems="false" AutoPostBack="true" DataValueField="" OnSelectedIndexChanged="ddlOrderBy_SelectedIndexChanged">
                                                                    <asp:ListItem>--Order By--</asp:ListItem>
                                                                    <%--<asp:ListItem>Program Date</asp:ListItem>--%>
                                                                    <asp:ListItem>Organization Name A-Z</asp:ListItem>
                                                                    <asp:ListItem>City A-Z</asp:ListItem>
                                                                    <asp:ListItem>County A-Z</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                            <div class=" mx-auto d-flex justify-content-center col-xl-4 col-lg-6 col-md-5 col-sm-12 col-xs-12 InternalAnimalForm">
                                                                <div class="form-check-inline">
                                                                    <asp:TextBox class="InternalAnimalForm form-control" Style="margin-bottom: 5px; margin-right: 5px;" ID="txtSearch" runat="server"></asp:TextBox>
                                                                    <asp:Button ID="btnSearch" runat="server" class="btn" Style="margin-bottom: 5px; margin-right: 5px;" Text="Search" OnClick="btnSearch_Click" />
                                                                    <asp:Button ID="btnAllClear" runat="server" class="btn " Style="margin-bottom: 5px; margin-right: 5px;" Text="Clear Filters" OnClick="btnAllClear_Click" />
                                                                    &nbsp;&nbsp;&nbsp;
                                                                </div>
                                                            </div>
                                                        </div>


                                                        <div runat="server" id="OrganizationSearchDiv">
                                                            <div runat="server" id="ViewOrganizations">
                                                            </div>

                                                            <div class="block3">
                                                                <div class="tab-content">
                                                                    <div class="">
                                                                        <div class="col-md-12 ">
                                                                            <br />
                                                                            <div class=" text-center">
                                                                                <h6 class="ReportTitle">Search Results</h6>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row table-responsive mx-auto d-flex  justify-content-center">
                                                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                                                                            <asp:GridView ID="gridSearch" class="table table-bordered table-condensed table-hover" HeaderStyle-BackColor="#FFBC7C"
                                                                                HeaderStyle-ForeColor="#732700" runat="server" AutoGenerateColumns="False">
                                                                                <Columns>
                                                                                    <asp:BoundField DataField="OrgName" HeaderText="Organization Name" SortExpression="OrgName" />
                                                                                    <asp:BoundField DataField="StreetAddress" HeaderText="Street Address" SortExpression="StreetAddress" />
                                                                                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                                                                    <asp:BoundField DataField="County" HeaderText="County" SortExpression="County" />
                                                                                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                                                                                    <asp:BoundField DataField="PostalCode" HeaderText="Postal Code" SortExpression="PostalCode" />
                                                                                </Columns>
                                                                            </asp:GridView>
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>


                                                        <div class="grid-volunteers text-center">
                                                            <div class="row table-responsive mx-auto d-flex  justify-content-center">
                                                                <div class="col-xl-12 col-lg-10 col-md-12 col-sm-12 col-xs-12 ">
                                                                    <asp:GridView ID="GridView1" HeaderStyle-BackColor="#FFBC7C" HeaderStyle-ForeColor="#732700" class="table table-bordered table-condensed table-hover" runat="server" AutoGenerateColumns="False">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="OrgName" HeaderText="Organization Name" SortExpression="OrgName"></asp:BoundField>
                                                                            <asp:BoundField DataField="StreetAddress" HeaderText="Street Address" SortExpression="StreetAddress"></asp:BoundField>
                                                                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City"></asp:BoundField>
                                                                            <asp:BoundField DataField="County" HeaderText="County" SortExpression="County"></asp:BoundField>
                                                                            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State"></asp:BoundField>
                                                                            <asp:BoundField DataField="PostalCode" HeaderText="Postal Code" SortExpression="PostalCode"></asp:BoundField>

                                                                        </Columns>

                                                                    </asp:GridView>
                                                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"
                                                                        SelectCommand="SELECT [OrgName], [StreetAddress], [City], [County], [State], [PostalCode] FROM [Organization] ORDER BY [OrgName]"></asp:SqlDataSource>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>



                                                <div id="ContactsTab" class="tab-pane show ">
                                                    <div class="InternalAnimalTab">
                                                        <div class="row">
                                                            <%--for contact listing--%>
                                                            <div class=" mx-auto d-flex justify-content-center col-xl-4 col-lg-6 col-md-6 col-sm-12 col-xs-12 InternalAnimalForm">
                                                                <asp:DropDownList ID="ddlContactOrderBy" runat="server" class="btn btn-secondary btn-sm dropdown-toggle" Style="background-color: #FFFfff !important; color: #732700 !important; border-color: grey;" AppendDataBoundItems="false" AutoPostBack="true" DataValueField="" OnSelectedIndexChanged="ddlContactOrderBy_SelectedIndexChanged">
                                                                    <asp:ListItem>--Order By--</asp:ListItem>
                                                                    <%--<asp:ListItem>Program Date</asp:ListItem>--%>
                                                                    <asp:ListItem>Organization Name A-Z</asp:ListItem>
                                                                    <asp:ListItem>Contact First Name A-Z</asp:ListItem>
                                                                    <asp:ListItem>Contact Last Name A-Z</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>
                                                            <div class=" mx-auto d-flex justify-content-center col-xl-4 col-lg-6 col-md-5 col-sm-12 col-xs-12 InternalAnimalForm">
                                                                <div class="form-check-inline">
                                                                    <asp:TextBox class="InternalAnimalForm form-control" ID="txtContactSearch" Style="margin-bottom: 5px; margin-right: 5px;" runat="server"></asp:TextBox>
                                                                    <asp:Button ID="btnContactSearch" runat="server" class="btn" Style="margin-bottom: 5px; margin-right: 5px;" Text="Search" OnClick="btnContactSearch_Click" />
                                                                    <asp:Button ID="btnContactClear" runat="server" class="btn " Style="margin-bottom: 5px; margin-right: 5px;" Text="Clear Filters" OnClick="btnContactClear_Click" />
                                                                    &nbsp;&nbsp;&nbsp;
                                                                </div>
                                                            </div>
                                                        </div>


                                                        <div runat="server" id="ContactSearchDiv">
                                                            <div runat="server" id="Div5">
                                                            </div>
                                                            <div class="block3">
                                                                <div class="tab-content">
                                                                    <div class="">
                                                                        <div class="col-md-12 ">
                                                                            <br />
                                                                            <div class=" text-center">
                                                                                <h6 class="ReportTitle">Search Results</h6>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row table-responsive mx-auto d-flex  justify-content-center">
                                                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                                                                            <asp:GridView ID="ContactSearchGrid" class="table table-bordered table-condensed table-hover" HeaderStyle-BackColor="#FFBC7C"
                                                                                HeaderStyle-ForeColor="#732700" runat="server" AutoGenerateColumns="False">
                                                                                <Columns>
                                                                                    <asp:BoundField DataField="OrgName" HeaderText="Organization Name" SortExpression="OrgName" />
                                                                                    <asp:BoundField DataField="ContactFirstName" HeaderText="Contact First Name" SortExpression="ContactFirstName" />
                                                                                    <asp:BoundField DataField="ContactLastName" HeaderText="Contact Last Name" SortExpression="ContactLastName" />
                                                                                    <asp:BoundField DataField="ContactEmail" HeaderText="Contact Email" SortExpression="ContactEmail" />
                                                                                    <asp:BoundField DataField="PrimaryContact" HeaderText="Primary Contact" SortExpression="PrimaryContact" />
                                                                                </Columns>
                                                                            </asp:GridView>
                                                                            <br />
                                                                            <br />
                                                                            <br />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>


                                                        <div class="grid-volunteers text-center">
                                                            <div class="row table-responsive mx-auto d-flex  justify-content-center">
                                                                <div class="col-xl-12 col-lg-10 col-md-12 col-sm-12 col-xs-12 ">
                                                                    <asp:GridView ID="GridView3" HeaderStyle-BackColor="#FFBC7C" HeaderStyle-ForeColor="#732700" class="table table-bordered table-condensed table-hover" runat="server" AutoGenerateColumns="False">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="OrgName" HeaderText="Organization Name" SortExpression="OrgName"></asp:BoundField>
                                                                            <asp:BoundField DataField="ContactFirstName" HeaderText="Contact First Name" SortExpression="ContactFirstName"></asp:BoundField>
                                                                            <asp:BoundField DataField="ContactLastName" HeaderText="Contact Last Name" SortExpression="ContactLastName"></asp:BoundField>
                                                                            <asp:BoundField DataField="ContactEmail" HeaderText="Contact Email" SortExpression="ContactEmail"></asp:BoundField>
                                                                            <asp:BoundField DataField="PrimaryContact" HeaderText="Primary Contact" SortExpression="PrimaryContact"></asp:BoundField>


                                                                        </Columns>

                                                                    </asp:GridView>
                                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"
                                                                        SelectCommand="SELECT o.[OrgName] as OrgName, c.[ContactFirstName] as ContactFirstName, c.[ContactLastName] as ContactLastName, c.[ContactEmail] as ContactEmail, c.[PrimaryContact] as PrimaryContact FROM [Organization] as o Right Join [ContactInformation] as c on o.OrgID = c.OrgID ORDER BY [OrgName]"></asp:SqlDataSource>
                                                                </div>
                                                            </div>
                                                        </div>









                                                    </div>
                                                </div>

                                            </div>
                                        </div>


                                    </div>
                                </div>
                </section>
            </div>
        </div>








    </div>

</asp:Content>




























