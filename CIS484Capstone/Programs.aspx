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
                                            <div class="btn  btn-primary btn-inside btn-block" data-target="#AddAnimalModal" data-toggle="modal">Add Program Form</div>
                                        </div>

                                        <div class=" col-lg-3    col-md-4 col-sm-6  ">
                                            <div class="btn btn-primary  btn-inside btn-block" data-target="#UpdateLiveProgram" data-toggle="modal">Edit Live</div>
                                        </div>

                                        <div class=" col-lg-3   col-md-4  col-sm-6  ">
                                            <div class="btn btn-primary  btn-inside btn-block" data-target="#UpdateOnlineProgram" data-toggle="modal">Edit Online</div>



                                            <asp:DropDownList ID="ddlOrderBy" runat="server" class="btn  text-center btn-inside btn-secondary btn-block btn-sm dropdown-toggle" Style="background-color: #FFBC7C !important; color: #732700 !important;" AppendDataBoundItems="false" AutoPostBack="true" DataValueField="" OnSelectedIndexChanged="ddlOrderBy_SelectedIndexChanged">
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
                                                                        <asp:Repeater ID="rptProgramLLLive" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table table-striped table-borderless table-condensed WideTable  col-md-12" border="0" table-layout: fixed>

                                                                                    <tr class="row">
                                                                                        <th class="col-md-4" scope="col">Status
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">Number of Children
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">Number of Adults
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

                                                                                <table class="ChildGrid table table-striped table-borderless table-condensed WideTable" border="0" table-layout: fixed>

                                                                                    <tr class="row">

                                                                                        <th class="col-md-4" scope="col">Street Addess
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">City, County
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">State
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

                                                                                <table class="ChildGrid table  table-striped table-borderless table-condensed WideTable" border="0" table-layout: fixed>

                                                                                    <tr class="row">
                                                                                        <th class="col-md-4" scope="col">On/Off Site
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">Payment Status
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">Comments
                                                                                        </th>

                                                                                    </tr>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("OnOffSite") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblCity" runat="server" Text='<%# Eval("Paid?") %>' />
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
                                                            <asp:Button ID="btnExportLive" runat="server" Text="Export to Excel" class="btn btn-primary btn-inside btn-block"></asp:Button>

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

                                                                                <table class="ChildGrid table table-striped table-condensed WideTable " border="0" table-layout: fixed>

                                                                                    <tr class="row">

                                                                                        <th class="col-md-4" scope="col">Number of Children
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">Number of Adults
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">Educator Name
                                                                                        </th>
                                                                                    </tr>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblNumOfChildren" runat="server" Text='<%# Eval("NumberOfKids") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblNumOfAdults" runat="server" Text='<%# Eval("NumberOfPeople") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4">
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

                                                                                <table class="ChildGrid table table-striped table-condensed WideTable" border="0" table-layout: fixed>

                                                                                    <tr class="row">

                                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>City
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>State
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>Country
                                                                                        </th>
                                                                                    </tr>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblCity" runat="server" Text='<%# Eval("City") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblState" runat="server" Text='<%# Eval("State") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4">
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

                                                                                <table class="ChildGrid table table-striped table-condensed WideTable" border="0" table-layout: fixed>

                                                                                    <tr class="row">
                                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>Contact Email
                                                                                        </th>
                                                                                        <th class="col-md-8" scope="col" <%--style="width: 250px"--%>>Comments
                                                                                        </th>

                                                                                    </tr>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblCity" runat="server" Text='<%# Eval("ContactEmail") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-8">
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
                                                            <asp:Button ID="btnExportOnline" runat="server" Text="Export to Excel" class="btn btn-primary btn-inside btn-block"></asp:Button>

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
                    <h5 class="modal-title">Edit Live Program</h5>
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
                                        Select Program ID:
                                        <br />
                                        <asp:DropDownList ID="ddlProgramID" runat="server" AppendDataBoundItems="false" AutoPostBack="true" DataTextField="ProgramID" DataValueField="ProgramID" OnSelectedIndexChanged="ddlProgramID_SelectedIndexChanged1">

                                            <asp:ListItem Text="--Select Online Program ID--" Value="0" />
                                        </asp:DropDownList>
                                </div>
                                <div class="col-md-12 col-lg-6 

           col-sm-12">
                                    <p>
                                        Program Type:<br />
                                        &nbsp;<asp:DropDownList ID="ddlProgramType" runat="server">
                                        </asp:DropDownList>
                                </div>



                            </div>
                            <div class="row">
                                <div class="col-md-12 col-lg-6 
           col-sm-12">
                                    Organization:
                                    <br />
                                    <asp:DropDownList ID="ddlOrganization" runat="server">
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





                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" id="btnDelete" runat="server" class="btn  btn-inside" data-dismiss="modal" text="Delete" onclick="btnDelete_Click">Delete</button>
                    <button type="button" id="btnUpdate" class="btn  btn-inside" runat="server" text="Update" onclick="btnUpdate_Click">Edit</button>


                </div>
            </div>
        </div>
    </div>


    <div class="modal" id="UpdateOnlineProgram" tabindex="-1" role="dialog">
        <%--     <div class="modal-dialog  modal-full "  role="document">
                <div class="modal-content ">
                    <div class="modal-header">
                        <h5 class="modal-title">Update Online Program </h5>
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
       <div class="col-md-12 col-lg-6 --%>

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
                                    <asp:TextBox ID="txtState2" runat="server"></asp:TextBox>


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
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" id="btnDelete2" runat="server" class="btn  btn-inside" text="Delete" data-dismiss="modal" onclick="btnDelete2_Click">Delete</button>
                    <button type="button" id="btnUpdate2" class="btn  btn-inside" runat="server" text="Update" onclick="btnUpdate2_Click">Edit</button>


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
    </div>
</asp:Content>



