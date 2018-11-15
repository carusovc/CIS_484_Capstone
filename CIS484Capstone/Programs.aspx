<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Programs.aspx.cs" Inherits="Programs" EnableEventValidation="false" %>

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

    <%-- Holding Tabs on Refresh --%>


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
        <a class="navbar-brand logo" href="Programs.aspx">Wildtek</a>

        <div class="collapse navbar-collapse " id="navbarTogglerDemo03">
            <ul class="navbar-nav ml-auto mt-2 mt-lg-0 d-md-none">
                <li class="nav-item dropdown no-arrow active">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                        <%--<a class="nav-link" href="Programs.aspx">--%>

                        <span>Programs</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="Programs.aspx">View Programs</a>
                        <a class="dropdown-item" href="#" data-target="#AddProgram" data-toggle="modal">Add New Program Type</a>
                    </div>
                </li>
                <%--      <li class="nav-item">
          <a class="nav-link" href="AnimalPage.aspx">
            <i class="fas fa-fw fa-book-open"></i>--%>
                <li class="nav-item dropdown no-arrow ">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                        <%--   Cs-Design View Version 
            <span>Animals</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="AnimalPage.aspx">View Animals</a>
                    <a class="dropdown-item" href="#" data-target="#AddAnimal" data-toggle="modal">Add New Animal</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateAnimal" data-toggle="modal">Update Animals</a>
                </div>
            </li>
            <li class="nav-item dropdown no-arrow ">
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
            </li>
            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

              
         

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand logo" href="Programs.aspx">Wildtek</a>

  <div class="collapse navbar-collapse "  id="navbarTogglerDemo03">
    <ul class="navbar-nav ml-auto mt-2 mt-lg-0 d-md-none">
      <li class="nav-item dropdown no-arrow active">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <%--<a class="nav-link" href="Programs.aspx">--%>

                        <span>Programs</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="Programs.aspx">View Programs</a>
                        <a class="dropdown-item" href="#" data-target="#AddProgram" data-toggle="modal">Add New Program Type</a>
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
                <li class="nav-item dropdown no-arrow ">
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
                </li>
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

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
                        <a class="dropdown-item" href="#" data-target="#AddEducator" data-toggle="modal">Add New Educator</a>
                        <a class="dropdown-item" href="#" data-target="#UpdateEducator" data-toggle="modal">Edit Educators</a>
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
                    <a class="dropdown-item" href="#" data-target="#AddProgram" data-toggle="modal">Add New Program Type</a>
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
            <li class="nav-item dropdown no-arrow ">
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
            </li>
            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

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
                    <a class="dropdown-item" href="#" data-target="#AddEducator" data-toggle="modal">Add New Educator</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateEducator" data-toggle="modal">Edit Educators</a>
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








                <section class="login-block  col-lg-10 col-md-10 col-s-12 mx-auto ">


                    <div class="container1">
                        <div class="card  mx-auto mt-3">
                            <div class="card-header NewUserTitle text-center">Programs</div>
                            <div class="card-body">
                                <div class="mx-auto">
                                    <div class="row mx-auto d-flex text cetner justify-content-center">

                                        <div class=" col-lg-3    col-md-4 col-sm-6 ">
                                            <div class="btn  btn-primary btn-inside btn-block" data-target="#addProgramModal" data-toggle="modal">Add Program Form</div>
                                        </div>

                                        <div class=" col-lg-3    col-md-4 col-sm-6  ">
                                            <div class="btn btn-primary  btn-inside btn-block" data-target="#UpdateLiveProgram" data-toggle="modal">Edit Live</div>
                                        </div>

                                        <div class=" col-lg-3   col-md-4  col-sm-6  ">
                                            <div class="btn btn-primary  btn-inside btn-block" data-target="#UpdateOnlineProgram" data-toggle="modal">Edit Online</div>



                                            <asp:DropDownList ID="ddlOrderBy" runat="server" class="btn btn-secondary btn-sm dropdown-toggle" Style="background-color: #FFFAFA !important; color: #732700 !important;" AppendDataBoundItems="false" AutoPostBack="true" DataValueField="" OnSelectedIndexChanged="ddlOrderBy_SelectedIndexChanged">
                                                <asp:ListItem>--Order By--</asp:ListItem>
                                                <asp:ListItem>Program Date</asp:ListItem>
                                                <asp:ListItem>Program Type A-Z</asp:ListItem>
                                            </asp:DropDownList>&nbsp&nbsp
                                    &nbsp;&nbsp;
                                        </div>
                                    </div>




                                    <%-- this div  is the internal div--%>
                                    <div class="block3">
                                        <ul class="nav nav-tabs block4" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active TabStyle" id="AllTabNav" data-toggle="tab" href="#AllTab" style="color: black;">All Programs</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link TabStyle" id="LiveTabNav" data-toggle="tab" href="#LiveTab" style="color: black;">Live Programs</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link TabStyle" id="OnlineTabNav" data-toggle="tab" href="#OnlineTab" style="color: black;">Online Programs</a>
                                            </li>
                                        </ul>

                                        <%-- Version 1 All --%>
                                        <div class="tab-content">
                                            <div id="AllTab" class="tab-pane show active">
                                                <div class="block justify-content-center table-responsive">

                                                    <asp:Repeater ID="rptProgramHLAll" runat="server" OnItemDataBound="OnItemDataBoundAll">
                                                        <HeaderTemplate>
                                                            <table class="Grid table  table-borderless  WideTable " border="1" table-layout: fixed>
                                                                <tr class="alert " style="background-color: #AB9993 !important; color: white !important;">
                                                                    <th scope="col"></th>
                                                                    <th scope="col"></th>
                                                                    <th style="font-weight: 600; font-size: 110%;" scope="col">Program Category
                                                                    </th>
                                                                    <th style="font-weight: 600; font-size: 110%;" scope="col">Program Date
                                                                    </th>
                                                                    <th style="font-weight: 600; font-size: 110%;" scope="col">Program Type
                                                                    </th>

                                                                </tr>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <tr>

                                                                <asp:HiddenField ID="hfProgramIDAll" runat="server" Value='<%# Eval("AllProgramID") %>' />
                                                                <td>
                                                                    <img alt="" style="cursor: pointer;" src="#" />

                                                                </td>
                                                                <td>
                                                                    <img alt="" style="cursor: pointer;" src="#" />

                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProgramCategory") %>' />

                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblProgramDate" runat="server" Text='<%# Eval("ProgramDate") %>' />

                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblOrganization" runat="server" Text='<%# Eval("ProgramType") %>' />

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

                                            <%-- For the Live Programs--%>
                                            <div id="LiveTab" class="tab-pane fade in">
                                                <%--VERSION 1 Live--%>
                                                <div class="block justify-content-center table-responsive">
                                                    <asp:Repeater ID="rptProgramHLLive" runat="server" OnItemDataBound="OnItemDataBoundLive">
                                                        <HeaderTemplate>
                                                            <table class="Grid table  table-borderless  WideTable " border="1" table-layout: fixed>
                                                                <tr class="alert " style="background-color: #AB9993 !important; color: white !important;">
                                                                    <th scope="col">&nbsp
                                                                    </th>

                                                                    <th style="font-weight: 600; font-size: 110%;" scope="col">Program Date
                                                                    </th>
                                                                    <th style="font-weight: 600; font-size: 110%;" scope="col">Program Type
                                                                    </th>
                                                                    <th style="font-weight: 600; font-size: 110%;" scope="col">Organization
                                                                    </th>

                                                                </tr>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td>
                                                                    <img alt="" style="cursor: pointer; padding-left: -50%;" src="images/plus.png" />
                                                                    <asp:Panel ID="pnlProgramLive" runat="server" Style="display: none">
                                                                        <asp:Repeater ID="rptNewLiveProgramLL1" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table  table-borderless table-condensed WideTable  col-md-12" border="0" table-layout: fixed>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">
                                                                                    <td class="col-md-4"><strong>Status</strong>
                                                                                        <br />
                                                                                        <asp:Label ID="lblLiveStatus" runat="server" Text='<%# Eval("Status") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4"><strong>Payment Status </strong>
                                                                                        <br />
                                                                                        <asp:Label ID="lblNumOfChildren" runat="server" Text='<%# Eval("PaymentStatus") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4"><strong>Number of Adults</strong>
                                                                                        <br />
                                                                                        <asp:Label ID="lblOnOff" runat="server" Text='<%# Eval("OnOffSite") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                            </ItemTemplate>
                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>
                                                                        </asp:Repeater>
                                                                        <asp:Repeater ID="rptNewLiveProgramLL2" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table  table-borderless table-condensed WideTable  col-md-12" border="0" table-layout: fixed>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">
                                                                                    <td class="col-md-4"><strong>Program Month</strong>
                                                                                        <br />
                                                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("EventMonth") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4"><strong>Number of Children </strong>
                                                                                        <br />
                                                                                        <asp:Label ID="lblNumOfChildren" runat="server" Text='<%# Eval("NumberOfChildren") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4"><strong>Number of Adults</strong>
                                                                                        <br />
                                                                                        <asp:Label ID="lblNumOfAdults" runat="server" Text='<%# Eval("NumberOfAdults") %>' />
                                                                                    </td>

                                                                                </tr>
                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>
                                                                        <asp:Repeater ID="rptNewLiveProgramLL3" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table  table-borderless table-condensed WideTable" border="0" table-layout: fixed>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">

                                                                                    <td class="col-md-4"><strong>Street Addess</strong>
                                                                                        <br />
                                                                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProgramAddress") %>' />
                                                                                    </td>

                                                                                    <td class="col-md-4"><strong>City, County</strong>
                                                                                        <br />
                                                                                        <asp:Label ID="lblCity" runat="server" Text='<%# Eval("CityCounty") %>' />
                                                                                    </td>

                                                                                    <td class="col-md-4"><strong>State</strong>
                                                                                        <br />
                                                                                        <asp:Label ID="lblState" runat="server" Text='<%# Eval("State") %>' />
                                                                                    </td>

                                                                                </tr>

                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                               
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>


                                                                         <asp:Repeater ID="Repeater1" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table   table-borderless table-condensed WideTable" border="0" table-layout: fixed>
                                                                                     <tr class="row" ">

                                                                                    <td class="col-md-4" ">
                                                                                        <strong>Bird</strong>

                                                                                        
                                                                                    </td>

                                                                                    <td class="col-md-4" ">
                                                                                        <strong>Reptile</strong>

                                                                                       
                                                                                    </td>

                                                                                    <td class="col-md-4" ">
                                                                                        <strong>Mammal</strong>

                                                                                       
                                                                                    </td>

                                                                                </tr>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                               
                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>


                                                                        <asp:Repeater ID="rptNewLiveProgramLL4" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table   table-borderless table-condensed WideTable" border="0" table-layout: fixed>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row" style="padding-top: 0px; padding-bottom: 0px;">

                                                                                    <td class="col-md-4" style="padding-top: 0px; padding-bottom: 0px;">

                                                                                        <asp:Label ID="Label3" Style="padding-top: 0px; padding-bottom: 0px;" runat="server" Text='<%# Eval("ProgramID") %>' />
                                                                                    </td>

                                                                                    <td class="col-md-4" style="padding-top: 0px; padding-bottom: 0px;">

                                                                                        <asp:Label ID="lblAddBird" Style="padding-top: 0px; padding-bottom: 0px;" runat="server" Text='<%# Eval("AnimalName") %>' />
                                                                                    </td>

                                                                                    <td class="col-md-4" style="padding-top: 0px; padding-bottom: 0px;">

                                                                                        <%--<asp:Label ID="lblState" runat="server" Text='<%# Eval("Organization") %>' />--%>
                                                                                    </td>

                                                                                </tr>
                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>
                                                                        <asp:Repeater ID="rptNewLiveProgramLL5" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table  table-borderless table-condensed WideTable" border="0" table-layout: fixed>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">

                                                                                    <td class="col-md-4"><strong>Comments</strong>
                                                                                        <br />
                                                                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("ExtraComments") %>' />
                                                                                    </td>

                                                                                    <td class="col-md-4"><strong>Last Updated By</strong>
                                                                                        <br />
                                                                                        <asp:Label ID="lblCity" runat="server" Text='<%# Eval("LastUpdatedBy") %>' />
                                                                                    </td>

                                                                                    <td class="col-md-4"><strong>Last Updated</strong>
                                                                                        <br />
                                                                                        <asp:Label ID="lblState" runat="server" Text='<%# Eval("LastUpdated") %>' />
                                                                                    </td>

                                                                                </tr>

                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>


                                                                    </asp:Panel>
                                                                </td>
                                                                <asp:HiddenField ID="hfProgramIDLive" runat="server" Value='<%# Eval("ProgramID") %>' />
                                                                <td>
                                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProgramDate") %>' />

                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblProgramDate" runat="server" Text='<%# Eval("ProgramType") %>' />

                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblOrganization" runat="server" Text='<%# Eval("Organization") %>' />

                                                                </td>
                                                                <td></td>

                                                            </tr>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            </table>
                                                        </FooterTemplate>
                                                    </asp:Repeater>
                                                    <div class="row">
                                                        <%--OnClick="btnExportLive_Click"--%>
                                                        <div class="mx-auto d-flex justify-content-center  col-lg-3    col-md-4 col-sm-6 ">
                                                            <asp:Button ID="btnExportLive" runat="server" Text="Export to Excel" OnClick="btnExportLive_Click" class="btn btn-primary btn-inside btn-block"></asp:Button>

                                                        </div>

                                                    </div>

                                                </div>
                                            </div>



                                            <div id="OnlineTab" class="tab-pane fade in ">
                                                <%--For the Online--%>
                                                <div class="block justify-content-center table-responsive">
                                                    <asp:Repeater ID="rptProgramHLOnline" runat="server" OnItemDataBound="OnItemDataBoundOnline">
                                                        <HeaderTemplate>
                                                            <table class="Grid table  table-borderless  WideTable " border="1" table-layout: fixed>
                                                                <tr class="alert " style="background-color: #AB9993 !important; color: white !important;">
                                                                    <th scope="col"></th>

                                                                    <th style="font-weight: 600; font-size: 110%;" scope="col">Program Date</th>

                                                                    <th style="font-weight: 600; font-size: 110%;" scope="col">Program Type</th>
                                                                </tr>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td>

                                                                    <img alt="" style="cursor: pointer; padding-left: -50%;" src="images/plus.png" />
                                                                    <asp:Panel ID="pnlProgramOnline" runat="server" Style="display: none">
                                                                        <asp:Repeater ID="rptProgramLLOnline" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table  table-condensed WideTable " border="0" table-layout: fixed>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">
                                                                                    <td class="col-md-4"><strong>Number of Children</strong>
                                                                                        <br />
                                                                                        <asp:Label ID="lblNumOfChildren" runat="server" Text='<%# Eval("NumberOfKids") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4"><strong>Number of Adults</strong>
                                                                                        <br />
                                                                                        <asp:Label ID="lblNumOfAdults" runat="server" Text='<%# Eval("NumberOfPeople") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4"><strong>Educator Name</strong>
                                                                                        <br />
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

                                                                                <table class="ChildGrid table  table-condensed WideTable" border="0" table-layout: fixed>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">
                                                                                    <td class="col-md-4"><strong>City</strong>
                                                                                        <br />
                                                                                        <asp:Label ID="lblCity" runat="server" Text='<%# Eval("City") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4"><strong>State</strong>
                                                                                        <br />
                                                                                        <asp:Label ID="lblState" runat="server" Text='<%# Eval("State") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4"><strong>Country</strong>
                                                                                        <br />
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
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">
                                                                                    <td class="col-md-4"><strong>Contact Email</strong>
                                                                                        <br />
                                                                                        <asp:Label ID="lblCity" runat="server" Text='<%# Eval("ContactEmail") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-8"><strong>Comments</strong>
                                                                                        <br />
                                                                                        <asp:Label ID="lblState" runat="server" Text='<%# Eval("Comments") %>' />
                                                                                    </td>


                                                                                </tr>
                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>
                                                                    </asp:Panel>
                                                                </td>
                                                                <asp:HiddenField ID="hfProgramIDOnline" runat="server" Value='<%# Eval("OnlineProgramID") %>' />
                                                                <td>
                                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProgramDate") %>' />
                                                                    <%--to be program date--%>
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
                                                    <%--OnClick="btnExportOnline_Click"--%>
                                                    <div class="row">
                                                        <div class="mx-auto d-flex justify-content-center  col-lg-3    col-md-4 col-sm-6 ">
                                                            <asp:Button ID="btnExportOnline" runat="server" Text="Export to Excel" OnClick="btnExportOnline_Click" class="btn btn-primary btn-inside btn-block"></asp:Button>

                                                        </div>
                                                    </div>

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
                    </div>
            </div>
        </div>




        </section> 
    </div>

    <div class="modal" id="UpdateLiveProgram" tabindex="-1" role="dialog">
        <div class="modal-dialog  modal-full " role="document">
            <div class="modal-content ">
                <div class="modal-header">
                    <h5 class="modal-title text-center" style="font-size: 145% !important; color: #e2561d !important;">Edit Live Program</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddlOrganization" EventName="SelectedIndexChanged" />
                    </Triggers>
                    <ContentTemplate>
                        <div class="modal-body">

                            <div class="row">
                                <div class="col-md-12 col-lg-6 
           col-sm-12">
                                    <p>
                                        Select Program:
                                        <br />
                                        <asp:DropDownList ID="ddlProgramID" runat="server" AppendDataBoundItems="false" AutoPostBack="true" DataTextField="ProgramID" DataValueField="ProgramID" OnSelectedIndexChanged="ddlProgramID_SelectedIndexChanged1">

                                            <asp:ListItem Text="--Select Live Program--" Value="0" />
                                        </asp:DropDownList>
                                </div>
                                <div class="col-md-12 col-lg-6 

           col-sm-12">
                                    <p>
                                        Program Type:<br />
                                        &nbsp;<asp:DropDownList ID="ddlProgramType" runat="server">
                                            <asp:ListItem Text="--Live Program--" Value="0" />
                                        </asp:DropDownList>
                                </div>



                            </div>
                            <div class="row">
                                <div class="col-md-12 col-lg-6 
           col-sm-12">
                                    Organization:
                                    <br />
                                    <asp:DropDownList ID="ddlOrganization" runat="server">
                                        <asp:ListItem Text="--Organization--" Value="0" />

                                    </asp:DropDownList>

                                </div>
                                <br />
                                <div class="col-md-12 col-lg-6 
           col-sm-12">
                                    Status:
                                    <br />
                                    &nbsp;<asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>


                                </div>

                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Program Address:
                                    <br />
                                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>

                                </div>
                                <br />
                                <div class="col-md-12 col-lg-4
           col-sm-12">
                                    City:
                                    <br />
                                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>


                                </div>

                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    County:
                                    <br />
                                    <asp:TextBox ID="txtCounty" runat="server"></asp:TextBox>


                                </div>
                                <br />
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    State:
                                    <br />
                                    <asp:TextBox ID="txtState" runat="server"></asp:TextBox>

                                </div>
                                <br />
                                <div class="col-md-12 col-lg-4
           col-sm-12">
                                    Number of Children:
                                    <br />
                                    <asp:TextBox ID="txtNumOfChildren" runat="server"></asp:TextBox>


                                </div>

                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Number of Adults:
                                    <br />
                                    <asp:TextBox ID="txtNumOfAdults" runat="server"></asp:TextBox>


                                </div>

                            </div>

                            <br />
                            <div class="row">
                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Program Date:
                                    <br />
                                    <asp:TextBox ID="txtProgramDate" runat="server"></asp:TextBox>

                                </div>

                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Program Time:
                                    <br />
                                    <asp:TextBox ID="txtProgramTime" runat="server"></asp:TextBox>



                                </div>
                                <br />
                                <div class="col-md-12 col-lg-4
           col-sm-12">
                                </div>



                            </div>


                            <br />
                            <div class="row">
                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    On/Off Site:
                                    <br />
                                    <asp:RadioButtonList ID="rboOnOff" runat="server">
                                        <asp:ListItem Value="0">Yes</asp:ListItem>
                                        <asp:ListItem Value="1">No</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>


                                <br />
                                <div class="col-md-12 col-lg-4
           col-sm-12">
                                    Payment Needed?
                                    <br />
                                    <asp:RadioButtonList ID="rboPayment" runat="server">
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:RadioButtonList>

                                </div>

                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Educators:
                                    <br />
                                    <asp:ListBox ID="drpEducators" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Educators--" Value="0" />
                                    </asp:ListBox>




                                </div>

                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Birds:
                                    <br />
                                    <asp:ListBox ID="ddlBirds" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Birds--" Value="0" />
                                    </asp:ListBox>
                                </div>


                                <br />
                                <div class="col-md-12 col-lg-4
           col-sm-12">
                                    Reptiles:
                                    <br />
                                    <asp:ListBox ID="ddlReptiles" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Reptiles--" Value="0" />
                                    </asp:ListBox>

                                </div>

                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Mammals:
                                    <br />
                                    <asp:ListBox ID="lstMammals" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Mammals--" Value="0" />
                                    </asp:ListBox>


                                </div>

                            </div>

                            <br />
                            <div class="row">
                                <div class="col-md-12 col-lg-3 
           col-sm-12">
                                    Grades:
                                    <br />
                                    <asp:ListBox ID="AddGrade" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Grades--" Value="0" />
                                    </asp:ListBox>
                                </div>


                                <br />
                                <div class="col-md-12 col-lg-9
           col-sm-12">
                                    Comments:
                                    <br />
                                    <asp:TextBox ID="txtComments" runat="server"></asp:TextBox>

                                </div>



                            </div>




                            <asp:Label ID="lblLastUpdated" runat="server" Text=""></asp:Label>
                            &nbsp;<asp:Label ID="lblLastUpdatedBy" runat="server" Text=""></asp:Label>

                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <div class="modal-footer">





                    <button type="button" id="btnDelete" runat="server" class="btn  btn-inside" data-dismiss="modal" text="Delete" onclick="btnDelete_Click">Delete</button>


                    <%-- <button type="button" id="btnUpdate" class="btn  btn-inside" runat="server" text="Update" onclick="btnUpdate_Click">Update</button>--%>
                    <%--                    <button type="button" id="btnDelete" runat="server" class="btn  btn-inside" text="Delete" onclick="btnDelete_Click">Delete</button>--%>
                    <asp:Button ID="Button1" runat="server" class="btn  btn-inside" Text="Save Changes" OnClick="btnUpdate_Click" />

                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>


    <div class="modal" id="UpdateOnlineProgram" tabindex="-1" role="dialog">


        <div class="modal-dialog  modal-full " role="document">
            <div class="modal-content ">
                <div class="modal-header">
                    <h5 class="modal-title text-center" style="font-size: 145% !important; color: #e2561d !important;">Edit Online Program </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddlOrganization" EventName="SelectedIndexChanged" />
                    </Triggers>
                    <ContentTemplate>
                        <div class="modal-body">

                            <div class="row">
                                <div class="col-md-12 col-lg-6 
           col-sm-12">
                                    <p>
                                        Select Online Program:
                                        <br />
                                        <asp:DropDownList ID="ddlOnlineProgramID" runat="server" AppendDataBoundItems="false" AutoPostBack="true" DataTextField="OnlineProgramID" DataValueField="OnlineProgramID" OnSelectedIndexChanged="ddlOnlineProgramID_SelectedIndexChanged1">
                                            <asp:ListItem Text="--Select Online Program--" Value="0" />
                                        </asp:DropDownList>
                                </div>
                                <div class="col-md-12 col-lg-6 

           col-sm-12">
                                    <p>
                                        Online Program Type:<br />
                                        &nbsp;<asp:DropDownList ID="ddlOnlineProgramType" runat="server">
                                            <asp:ListItem Text="--Program Type--" Value="0" />

                                        </asp:DropDownList>
                                </div>



                            </div>


                            <br />
                            <div class="row">
                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    City:
                                    <br />
                                    <asp:TextBox ID="txtOCity" runat="server"></asp:TextBox>

                                </div>
                                <br />
                                <div class="col-md-12 col-lg-4
           col-sm-12">
                                    State If Applicable:
                                    <br />
                                    <asp:TextBox ID="txtOState" runat="server"></asp:TextBox>



                                </div>

                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Country:
                                    <br />
                                    <asp:TextBox ID="txtOCountry" runat="server"></asp:TextBox>



                                </div>
                                <br />
                            </div>

                            <div class="row">
                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Teacher:
                                    <br />
                                    <asp:DropDownList ID="ddlOTeacher" runat="server">
                                    </asp:DropDownList>

                                </div>
                                <br />
                                <div class="col-md-12 col-lg-4
           col-sm-12">
                                    Number of Children:
                                    <br />
                                    <asp:TextBox ID="txtNumOfOnlineKids" runat="server"></asp:TextBox>



                                </div>

                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Number of Adults:
                                    <br />
                                    <asp:TextBox ID="txtNumOfOnlineAdults" runat="server"></asp:TextBox>


                                </div>

                            </div>

                            <br />

                            <div class="row">
                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Program Date:
                                    <br />
                                    <asp:TextBox ID="txtOnlineProgramDate" runat="server"></asp:TextBox>

                                </div>

                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Contact Email:
                                    <br />
                                    <asp:TextBox ID="txtOEmail" runat="server"></asp:TextBox>



                                </div>
                                <br />
                                <div class="col-md-12 col-lg-4
           col-sm-12">
                                </div>



                            </div>
                            <br />
                            <div class="row">

                                <div class="col-md-12 col-lg-4
           col-sm-12">
                                    Grades:
                                    <br />
                                    <asp:ListBox ID="lstOGrades" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Grades--" Value="0" />
                                    </asp:ListBox>

                                </div>

                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Educators:
                                    <br />
                                    <asp:ListBox ID="lstOEducators" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Educators--" Value="0" />
                                    </asp:ListBox>


                                </div>

                            </div>
                            <br />


                            <div class="row">
                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Birds:
                                    <br />
                                    <asp:ListBox ID="lstOBirds" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Birds--" Value="0" />
                                    </asp:ListBox>
                                </div>


                                <br />
                                <div class="col-md-12 col-lg-4
           col-sm-12">
                                    Reptiles:
                                    <br />
                                    <asp:ListBox ID="lstOReptiles" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Reptiles--" Value="0" />
                                    </asp:ListBox>

                                </div>

                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Mammals:
                                    <br />
                                    <asp:ListBox ID="lstOMammals" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Mammals--" Value="0" />
                                    </asp:ListBox>


                                </div>

                            </div>

                            <br />

                            <div class="row">

                                <div class="col-md-12 col-lg-9
           col-sm-12">
                                    Comments:
                                    <br />
                                    <asp:TextBox ID="txtOComments" runat="server"></asp:TextBox>

                                </div>



                            </div>




                            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                            &nbsp;<asp:Label ID="Label5" runat="server" Text=""></asp:Label>

                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <div class="modal-footer">

                    <%--  <button type="button" id="btnUpdate2" class="btn  btn-inside" runat="server" text="Update" onclick="btnOnlineUpdate_Click">Update</button>
                    <button type="button" id="btnDelete2" runat="server" class="btn  btn-inside" text="Delete" onclick="btnOnlineDelete_Click">Delete</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>


                    <button type="button" id="Button2" runat="server" class="btn  btn-inside" data-dismiss="modal" text="Delete" onclick="btnOnlineDelete_Click">Delete</button>
                    <asp:Button ID="Button3" runat="server" class="btn  btn-inside" Text="Save Changes" OnClick="btnOnlineUpdate_Click" />
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>

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














    <%--<div class="modal" id="UpdateOnlineProgram" tabindex="-1" role="dialog">

        <div class="modal-dialog  modal-full " role="document">
            <div class="modal-content ">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Online Program </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddlOrganization" EventName="SelectedIndexChanged" />
                    </Triggers>
                    <ContentTemplate>
                        <div class="modal-body">

                            <div class="row">
                                <div class="col-md-12 col-lg-6 
           col-sm-12">
                                    Online Program ID:
                                    <br />
                                    <asp:DropDownList ID="ddlOnlineProgramID" runat="server" AppendDataBoundItems="false" AutoPostBack="true" DataTextField="OnlineProgramID" DataValueField="OnlineProgramID" OnSelectedIndexChanged="ddlOnlineProgramID_SelectedIndexChanged1">
                                        <asp:ListItem Text="--Select Online Program ID--" Value="0" />
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-12 col-lg-6 
           col-sm-12">
                                    <p>
                                        Program Date:
                                        <br />
                                        <asp:TextBox ID="txtProgramDate2" runat="server"></asp:TextBox>
                                </div>



                            </div>
                            <div class="row">
                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Online Program Type:
                                    <br />
                                    <asp:DropDownList ID="ddlProgramType2" runat="server">
                                    </asp:DropDownList>
                                </div>
                                <br />
                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Number of Kids:
                                    <br />
                                    <asp:TextBox ID="txtNumOfKids" runat="server"></asp:TextBox>


                                </div>

                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Number of Adults:
                                    <br />
                                    <asp:TextBox ID="txtNumOfAdults2" runat="server"></asp:TextBox>


                                </div>

                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    City:
                                    <br />
                                    <asp:TextBox ID="txtCity2" runat="server"></asp:TextBox>

                                </div>
                                <br />
                                <div class="col-md-12 col-lg-4
           col-sm-12">
                                    State:
                                    <br />
                                    <asp:DropDownList ID="ddlState2" runat="server" class="form-control" placeholder="Add State/Province">
                                        <asp:ListItem>State</asp:ListItem>
                                        <asp:ListItem Value="Non-USA Territory"></asp:ListItem>
                                        <asp:ListItem Value="AL"></asp:ListItem>
                                        <asp:ListItem Value="AK"></asp:ListItem>
                                        <asp:ListItem Value="AZ"></asp:ListItem>
                                        <asp:ListItem Value="AR"></asp:ListItem>
                                        <asp:ListItem Value="CA"></asp:ListItem>
                                        <asp:ListItem Value="CO"></asp:ListItem>
                                        <asp:ListItem Value="CT"></asp:ListItem>
                                        <asp:ListItem Value="DE"></asp:ListItem>
                                        <asp:ListItem Value="FL"></asp:ListItem>
                                        <asp:ListItem Value="GA"></asp:ListItem>
                                        <asp:ListItem Value="HI"></asp:ListItem>
                                        <asp:ListItem Value="ID"></asp:ListItem>
                                        <asp:ListItem Value="IL"></asp:ListItem>
                                        <asp:ListItem Value="IN"></asp:ListItem>
                                        <asp:ListItem Value="IA"></asp:ListItem>
                                        <asp:ListItem Value="KS"></asp:ListItem>
                                        <asp:ListItem Value="KY"></asp:ListItem>
                                        <asp:ListItem Value="LA"></asp:ListItem>
                                        <asp:ListItem Value="ME"></asp:ListItem>
                                        <asp:ListItem Value="MD"></asp:ListItem>
                                        <asp:ListItem Value="MA"></asp:ListItem>
                                        <asp:ListItem Value="MI"></asp:ListItem>
                                        <asp:ListItem Value="MN"></asp:ListItem>
                                        <asp:ListItem Value="MS"></asp:ListItem>
                                        <asp:ListItem Value="MO"></asp:ListItem>
                                        <asp:ListItem Value="MT"></asp:ListItem>
                                        <asp:ListItem Value="NE"></asp:ListItem>
                                        <asp:ListItem Value="NV"></asp:ListItem>
                                        <asp:ListItem Value="NH"></asp:ListItem>
                                        <asp:ListItem Value="NJ"></asp:ListItem>
                                        <asp:ListItem Value="NM"></asp:ListItem>
                                        <asp:ListItem Value="NY"></asp:ListItem>
                                        <asp:ListItem Value="NC"></asp:ListItem>
                                        <asp:ListItem Value="ND"></asp:ListItem>
                                        <asp:ListItem Value="OH"></asp:ListItem>
                                        <asp:ListItem Value="OK"></asp:ListItem>
                                        <asp:ListItem Value="OR"></asp:ListItem>
                                        <asp:ListItem Value="PA"></asp:ListItem>
                                        <asp:ListItem Value="RI"></asp:ListItem>
                                        <asp:ListItem Value="SC"></asp:ListItem>
                                        <asp:ListItem Value="SD"></asp:ListItem>
                                        <asp:ListItem Value="TN"></asp:ListItem>
                                        <asp:ListItem Value="TX"></asp:ListItem>
                                        <asp:ListItem Value="UT"></asp:ListItem>
                                        <asp:ListItem Value="VT"></asp:ListItem>
                                        <asp:ListItem Value="VA"></asp:ListItem>
                                        <asp:ListItem Value="WA"></asp:ListItem>
                                        <asp:ListItem Value="WV"></asp:ListItem>
                                        <asp:ListItem Value="WI"></asp:ListItem>
                                        <asp:ListItem Value="WY"></asp:ListItem>
                                    </asp:DropDownList>


                                </div>

                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Country:
                                    <br />
                                    <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>


                                </div>
                                <br />
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-md-12 col-lg-4  col-sm-12">
                                    Teacher:
                                    <br />
                                    <asp:DropDownList ID="ddlTeacher" runat="server">
                                    </asp:DropDownList>

                                </div>
                                <br />
                                <div class="col-md-12 col-lg-4  col-sm-12">
                                    Grades:
                                    <br />
                                    <asp:ListBox ID="AddGrade2" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Grades--" Value="0" />
                                    </asp:ListBox>


                                </div>

                                <div class="col-md-12 col-lg-4  col-sm-12">
                                    Educators:
                                    <asp:ListBox ID="drpEducators2" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Educators--" Value="0" />
                                    </asp:ListBox>



                                </div>

                            </div>

                            <br />

                            <div class="row">
                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Birds:
                                    <br />
                                    <asp:ListBox ID="ddlBirds2" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Birds--" Value="0" />
                                    </asp:ListBox>
                                </div>


                                <br />
                                <div class="col-md-12 col-lg-4
           col-sm-12">
                                    Reptiles:
                                    <br />
                                    <asp:ListBox ID="ddlReptiles2" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Reptiles--" Value="0" />
                                    </asp:ListBox>

                                </div>

                                <div class="col-md-12 col-lg-4 
           col-sm-12">
                                    Mammals:
                                    <br />
                                    <asp:ListBox ID="lstMammals2" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Mammals--" Value="0" />
                                    </asp:ListBox>


                                </div>

                            </div>



                            <br />
                            <div class="row">
                                <div class="col-md-12 col-lg-3 
           col-sm-12">
                                    Contact Email:
                                        <br />
                                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

                                </div>
                                <br />
                                <div class="col-md-12 col-lg-9
           col-sm-12">
                                    Comments:
                                            <br />
                                    <asp:TextBox ID="TextBoxComments" runat="server"></asp:TextBox>

                                </div>



                                <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                                &nbsp;<asp:Label ID="Label6" runat="server" Text=""></asp:Label>

                            </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <div class="modal-footer">

                    <button type="button" id="btnUpdate2" class="btn  btn-inside" runat="server" text="Edit" onclick="btnOnlineUpdate_Click">Save</button>
                    <button type="button" id="btnDelete2" runat="server" class="btn  btn-inside" text="Delete" onclick="btnDelete2_Click">Delete</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>--%>


    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>


    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>



    <%--Adding new program modal--%>
    <div id="addProgramModal" class="modal" tabindex="-1" role="dialog" tabindex="-1" aria-labelledby="myTitle" aria-hidden="true" style="z-index: 2000">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title text-center" style="font-size: 145% !important; color: #e2561d !important;" id="myTitle">Add Program</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>


                </div>
                <div class="modal-body">


                    <%-- Modal Step 1 - Selector--%>
                    <div id="SelectProgramType">
                        <span></span>
                        <h3>Enter your program basics</h3>

                        <div class="form-group">
                            <div class="form-group row">
                                <div class="col-3">
                                    <label id="lblProgramType" for="ProgramType">Type of Program:</label>
                                </div>
                                <div class="col-6">
                                    <select name="LiveOnline" id="LiveOnline" class="form-control">
                                        <option value=""></option>
                                        <option value="Live">Live Program</option>
                                        <option value="Online">Online Program</option>

                                    </select>
                                </div>
                            </div>
                            <p></p>
                            <div class="form-group row">
                                <div class="col-3">
                                    <label id="ProgramDateLabel" for="ProgramDate">Program Date:</label>
                                </div>
                                <div class="col-6">
                                    <input type="date" id="ProgramDate" class="form-control" runat="server" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-3">
                                    <label id="ProgramTimeLabel" for="ProgramTime">Program Time:</label>
                                </div>
                                <div class="col-6">
                                    <input type="time" id="ProgramTime" class="form-control" runat="server" />
                                </div>
                            </div>

                            <input type="button" class="btn" id="btnEndSelectProgramType" value="Next" />

                        </div>
                    </div>


                    <%-- Modal Step 1.1 - Live Modal Form--%>
                    <div id="step11" class="hideMe">
                        <span></span>

                        <h4>Live Program Basics</h4>

                        <div class="form-group">

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="TypeLabel" for="Type">Program Type:</label>
                                </div>

                                <div class="col-7">
                                    <asp:DropDownList CssClass="form-control" ID="ddlProgram" runat="server" class="dropdown-menu radioButtonList">
                                        <asp:ListItem Text="--Select Program--" Value="0" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <p></p>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="OrganizationLabel" for="Organization">Organization:</label>
                                </div>
                                <div class="col-7">
                                    <asp:DropDownList CssClass="form-control" ID="dropDownOrganization" runat="server" class="dropdown-menu radioButtonList">
                                        <asp:ListItem Text="--Select Organization--" Value="0" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="EducatorLabelive" for="Educator">Educator:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox CssClass="form-control" ID="lstSelectEducatorsLive" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Educators--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="SelectBirdsLive" for="SelectBirdsLive">Select Birds:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox ID="lstSelectBirdsLive" CssClass="form-control" runat="server" SelectionMode="Multiple" class="dropdown-menu" Placeholder="Select Birds">
                                        <asp:ListItem Text="--Select Birds--" Value="0" />

                                    </asp:ListBox>
                                </div>
                            </div>




                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="SelectReptilesLive" for="SelectReptilesLive">Select Reptiles:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox CssClass="form-control" ID="lstSelectReptilesLive" runat="server" SelectionMode="Multiple" class="dropdown-menu">
                                        <asp:ListItem Text="--Select Reptiles--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="SelectMammalsLive" for="SelectMammalLive">Select Mammals:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox ID="lstSelectMammalsLive" CssClass="form-control" runat="server" SelectionMode="Multiple" class="dropdown-menu">
                                        <asp:ListItem Text="--Select Mammals--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="StatusLabel" for="Status">Program Status:</label>
                                </div>
                                <div class="col-7">
                                    <%--                                    <select name="Program Status" id="Status" class="form-control">
                                        <option value="">--Select Status--</option>
                                        <option value="Not Complete">Not Complete</option>
                                        <option value="Complete">Complete</option>

                                    </select>--%>
                                    <asp:DropDownList CssClass="form-control" ID="Status" runat="server" class="dropdown-menu radioButtonList">
                                        <asp:ListItem Text="--Select Status--" Value="0" />
                                        <asp:ListItem Text="Not Complete" Value="Not Complete" />
                                        <asp:ListItem Text="Completed" Value="Completed" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="PaymentLabel" for="Payment">Payment Status:</label>
                                </div>
                                <div class="col-7">
                                    <%--                                    <select name="Payment Status" id="Payment" class="form-control">
                                        <option value=""></option>
                                        <option value="T1">Payment Complete</option>
                                        <option value="T2">Payment Not Complete</option>

                                    </select>--%>
                                    <asp:DropDownList CssClass="form-control" ID="Payment" runat="server" class="dropdown-menu radioButtonList">
                                        <asp:ListItem Text="--Select Payment Status--" Value="0" />
                                        <asp:ListItem Text="Payment Complete" Value="Y" />
                                        <asp:ListItem Text="Payment Not Complete" Value="N" />
                                    </asp:DropDownList>
                                </div>
                            </div>



                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="lblOnOff" for="OnOff">Was the program on or off Wildlife Center Campus?</label>
                                </div>
                                <div class="col-7">
                                    <select name="OnOff" id="OnOff" onchange="scheduleA.call(this, event)" class="form-control" runat="server">

                                        <option value=""></option>
                                        <option value="1">On</option>
                                        <option value="0">Off</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="AddressLabel" for="Address">Program Address</label>
                                </div>
                                <div class="col-7">
                                    <input type="text" id="Address" class="form-control" runat="server" />
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="CityCountyLabel" for="CityCounty">City County</label>
                                </div>
                                <div class="col-7">
                                    <input type="text" id="CityCounty" class="form-control" runat="server" />
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="StateLabel" for="State">State</label>
                                </div>
                                <div class="col-7">
                                    <asp:DropDownList ID="statesDropDown" runat="server" class="form-control" placeholder="Add State/Province">
                                        <asp:ListItem Value="Non-USA Territory"></asp:ListItem>
                                        <asp:ListItem Value="AL"></asp:ListItem>
                                        <asp:ListItem Value="AK"></asp:ListItem>
                                        <asp:ListItem Value="AZ"></asp:ListItem>
                                        <asp:ListItem Value="AR"></asp:ListItem>
                                        <asp:ListItem Value="CA"></asp:ListItem>
                                        <asp:ListItem Value="CO"></asp:ListItem>
                                        <asp:ListItem Value="CT"></asp:ListItem>
                                        <asp:ListItem Value="DE"></asp:ListItem>
                                        <asp:ListItem Value="FL"></asp:ListItem>
                                        <asp:ListItem Value="GA"></asp:ListItem>
                                        <asp:ListItem Value="HI"></asp:ListItem>
                                        <asp:ListItem Value="ID"></asp:ListItem>
                                        <asp:ListItem Value="IL"></asp:ListItem>
                                        <asp:ListItem Value="IN"></asp:ListItem>
                                        <asp:ListItem Value="IA"></asp:ListItem>
                                        <asp:ListItem Value="KS"></asp:ListItem>
                                        <asp:ListItem Value="KY"></asp:ListItem>
                                        <asp:ListItem Value="LA"></asp:ListItem>
                                        <asp:ListItem Value="ME"></asp:ListItem>
                                        <asp:ListItem Value="MD"></asp:ListItem>
                                        <asp:ListItem Value="MA"></asp:ListItem>
                                        <asp:ListItem Value="MI"></asp:ListItem>
                                        <asp:ListItem Value="MN"></asp:ListItem>
                                        <asp:ListItem Value="MS"></asp:ListItem>
                                        <asp:ListItem Value="MO"></asp:ListItem>
                                        <asp:ListItem Value="MT"></asp:ListItem>
                                        <asp:ListItem Value="NE"></asp:ListItem>
                                        <asp:ListItem Value="NV"></asp:ListItem>
                                        <asp:ListItem Value="NH"></asp:ListItem>
                                        <asp:ListItem Value="NJ"></asp:ListItem>
                                        <asp:ListItem Value="NM"></asp:ListItem>
                                        <asp:ListItem Value="NY"></asp:ListItem>
                                        <asp:ListItem Value="NC"></asp:ListItem>
                                        <asp:ListItem Value="ND"></asp:ListItem>
                                        <asp:ListItem Value="OH"></asp:ListItem>
                                        <asp:ListItem Value="OK"></asp:ListItem>
                                        <asp:ListItem Value="OR"></asp:ListItem>
                                        <asp:ListItem Value="PA"></asp:ListItem>
                                        <asp:ListItem Value="RI"></asp:ListItem>
                                        <asp:ListItem Value="SC"></asp:ListItem>
                                        <asp:ListItem Value="SD"></asp:ListItem>
                                        <asp:ListItem Value="TN"></asp:ListItem>
                                        <asp:ListItem Value="TX"></asp:ListItem>
                                        <asp:ListItem Value="UT"></asp:ListItem>
                                        <asp:ListItem Value="VT"></asp:ListItem>
                                        <asp:ListItem Value="VA"></asp:ListItem>
                                        <asp:ListItem Value="WA"></asp:ListItem>
                                        <asp:ListItem Value="WV"></asp:ListItem>
                                        <asp:ListItem Value="WI"></asp:ListItem>
                                        <asp:ListItem Value="WY"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>


                            <p></p>
                            <label id="AddGradeLabel" for="AddGrade">Grades</label>
                            <asp:ListBox class="form-control" ID="lstGrades" runat="server" placeholder="Add Grade" SelectionMode="Multiple">
                                <asp:ListItem Text="--Select Grades--" Value="0" />
                            </asp:ListBox>
                            <p></p>
                            <label id="NumOfChildrenLabel" for="NumOfChildren">Number Of Children</label>
                            <input type="number" id="NumOfChildren" class="form-control" runat="server" />
                            <p></p>

                            <label id="NumOfAdultsLabel" for="NumOfAdults">Number Of Adults</label>
                            <input type="number" id="NumOfAdults" class="form-control" runat="server" />
                            <p></p>


                            <label id="CommentsLabel" for="Comments">Additional Comments</label>
                            <textarea name="Comments" id="Comments" rows="5" cols="100" class="form-control" runat="server"></textarea>

                            <p></p>
                            <input type="button" class="btn" id="btnBackLive" value="Back" />

                            <%--<input type="button" class="btn" id="btnEndstep14" value="Submit" OnClick="btnSubmitLive_Click"/>--%>
                            <asp:Button ID="btnsubmitLiveProgram" class="btn" runat="server" Text="Submit" OnClick="btnSubmitLive_Click" />

                        </div>

                    </div>


                    <%--Modal Step 2.1 - Online Modal Form --%>
                    <div id="step21" class="hideMe">
                        <span>Online Program Basics</span>
                        <p></p>
                        <div class="form-group">
                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="OnlineTypeLabel" for="Type">Online Program Type:</label>
                                </div>

                                <div class="col-7">
                                    <asp:DropDownList CssClass="form-control" ID="lstOnlineProgramType" runat="server" SelectionMode="Multiple" class="dropdown-menu">
                                        <asp:ListItem Text="--Select Program Type--" Value="0" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="EducatorLabel" for="Educator">Educator:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox CssClass="form-control" ID="lstOnlineEducators" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Educators--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="SelectBirdsOnline" for="SelectBirdsOnline">Select Birds:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox ID="lstBirdOnline" CssClass="form-control" runat="server" SelectionMode="Multiple" class="dropdown-menu" Placeholder="Select Birds">
                                        <asp:ListItem Text="--Select Birds--" Value="0" />

                                    </asp:ListBox>
                                </div>
                            </div>




                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="SelectReptilesOnline" for="SelectReptilesOnline">Select Reptiles:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox CssClass="form-control" ID="lstReptilesOnline" runat="server" SelectionMode="Multiple" class="dropdown-menu">
                                        <asp:ListItem Text="--Select Reptiles--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="SelectMammalsOnline" for="SelectMammalOnline">Select Mammals:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox ID="lstMammalsOnline" CssClass="form-control" runat="server" SelectionMode="Multiple" class="dropdown-menu">
                                        <asp:ListItem Text="--Select Mammals--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="TeacherLabel" for="ContactEmail">Teacher Name:</label>
                                </div>
                                <div class="col-7">
                                    <input type="text" id="AddOnlineTeacher" class="form-control" runat="server" />
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="ContactEmailLabel" for="ContactEmail">Contact Email:</label>
                                </div>
                                <div class="col-7">
                                    <input type="email" id="ContactEmail" class="form-control" runat="server" />
                                </div>
                            </div>




                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="OnlineCityCountyLabel" for="OnlineCityCounty">City or County</label>
                                </div>
                                <div class="col-7">
                                    <input type="text" id="OnlineCityCounty" class="form-control" runat="server" />
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="OnlineStateLabel" for="OnlineState">State</label>
                                </div>
                                <div class="col-7">

                                    <asp:DropDownList ID="OnlineState" runat="server" class="form-control" placeholder="Add State/Province">
                                        <asp:ListItem Value="Non-USA Territory"></asp:ListItem>
                                        <asp:ListItem Value="AL"></asp:ListItem>
                                        <asp:ListItem Value="AK"></asp:ListItem>
                                        <asp:ListItem Value="AZ"></asp:ListItem>
                                        <asp:ListItem Value="AR"></asp:ListItem>
                                        <asp:ListItem Value="CA"></asp:ListItem>
                                        <asp:ListItem Value="CO"></asp:ListItem>
                                        <asp:ListItem Value="CT"></asp:ListItem>
                                        <asp:ListItem Value="DE"></asp:ListItem>
                                        <asp:ListItem Value="FL"></asp:ListItem>
                                        <asp:ListItem Value="GA"></asp:ListItem>
                                        <asp:ListItem Value="HI"></asp:ListItem>
                                        <asp:ListItem Value="ID"></asp:ListItem>
                                        <asp:ListItem Value="IL"></asp:ListItem>
                                        <asp:ListItem Value="IN"></asp:ListItem>
                                        <asp:ListItem Value="IA"></asp:ListItem>
                                        <asp:ListItem Value="KS"></asp:ListItem>
                                        <asp:ListItem Value="KY"></asp:ListItem>
                                        <asp:ListItem Value="LA"></asp:ListItem>
                                        <asp:ListItem Value="ME"></asp:ListItem>
                                        <asp:ListItem Value="MD"></asp:ListItem>
                                        <asp:ListItem Value="MA"></asp:ListItem>
                                        <asp:ListItem Value="MI"></asp:ListItem>
                                        <asp:ListItem Value="MN"></asp:ListItem>
                                        <asp:ListItem Value="MS"></asp:ListItem>
                                        <asp:ListItem Value="MO"></asp:ListItem>
                                        <asp:ListItem Value="MT"></asp:ListItem>
                                        <asp:ListItem Value="NE"></asp:ListItem>
                                        <asp:ListItem Value="NV"></asp:ListItem>
                                        <asp:ListItem Value="NH"></asp:ListItem>
                                        <asp:ListItem Value="NJ"></asp:ListItem>
                                        <asp:ListItem Value="NM"></asp:ListItem>
                                        <asp:ListItem Value="NY"></asp:ListItem>
                                        <asp:ListItem Value="NC"></asp:ListItem>
                                        <asp:ListItem Value="ND"></asp:ListItem>
                                        <asp:ListItem Value="OH"></asp:ListItem>
                                        <asp:ListItem Value="OK"></asp:ListItem>
                                        <asp:ListItem Value="OR"></asp:ListItem>
                                        <asp:ListItem Value="PA"></asp:ListItem>
                                        <asp:ListItem Value="RI"></asp:ListItem>
                                        <asp:ListItem Value="SC"></asp:ListItem>
                                        <asp:ListItem Value="SD"></asp:ListItem>
                                        <asp:ListItem Value="TN"></asp:ListItem>
                                        <asp:ListItem Value="TX"></asp:ListItem>
                                        <asp:ListItem Value="UT"></asp:ListItem>
                                        <asp:ListItem Value="VT"></asp:ListItem>
                                        <asp:ListItem Value="VA"></asp:ListItem>
                                        <asp:ListItem Value="WA"></asp:ListItem>
                                        <asp:ListItem Value="WV"></asp:ListItem>
                                        <asp:ListItem Value="WI"></asp:ListItem>
                                        <asp:ListItem Value="WY"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="CountryLabel" for="Country">Country</label>
                                </div>
                                <div class="col-7">
                                    <asp:DropDownList ID="ddlCountry" runat="server" class="form-control" placeholder="Add Country">
                                        <asp:ListItem Value="--Select Country--"></asp:ListItem>
                                        <asp:ListItem Value="Afghanistan"></asp:ListItem>
                                        <asp:ListItem Value="Albania"></asp:ListItem>
                                        <asp:ListItem Value="Algeria"></asp:ListItem>
                                        <asp:ListItem Value="Andorra"></asp:ListItem>
                                        <asp:ListItem Value="Angola"></asp:ListItem>
                                        <asp:ListItem Value="Antigua and Barbuda"></asp:ListItem>
                                        <asp:ListItem Value="Argentina"></asp:ListItem>
                                        <asp:ListItem Value="Armenia"></asp:ListItem>
                                        <asp:ListItem Value="Australia"></asp:ListItem>
                                        <asp:ListItem Value="Austria"></asp:ListItem>
                                        <asp:ListItem Value="Azerbaijan"></asp:ListItem>
                                        <asp:ListItem Value="Bahamas"></asp:ListItem>
                                        <asp:ListItem Value="Bahrain"></asp:ListItem>
                                        <asp:ListItem Value="Bangladesh"></asp:ListItem>
                                        <asp:ListItem Value="Barbados"></asp:ListItem>
                                        <asp:ListItem Value="Belarus"></asp:ListItem>
                                        <asp:ListItem Value="Belgium"></asp:ListItem>
                                        <asp:ListItem Value="Belize"></asp:ListItem>
                                        <asp:ListItem Value="Benin"></asp:ListItem>
                                        <asp:ListItem Value="Bhutan"></asp:ListItem>
                                        <asp:ListItem Value="Bolivia"></asp:ListItem>
                                        <asp:ListItem Value="Bosnia and Herzegovina"></asp:ListItem>
                                        <asp:ListItem Value="Botswana"></asp:ListItem>
                                        <asp:ListItem Value="Brazil"></asp:ListItem>
                                        <asp:ListItem Value="Brunei"></asp:ListItem>
                                        <asp:ListItem Value="Bulgaria"></asp:ListItem>
                                        <asp:ListItem Value="Burkina Faso"></asp:ListItem>
                                        <asp:ListItem Value="Burundi"></asp:ListItem>
                                        <asp:ListItem Value="Côte d'Ivoire"></asp:ListItem>
                                        <asp:ListItem> Cabo Verde</asp:ListItem>
                                        <asp:ListItem Value="Cambodia"></asp:ListItem>
                                        <asp:ListItem Value="Cameroon"></asp:ListItem>
                                        <asp:ListItem Value="Canada"></asp:ListItem>
                                        <asp:ListItem Value="Central African Republic"></asp:ListItem>
                                        <asp:ListItem Value="Chad"></asp:ListItem>
                                        <asp:ListItem Value="Chile"></asp:ListItem>
                                        <asp:ListItem Value="China"></asp:ListItem>
                                        <asp:ListItem Value="Colombia"></asp:ListItem>
                                        <asp:ListItem Value="Comoros"></asp:ListItem>
                                        <asp:ListItem Value="Congo"></asp:ListItem>
                                        <asp:ListItem Value="Costa Rica"></asp:ListItem>
                                        <asp:ListItem Value="Croatia">Croatia</asp:ListItem>
                                        <asp:ListItem Value="Cuba"></asp:ListItem>
                                        <asp:ListItem Value="Cyprus"></asp:ListItem>
                                        <asp:ListItem Value="Czech Republic"></asp:ListItem>
                                        <asp:ListItem Value="Democratic Republic of the Congo"></asp:ListItem>
                                        <asp:ListItem Value="Denmark"></asp:ListItem>
                                        <asp:ListItem Value="Djibouti"></asp:ListItem>
                                        <asp:ListItem Value="Dominica"></asp:ListItem>
                                        <asp:ListItem Value="Dominican Republic"></asp:ListItem>
                                        <asp:ListItem Value="Ecuador"></asp:ListItem>
                                        <asp:ListItem Value="Egypt"></asp:ListItem>
                                        <asp:ListItem Value="El Salvador"></asp:ListItem>
                                        <asp:ListItem Value="Equatorial Guinea"></asp:ListItem>
                                        <asp:ListItem Value="Eritrea"></asp:ListItem>
                                        <asp:ListItem Value="Estonia"></asp:ListItem>
                                        <asp:ListItem Value="Ethiopia"></asp:ListItem>
                                        <asp:ListItem Value="Fiji"></asp:ListItem>
                                        <asp:ListItem Value="Finland"></asp:ListItem>
                                        <asp:ListItem Value="France"></asp:ListItem>
                                        <asp:ListItem Value="Gabon"></asp:ListItem>
                                        <asp:ListItem Value="Gambia"></asp:ListItem>
                                        <asp:ListItem Value="Georgia"></asp:ListItem>
                                        <asp:ListItem Value="Germany"></asp:ListItem>
                                        <asp:ListItem Value="Ghana"></asp:ListItem>
                                        <asp:ListItem Value="Greece"></asp:ListItem>
                                        <asp:ListItem Value="Grenada"></asp:ListItem>
                                        <asp:ListItem Value="Guatemala"></asp:ListItem>
                                        <asp:ListItem Value="Guinea"></asp:ListItem>
                                        <asp:ListItem Value="Guinea-Bissau"></asp:ListItem>
                                        <asp:ListItem Value="Guyana"></asp:ListItem>
                                        <asp:ListItem Value="Haiti"></asp:ListItem>
                                        <asp:ListItem Value="Holy See"></asp:ListItem>
                                        <asp:ListItem Value="Honduras"></asp:ListItem>
                                        <asp:ListItem Value="Hungary"></asp:ListItem>
                                        <asp:ListItem Value="Iceland"></asp:ListItem>
                                        <asp:ListItem Value="India"></asp:ListItem>
                                        <asp:ListItem Value="Indonesia"></asp:ListItem>
                                        <asp:ListItem Value="Iran"></asp:ListItem>
                                        <asp:ListItem Value="Iraq"></asp:ListItem>
                                        <asp:ListItem Value="Ireland"></asp:ListItem>
                                        <asp:ListItem Value="Israel"></asp:ListItem>
                                        <asp:ListItem Value="Italy"></asp:ListItem>
                                        <asp:ListItem Value="Jamaica"></asp:ListItem>
                                        <asp:ListItem Value="Japan"></asp:ListItem>
                                        <asp:ListItem Value="Jordan"></asp:ListItem>
                                        <asp:ListItem Value="Kazakhstan"></asp:ListItem>
                                        <asp:ListItem Value="Kenya"></asp:ListItem>
                                        <asp:ListItem Value="Kiribati"></asp:ListItem>
                                        <asp:ListItem Value="Kuwait"></asp:ListItem>
                                        <asp:ListItem Value="Kyrgyzstan"></asp:ListItem>
                                        <asp:ListItem Value="Laos"></asp:ListItem>
                                        <asp:ListItem Value="Latvia"></asp:ListItem>
                                        <asp:ListItem Value="Lebanon"></asp:ListItem>
                                        <asp:ListItem Value="Lesotho"></asp:ListItem>
                                        <asp:ListItem Value="Liberia"></asp:ListItem>
                                        <asp:ListItem Value="Libya"></asp:ListItem>
                                        <asp:ListItem Value="Liechtenstein"></asp:ListItem>
                                        <asp:ListItem Value="Lithuania"></asp:ListItem>
                                        <asp:ListItem Value="Luxembourg"></asp:ListItem>
                                        <asp:ListItem Value="Macedonia">Macedonia</asp:ListItem>
                                        <asp:ListItem Value="Madagascar"></asp:ListItem>
                                        <asp:ListItem Value="Malawi"></asp:ListItem>
                                        <asp:ListItem Value="Malaysia"></asp:ListItem>
                                        <asp:ListItem Value="Maldives"></asp:ListItem>
                                        <asp:ListItem Value="Mali"></asp:ListItem>
                                        <asp:ListItem Value="Malta"></asp:ListItem>
                                        <asp:ListItem Value="Marshall Islands"></asp:ListItem>
                                        <asp:ListItem Value="Mauritania"></asp:ListItem>
                                        <asp:ListItem Value="Mauritius"></asp:ListItem>
                                        <asp:ListItem Value="Mexico"></asp:ListItem>
                                        <asp:ListItem Value="Micronesia"></asp:ListItem>
                                        <asp:ListItem Value="Moldova"></asp:ListItem>
                                        <asp:ListItem Value="Monaco"></asp:ListItem>
                                        <asp:ListItem Value="Mongolia"></asp:ListItem>
                                        <asp:ListItem Value="Montenegro"></asp:ListItem>
                                        <asp:ListItem Value="Morocco"></asp:ListItem>
                                        <asp:ListItem Value="Mozambique"></asp:ListItem>
                                        <asp:ListItem Value="Myanmar (formerly Burma)"></asp:ListItem>
                                        <asp:ListItem Value="Namibia"></asp:ListItem>
                                        <asp:ListItem Value="Nauru"></asp:ListItem>
                                        <asp:ListItem Value="Nepal"></asp:ListItem>
                                        <asp:ListItem Value="Netherlands"></asp:ListItem>
                                        <asp:ListItem Value="New Zealand"></asp:ListItem>
                                        <asp:ListItem Value="Nicaragua"></asp:ListItem>
                                        <asp:ListItem Value="Nicaragua"></asp:ListItem>
                                        <asp:ListItem Value="Nigeria"></asp:ListItem>
                                        <asp:ListItem Value="North Korea"></asp:ListItem>
                                        <asp:ListItem Value="Norway"></asp:ListItem>
                                        <asp:ListItem Value="Oman"></asp:ListItem>
                                        <asp:ListItem Value="Pakistan"></asp:ListItem>
                                        <asp:ListItem Value="Palau"></asp:ListItem>
                                        <asp:ListItem Value="Palestine State"></asp:ListItem>
                                        <asp:ListItem Value="Panama"></asp:ListItem>
                                        <asp:ListItem Value="Papua New Guinea"></asp:ListItem>
                                        <asp:ListItem Value="Paraguay"></asp:ListItem>
                                        <asp:ListItem Value="Peru"></asp:ListItem>
                                        <asp:ListItem Value="Philippines"></asp:ListItem>
                                        <asp:ListItem Value="Poland"></asp:ListItem>
                                        <asp:ListItem Value="Portugal"></asp:ListItem>
                                        <asp:ListItem Value="Qatar"></asp:ListItem>
                                        <asp:ListItem Value="Romania"></asp:ListItem>
                                        <asp:ListItem Value="Russia"></asp:ListItem>
                                        <asp:ListItem Value="Rwanda"></asp:ListItem>
                                        <asp:ListItem Value="Saint Kitts and Nevis"></asp:ListItem>
                                        <asp:ListItem Value="Saint Lucia"></asp:ListItem>
                                        <asp:ListItem Value="Saint Vincent and the Grenadines"></asp:ListItem>
                                        <asp:ListItem Value="Samoa"></asp:ListItem>
                                        <asp:ListItem Value="San Marino"></asp:ListItem>
                                        <asp:ListItem Value="Sao Tome and Principe"></asp:ListItem>
                                        <asp:ListItem Value="Saudi Arabia"></asp:ListItem>
                                        <asp:ListItem Value="Senegal"></asp:ListItem>
                                        <asp:ListItem Value="Serbia"></asp:ListItem>
                                        <asp:ListItem Value="Seychelles"></asp:ListItem>
                                        <asp:ListItem Value="Sierra Leone"></asp:ListItem>
                                        <asp:ListItem Value="Singapore"></asp:ListItem>
                                        <asp:ListItem Value="Slovakia"></asp:ListItem>
                                        <asp:ListItem Value="Slovenia"></asp:ListItem>
                                        <asp:ListItem Value="Solomon Islands"></asp:ListItem>
                                        <asp:ListItem Value="Somalia	"></asp:ListItem>
                                        <asp:ListItem Value="South Africa"></asp:ListItem>
                                        <asp:ListItem Value="South Korea"></asp:ListItem>
                                        <asp:ListItem Value="South Sudan"></asp:ListItem>
                                        <asp:ListItem Value="Spain"></asp:ListItem>
                                        <asp:ListItem Value="Sri Lanka"></asp:ListItem>
                                        <asp:ListItem Value="Sudan"></asp:ListItem>
                                        <asp:ListItem Value="Suriname"></asp:ListItem>
                                        <asp:ListItem Value="Swaziland"></asp:ListItem>
                                        <asp:ListItem Value="Sweden"></asp:ListItem>
                                        <asp:ListItem Value="Switzerland"></asp:ListItem>
                                        <asp:ListItem Value="Syria"></asp:ListItem>
                                        <asp:ListItem Value="Tajikistan"></asp:ListItem>
                                        <asp:ListItem Value="Tanzania"></asp:ListItem>
                                        <asp:ListItem Value="Thailand"></asp:ListItem>
                                        <asp:ListItem Value="Timor-Leste"></asp:ListItem>
                                        <asp:ListItem Value="Togo"></asp:ListItem>
                                        <asp:ListItem Value="Tonga"></asp:ListItem>
                                        <asp:ListItem Value="Trinidad and Tobago"></asp:ListItem>
                                        <asp:ListItem Value="Tunisia"></asp:ListItem>
                                        <asp:ListItem Value="Turkey"></asp:ListItem>
                                        <asp:ListItem Value="Turkmenistan"></asp:ListItem>
                                        <asp:ListItem Value="Tuvalu"></asp:ListItem>
                                        <asp:ListItem Value="Uganda"></asp:ListItem>
                                        <asp:ListItem Value="Ukraine"></asp:ListItem>
                                        <asp:ListItem Value="United Arab Emirates"></asp:ListItem>
                                        <asp:ListItem Value="United Kingdom"></asp:ListItem>
                                        <asp:ListItem Value="United States"></asp:ListItem>
                                        <asp:ListItem Value="Uruguay"></asp:ListItem>
                                        <asp:ListItem Value="Uzbekistan"></asp:ListItem>
                                        <asp:ListItem Value="Vanuatu"></asp:ListItem>
                                        <asp:ListItem Value="Venezuela"></asp:ListItem>
                                        <asp:ListItem Value="Viet Nam"></asp:ListItem>
                                        <asp:ListItem Value="Yemen"></asp:ListItem>
                                        <asp:ListItem Value="Zambia"></asp:ListItem>
                                        <asp:ListItem Value="Zimbabwe"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>





                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="OnlineGradesLabel" for="OnlineGrades">Add Grades:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox CssClass="form-control" ID="OnlineGrades" runat="server" placeholder="Add Grade" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Grades--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="OnlineNumOfChildrenLabel" for="OnlineNumOfChildren">Number Of Children:</label>
                                </div>
                                <div class="col-7">
                                    <input type="number" id="OnlineNumOfChildren" class="form-control" runat="server" />
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="OnlineNumOfAdultsLabel" for="OnlineNumOfAdults">Number Of Adults:</label>
                                </div>
                                <div class="col-7">
                                    <input type="number" id="OnlineNumOfAdults" class="form-control" runat="server" />
                                </div>
                            </div>



                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="OnlineCommentsLabel" for="OnlineComments">Additional Comments</label>
                                </div>
                                <div class="col-7">
                                    <textarea name="Comments" id="OnlineComments" rows="5" cols="100" class="form-control" runat="server"></textarea>
                                </div>
                            </div>


                            <input type="button" class="btn" id="btnBackOnline" value="Back" />
                            <%--                            <input type="button" class="btn" id="btnEndstep24" value="Submit" />--%>
                            <asp:Button ID="btnSubmitOnline" runat="server" Text="Submit" OnClick="btnSubmitOnline_Click" />
                        </div>

                    </div>



                </div>
                <div class="modal-footer"></div>
            </div>
        </div>
    </div>


    <script>
        //Selector for the first modal slide
        $("#btnEndSelectProgramType").click(function () {


            var x = document.getElementById("LiveOnline").value;
            if (x == "Live") {
                $("#SelectProgramType").addClass('hideMe');
                $("#step11").removeClass('hideMe');
            } else if (x == "Online") {
                $("#SelectProgramType").addClass('hideMe');
                $("#step21").removeClass('hideMe');
            }
        });


        //Selector for the first modal slide
        $("#btnBackOnline").click(function () {
            $("#step21").addClass('hideMe');
            $("#SelectProgramType").removeClass('hideMe');
        });

        $("#btnBackLive").click(function () {
            $("#step11").addClass('hideMe');
            $("#SelectProgramType").removeClass('hideMe');
        });


        $("#btnEndstep14").click(function () {
            // Whatever your final validation and form submission requires
            $("#sampleModal").modal("hide");
            window.location.reload();
        });

        // FINISH LIVE PROGRAM MODAL PATH


        $("#btnEndstep24").click(function () {
            // Whatever your final validation and form submission requires
            $("#sampleModal").modal("hide");
            window.location.reload();
        });







        // If statement for on or off and locaton

        function scheduleA(event) {
            var x = document.getElementById("OnOff").value;
            if (x == "On") {
                $("#Address").addClass('hideMe');
                $("#AddressLabel").addClass('hideMe');
                $("#CityCounty").addClass('hideMe');
                $("#CityCountyLabel").addClass('hideMe');
                $("#State").addClass('hideMe');
                $("#StateLabel").addClass('hideMe');


            } else if (x == "Off") {
                $("#Address").removeClass('hideMe');
                $("#AddressLabel").removeClass('hideMe');
                $("#CityCounty").removeClass('hideMe');
                $("#CityCountyLabel").removeClass('hideMe');
                $("#State").removeClass('hideMe');
                $("#StateLabel").removeClass('hideMe');

            }
        }













    </script>

    </div>
    </div>
</asp:Content>


