<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProgramTheme.aspx.cs" Inherits="AnimalMonthlyWildlifeReport" EnableEventValidation="false" %>

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
        <div class="collapse navbar-collapse active" id="navbarTogglerDemo03">
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
                <li class="nav-item dropdown no-arrow ">
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
            <li class="nav-item dropdown no-arrow active">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <%--<a class="nav-link" href="Programs.aspx">--%>

                    <span>Programs</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    
                    <a class="dropdown-item" href="Programs.aspx">View Programs</a>
                    <a class="dropdown-item" href="ProgramTheme.aspx">View Program Themes</a>
                    <%--<a class="dropdown-item" href="#" data-target="#AddProgram" data-toggle="modal">Add New Program Theme</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateProgram" data-toggle="modal">Edit Program Theme</a>--%>
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
            <li class="nav-item">
                <a class="nav-link" href="Report.aspx">

                    <span>Reports</span></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="Tableau.aspx">

                    <span>Visualization</span></a>
            </li>
            <li class="nav-item dropdown no-arrow ">
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

        <div id="content-wrapper" class="section">


            <section class="login-block  col-lg-8 col-md-10 col-s-12 mx-auto ">


                <div class="container1 supreme-container">
                    <div class="card  mx-auto mt-3">
                        <div class="card-header NewUserTitle text-center">Program Themes</div>
                        <div class="card-body">
                        </div>

                        <div class="mx-auto row d-flex justify-content-center">
                            <div class=" col-lg-6    col-md-6 col-xs-8 ">
                                <div class="btn   btn-inside btn-block" data-target="#AddProgram" data-toggle="modal">Add Program Theme</div>
                            </div>

                            <div class=" col-lg-6    col-md-6 col-xs-8  ">
                                <div class="btn   btn-inside btn-block" data-target="#UpdateProgram" data-toggle="modal">Edit Program Theme</div>&nbsp;&nbsp;
                            </div>
                            <div class="row mx-auto d-flex text cetner justify-content-center">
                            </div>
                            <%--                                <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT Distinct YEAR(ProgramDate) AS YEAR FROM Program Order By YEAR(ProgramDate)"></asp:SqlDataSource>--%>
                        </div>




                        <%-- this div  is the internal div--%>
                        <div class="block3">
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

                            <ul class="nav nav-tabs block4" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active d-sm-none TabStyle" id="LiveTabTheme1" data-toggle="tab" href="#LiveTabTheme" style="color: black;">Live</a>
                                    <a class="nav-link active d-none d-sm-block TabStyle" id="LiveTabTheme2" data-toggle="tab" href="#LiveTabTheme" style="color: black;">Live Program Themes</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link d-sm-none TabStyle" id="OnlineTab" data-toggle="tab" href="#OnlineTabTheme" style="color: black;">Online</a>
                                    <a class="nav-link d-none d-sm-block TabStyle" id="OnlineTab2" data-toggle="tab" href="#OnlineTabTheme" style="color: black;">Online Program Themes</a>
                                </li>

                            </ul>





                            <div class="tab-content">
                                <div id="LiveTabTheme" class="tab-pane show active">

                                    <div id="LiveTab" class="container1 block3   text-center WildTable">
                                        <div class="InternalAnimalTab">



                                            <br class="d-none d-sm-block" />
                                            <div class="row text-right">
                                                <div class="   col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 InternalAnimalForm">
                                                    <div class="form-check-inline">
                                                        <asp:TextBox class="InternalAnimalForm form-control" Style="margin-right: 5px;" ID="txtSearch" runat="server"></asp:TextBox>


                                                        <asp:Button ID="Button1" runat="server" class="btn" Text="Search" />
                                                        &nbsp;&nbsp;&nbsp;
                                                    </div>
                                                </div>


                                            </div>
                                            <br />
                                            <div class="grid-programtype text-center">
                                                <div class="row table-responsive mx-auto d-flex  justify-content-center">
                                                    <div class="col-xl-10 col-lg-10 col-md-12 col-sm-12 col-xs-12 ">
                                                        <%--<h4 class="alert " style="background-color: #AB9993 !important; color: white !important;"> Organizations</h4>--%>
                                                        <asp:GridView ID="GridView1" HeaderStyle-BackColor="#C7BFC4" ForeColor="Black" class="table table-striped table-bordered table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                                                            <Columns>
                                                                <asp:BoundField DataField="ProgramName" HeaderText="Program Name" SortExpression="ProgramName"></asp:BoundField>
                                                                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status"></asp:BoundField>
                                                            </Columns>
                                                        </asp:GridView>
                                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"
                                                            SelectCommand="SELECT [ProgramName], [Status] FROM [ProgramType] ORDER BY [ProgramName]"></asp:SqlDataSource>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <div id="OnlineTabTheme" class="tab-pane fade in">
                                    <div id="OnlineTab1" class="container1 block3   text-center WildTable">
                                        <div class="InternalAnimalTab">



                                            <br class="d-none d-sm-block" />
                                            <div class="row text-right">
                                                <div class="   col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 InternalAnimalForm">
                                                    <div class="form-check-inline">
                                                        <asp:TextBox class="InternalAnimalForm form-control" Style="margin-right: 5px;" ID="TextBox1" runat="server"></asp:TextBox>


                                                        <asp:Button ID="Button2" runat="server" class="btn" Text="Search" />
                                                        &nbsp;&nbsp;&nbsp;
                                                    </div>
                                                </div>


                                            </div>
                                            <br />
                                            <div class="grid-programtype text-center">
                                                <div class="row table-responsive mx-auto d-flex  justify-content-center">
                                                    <div class="col-xl-10 col-lg-10 col-md-12 col-sm-12 col-xs-12 ">
                                                        <%--<h4 class="alert " style="background-color: #AB9993 !important; color: white !important;"> Organizations</h4>--%>
                                                        <asp:GridView ID="GridView2" HeaderStyle-BackColor="#C7BFC4" ForeColor="Black" class="table  table-striped table-bordered table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                                            <Columns>
                                                                <asp:BoundField DataField="OnlineProgramTypeName" HeaderText="Online Program Name" SortExpression="OnlineProgramTypeName"></asp:BoundField>
                                                                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status"></asp:BoundField>
                                                            </Columns>
                                                        </asp:GridView>
                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"
                                                            SelectCommand="SELECT [OnlineProgramTypeName], [Status] FROM [OnlineProgramType] ORDER BY [OnlineProgramTypeName]"></asp:SqlDataSource>
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
            </section>
        </div>
    </div>
    </div>
    </div>
</asp:Content>


