<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Volunteers.aspx.cs" Inherits="Volunteers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


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
   <a class="navbar-brand " style=" color: #FFBC7C; font-weight: 400; font-size: 150%;" href="Programs.aspx">Wildlife Center of Virginia</a>

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
                    <a class="nav-link" href="Report.aspx">

                        <span>Reports</span></a>
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
        <li class="nav-item dropdown no-arrow active">
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
                    <a class="nav-link" href="Report.aspx">

                        <span>Reports</span></a>
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
            <li class="nav-item dropdown no-arrow active ">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                 <span>Volunteers</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="#" data-target="Volunteers.aspx" data-toggle="modal">View Volunteers</a>
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

          
<section class="login-block  col-md-6 col-md-8 col-s-5 mx-auto ">
            <%--<section class="card card-register mx-auto mt-5">--%>
    <div class="container1">
      <div class="card  mx-auto mt-3">
        <div class="card-header NewUserTitle text-center">
           
            Volunteer Listing</div>
        <div class="card-body">
            <div class="mx-auto d-flex justify-content-center">
                <div class="btn btn-primary btn-inside" data-target="#AddVolunteer" data-toggle="modal">Add Volunteer</div>
                <div class="btn btn-primary btn-inside" data-target="#UpdateVolunteer" data-toggle="modal">Edit Volunteer</div>
            </div>
                </div>
            <br />
            <%--<div class="row">
               
                <div class=" col-md-4 ml-auto InternalOrganizationForm">
                    <asp:TextBox  class="InternalOrganizationForm" ID="txtSearch" runat="server"></asp:TextBox>
                    <asp:Button ID ="btnSearch" runat ="server" Text ="Search" OnClick="btnSearch_Click" />
                    &nbsp;&nbsp;&nbsp;
                    
                </div>
                <br />
                <asp:DropDownList ID="ddlOrderBy" runat="server" class="btn btn-secondary btn-sm dropdown-toggle" style="background-color: #FFFAFA !important; color: #732700 !important;" AppendDataBoundItems="false" AutoPostBack="true" DataValueField="" OnSelectedIndexChanged="ddlOrderBy_SelectedIndexChanged">
                    <asp:ListItem>--Order By--</asp:ListItem>
                    <%--<asp:ListItem>Program Date</asp:ListItem>--%>
                    <%--<asp:ListItem>Organization Name A-Z</asp:ListItem>
                    <asp:ListItem>City A-Z</asp:ListItem>
                    <asp:ListItem>County A-Z</asp:ListItem>
                </asp:DropDownList>--%>

            
            
            <div class="col-lg-12 col-md-12 col-s-12 mx-auto">

    <div class="container1 block">
     <div runat="server" id="OrganizationSearchDiv">
               
        <div runat="server" id="ViewOrganizations">

                      <%--</div>--%>
                   
            <div class="block3">
                 <div class="tab-content">   
                    <div class="">
                        <div class="col-md-12 ">
                                 <br />
			                     
                        </div>
                    </div>
                </div>
            </div>
        </div>
         

            <%-- this div  is the internal div--%>
       
      
                                                    <script>
$(function() {
    $('a[data-toggle="tab"]').on('click', function(e) {
        window.localStorage.setItem('activeTab', $(e.target).attr('href'));
    });
    var activeTab = window.localStorage.getItem('activeTab');
    if (activeTab) {
        $('#myTab a[href="' + activeTab + '"]').tab('show');
        window.localStorage.removeItem("activeTab");
    }
});       </script>

                        <ul class="nav nav-tabs block4" id="myTab" role="tablist">
                <li class="nav-item ">
                
                                
                    <a class="nav-link   active TabStyle" data-toggle="tab" href="#VolunteersAllTab" style="color:black;"><p class="d-none d-lg-block">All Volunteers</p><p class="d-lg-none">All </p></a>
                 
                </li>
                <li class="nav-item">
                     <a class="nav-link    TabStyle" data-toggle="tab" href="#VolunteersActiveTab" style="color:black;"><p class="d-none d-lg-block">Active Volunteers</p><p class="d-lg-none">Active </p></a>
                      </li>
                <li class="nav-item">
                    <a class="nav-link  TabStyle" data-toggle="tab" href="#VolunteersInactiveTab" style="color:black;"><p class="d-none d-lg-block">Inactive Volunteers</p><p class="d-lg-none">Inactive </p></a>
                     </li>
                
            </ul>




          <div class="tab-content">
                <div id="VolunteersAllTab" class="container1 block3 tab-pane  active WildTable ">
                    <div class="InternalAnimalTab">
                       <div class ="grid-volunteers text-center">
                   <div class="row table-responsive mx-auto d-flex  justify-content-center">
              <div class="col-xl-12 col-lg-10 col-md-12 col-sm-12 col-xs-12 ">
                                <%--<h4 class="alert " style="background-color: #AB9993 !important; color: white !important;"> Organizations</h4>--%>
                           
    <asp:GridView ID="GridView1"   HeaderStyle-Backcolor="#FFBC7C" HeaderStyle-Forecolor="#732700" class="table table-bordered table-condensed table-hover" runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource4">
        <Columns>
            <asp:BoundField DataField="VolunteerFirstName" HeaderText="Volunteer First Name" SortExpression="VolunteerFirstName" >
 
            </asp:BoundField>
            <asp:BoundField DataField="VolunteerLastName" HeaderText="Volunteer Last Name" SortExpression="VolunteerLastName" >
            
            </asp:BoundField>
            <asp:BoundField DataField="VolunteerPhoneNumber" HeaderText="Volunteer Phone Number" SortExpression="VolunteerPhoneNumber" >
            
            </asp:BoundField>
            <asp:BoundField DataField="VolunteerEmail" HeaderText="Volunteer Email" SortExpression="VolunteerEmail" >
            
            </asp:BoundField>
            <asp:BoundField DataField="VolunteerStatus" HeaderText="Volunteer Status" SortExpression="VolunteerStatus" >
            
            </asp:BoundField>
            
        </Columns>
        
     </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"  
                    SelectCommand="SELECT [VolunteerFirstName], [VolunteerLastName], [VolunteerPhoneNumber], [VolunteerEmail], [VolunteerStatus] FROM [Volunteers] ORDER BY [VolunteerFirstName]">
                </asp:SqlDataSource>
                        </div>
                    </div>
                </div>

                          </div>
                </div>


                <div id="VolunteersActiveTab" class="container1 block3 tab-pane text-center WildTable ">
                    <div class="InternalAnimalTab">
                   
                        <div class ="grid-volunteers text-center">
                            <div class="row table-responsive mx-auto d-flex  justify-content-center">
              <div class="col-xl-12 col-lg-10 col-md-12 col-sm-12 col-xs-12 ">
                            <asp:GridView ID="GridView2"   HeaderStyle-Backcolor="#FFBC7C" HeaderStyle-Forecolor="#732700" class="table table-bordered table-condensed table-hover"  runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="VolunteerFirstName" HeaderText="Volunteer First Name" SortExpression="VolunteerFirstName" >
 
                                </asp:BoundField>
                                <asp:BoundField DataField="VolunteerLastName" HeaderText="Volunteer Last Name" SortExpression="VolunteerLastName" >
            
                                </asp:BoundField>
                                <asp:BoundField DataField="VolunteerPhoneNumber" HeaderText="Volunteer Phone Number" SortExpression="VolunteerPhoneNumber" >
            
                                </asp:BoundField>
                                <asp:BoundField DataField="VolunteerEmail" HeaderText="Volunteer Email" SortExpression="VolunteerEmail" >
            
                                </asp:BoundField>
                                <asp:BoundField DataField="VolunteerStatus" HeaderText="Volunteer Status" SortExpression="VolunteerStatus" >
            
                                </asp:BoundField>
            
                            </Columns>
        
                         </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"  
                                        SelectCommand="SELECT [VolunteerFirstName], [VolunteerLastName], [VolunteerPhoneNumber], [VolunteerEmail], [VolunteerStatus] FROM [Volunteers] WHERE[VolunteerStatus] = 'Active' ORDER BY [VolunteerFirstName]">
                                    </asp:SqlDataSource>
                        </div>
                    </div>
                              </div>
                    </div>
                </div>




                <div id="VolunteersInactiveTab" class="container1 block3 tab-pane  text-center WildTable">
                    <div class="InternalAnimalTab">
                     <div class ="grid-volunteers text-center">
                               <div class="row table-responsive mx-auto d-flex  justify-content-center">
              <div class="col-xl-12 col-lg-10 col-md-12 col-sm-12 col-xs-12 ">
                            <asp:GridView ID="GridView3"   HeaderStyle-Backcolor="#FFBC7C" HeaderStyle-Forecolor="#732700" class="table table-bordered table-condensed table-hover"  runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource2">
                            <Columns>
                                <asp:BoundField DataField="VolunteerFirstName" HeaderText="Volunteer First Name" SortExpression="VolunteerFirstName" >
 
                                </asp:BoundField>
                                <asp:BoundField DataField="VolunteerLastName" HeaderText="Volunteer Last Name" SortExpression="VolunteerLastName" >
            
                                </asp:BoundField>
                                <asp:BoundField DataField="VolunteerPhoneNumber" HeaderText="Volunteer Phone Number" SortExpression="VolunteerPhoneNumber" >
            
                                </asp:BoundField>
                                <asp:BoundField DataField="VolunteerEmail" HeaderText="Volunteer Email" SortExpression="VolunteerEmail" >
            
                                </asp:BoundField>
                                <asp:BoundField DataField="VolunteerStatus" HeaderText="Volunteer Status" SortExpression="VolunteerStatus" >
            
                                </asp:BoundField>
            
                            </Columns>
        
                         </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"  
                                        SelectCommand="SELECT [VolunteerFirstName], [VolunteerLastName], [VolunteerPhoneNumber], [VolunteerEmail], [VolunteerStatus] FROM [Volunteers] WHERE[VolunteerStatus] = 'Inactive' ORDER BY [VolunteerFirstName]">
                                    </asp:SqlDataSource>
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
    </div>
    </div>
    </div>
    
        </div>

    </div>
    <%--</div>
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
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>--%>
    </div>
    </div>
    </div>
    </div>
    </div>
</asp:Content>

