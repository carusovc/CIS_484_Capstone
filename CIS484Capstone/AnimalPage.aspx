<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AnimalPage.aspx.cs" Inherits="AnimalPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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

                
    <script src="https://cdn.pubnub.com/sdk/javascript/pubnub.4.19.0.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />     

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
                    <a class="dropdown-item" href="#" data-target="#AddProgram" data-toggle="modal">Add New Program Type</a>
                </div>
            </li>
            <%--      <li class="nav-item">
          <a class="nav-link" href="AnimalPage.aspx">
            <i class="fas fa-fw fa-book-open"></i>--%>
            <li class="nav-item dropdown no-arrow active">
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
                    <a class="dropdown-item" href="YearlyInvoices.aspx">Yearly Invoices</a>
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
                    <a class="dropdown-item" href="#" data-target="#AddProgram" data-toggle="modal">Add New Program Type</a>
                </div>
            </li>
            <%--      <li class="nav-item">
          <a class="nav-link" href="AnimalPage.aspx">
            <i class="fas fa-fw fa-book-open"></i>--%>
            <li class="nav-item dropdown no-arrow active">
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
            <li class="nav-item dropdown no-arrow ">
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


      <div id="content-wrapper">
        <div class="container-fluid ">

          
<section class="login-block   col-xl-10 col-lg-10 col-md-10 col-sm-12 col-xs-12 mx-auto ">


            <%--<section class="card card-register mx-auto mt-5">--%>
    <div class="container1">
      <div class="card  mx-auto mt-3">
        <div class="card-header NewUserTitle text-center">
           
            Animal Listing</div>
        <div class="card-body">
            <div class="mx-auto d-flex justify-content-center">
                <div class="btn btn-primary btn-inside" data-target="#AddAnimalModal" data-toggle="modal">Add Animal</div>
                <div class="btn btn-primary btn-inside" data-target="#EditAnimalModal" data-toggle="modal">Edit Animal</div>
            </div>
                </div>
            <br />
            <div class="row">
               <div class=" col-xl-6 col-lg-6 col-md-6 col-sm-4 col-xs-4  InternalAnimalForm">
                   </div>
                <div class=" col-xl-6 col-lg-6 col-md-6 col-sm-8 col-xs-8 text-right InternalAnimalForm">

                    <asp:TextBox  class="InternalAnimalForm" ID="txtSearch" runat="server"></asp:TextBox>
                    <asp:Button ID ="btnSearch" runat ="server" Text ="Search" OnClick="btnSearch_Click" />
                    &nbsp;&nbsp;&nbsp;
                    
                </div>
            
            </div>
            <div class="col-lg-12 col-md-12 col-s-12 mx-auto">

    <div class="container1 block">
     <div runat="server" id="AnimalSearchDiv">
               
        <div runat="server" id="ViewAnimals">

                      </div>
                   
    <div class="block3">
  
                 <div class="tab-content">
                 
<div class="">
    <div class="col-md-12 ">
             <br />
			  <div class=" text-center">
                  <h6 class="ReportTitle" >Search Results</h6>

			  </div>
			
		</div>
	</div>
                        

              <div class="col-md-12 mx-auto d-flex justify-content-center">
    <br />
     <br />
   
<asp:GridView ID="gridSearch"  class="table table-bordered table-borderless table-striped table-condensed "  HeaderStyle-Backcolor="#FFBC7C"
    HeaderStyle-Forecolor="#732700" runat="server" AutoGenerateColumns="False">
                      <Columns>
                          <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" />
                          <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
                          <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                      </Columns>
                 </asp:GridView>

          <br />
     <br /><br />
              </div>
    </div>
                 </div>
       


    </div>
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

            <%-- this div  is the internal div--%>
       
            <ul class="nav nav-tabs block4" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active TabStyle" data-toggle="tab" href="#AnimalsAllTab" style="color:black;">All</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link TabStyle" data-toggle="tab" href="#AnimalsMammalTab" style="color:black;">Mammal</a>

                </li>
                <li class="nav-item">
                    <a class="nav-link TabStyle" data-toggle="tab" href="#AnimalsReptileTab" style="color:black;">Reptile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link TabStyle" data-toggle="tab" href="#AnimalsBirdTab" style="color:black;">Bird</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link TabStyle" data-toggle="tab" href="#AnimalsLocationTab" style="color:black;">Location</a>
                </li>
            </ul>
            <div class="tab-content">
                <div id="AnimalsAllTab" class="container1 block3 tab-pane  WildTable active">
                    <div class="InternalAnimalTab">
                        <%--<p>  Hello</p>
                        <br />
                        <br /><br /><br />--%>
                        <div class ="grid-mammal text-center">
                   
                                <h4 class="alert d-none d-md-block " style="background-color: #AB9993 !important; color: white !important;"> Mammal</h4>
                               <h4 class="alert d-md-none" style="background-color: #AB9993 !important; color: white !important;"> M</h4>

                           
    <asp:GridView ID="GridView1"  class="table table-borderless table-condensed  table-striped " runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource4" AllowSorting="True" >
        <Columns>
            <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" Visible="False">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="AnimalName"  SortExpression="AnimalName" >

            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            
            
        </Columns>
        
     </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"  
                    SelectCommand="SELECT [AnimalType], [AnimalName] FROM [Animal] WHERE ([AnimalType] = 'Mammal') ORDER BY [AnimalName]">
                </asp:SqlDataSource>
     </div>
  
       <div class ="grid-reptile text-center">
            
          <h4 class="alert d-none d-md-block " style="background-color: #AB9993 !important; color: white !important;"> Reptile</h4>
                               <h4 class="alert d-md-none" style="background-color: #AB9993 !important; color: white !important;"> R</h4>

         
                <asp:GridView ID="GridView2"  class="table table-borderless table-condensed table-striped  " runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" AllowSorting="True">
                    <Columns>
                          <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" Visible="False" />
                        <asp:BoundField DataField="AnimalName"  SortExpression="AnimalName" />
                      
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [AnimalName], [AnimalType] FROM [Animal] WHERE ([AnimalType] = 'Reptile') ORDER BY [AnimalName]">
                </asp:SqlDataSource>
        
 
   </div>
     
        <div class ="grid-bird text-center ">
           
  <h4 class="alert d-none d-md-block " style="background-color: #AB9993 !important; color: white !important;"> Bird</h4>
                               <h4 class="alert d-md-none" style="background-color: #AB9993 !important; color: white !important;"> B</h4>

                  <asp:GridView ID="GridView3"  class="table table-borderless table-condensed table-striped " runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" AllowSorting="True" >
                      <Columns>
                          <asp:BoundField DataField="AnimalName"  SortExpression="AnimalName" />

                      </Columns>
                 </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [AnimalType], [AnimalName] FROM [Animal] WHERE ([AnimalType] = 'Bird') ORDER BY [AnimalName]" ProviderName="System.Data.SqlClient">
                 </asp:SqlDataSource>
        </div>
                    </div>
                </div>


                <div id="AnimalsMammalTab" class="container1 block3 tab-pane text-center WildTable">
                    <div class="InternalAnimalTab">
                   
                     <%--   <div class="row mx-auto d-flex justify-content-center">
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                    <h4 class="alert d-none d-lg-block " style="background-color: #AB9993 !important; color: white !important;"> Animal Name</h4>
                               <h4 class="alert d-lg-none" style="background-color: #AB9993 !important; color: white !important;"> Name</h4>
                             
                            </div>
                     
                           <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                 <h4 class="alert " style="background-color: #AB9993 !important; color: white !important;"> Status</h4>
                               
                            </div>
                          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                 <h4 class="alert " style="background-color: #AB9993 !important; color: white !important;"> Image</h4> --%>
                                
                         <div class="row mx-auto d-flex justify-content-center">
                            <div class="col-4">
                                <h4 class="alert d-none d-lg-block" style="background-color: #AB9993 !important; color: white !important;"> Animal Name</h4>
                                 <h4 class=" d-md-none" style="background-color: #AB9993 !important; color: white !important; ">Animal Name</h4>
                                    <%-- <h4 class="alert d-none d-md-block d-lg-none" style="background-color: #AB9993 !important; color: white !important;"> Name</h4> --%>
                            </div>
                     
                            <div class="col-4">
                                 <h4 class="alert d-none d-md-block" style="background-color: #AB9993 !important; color: white !important;"> Status</h4>
                                 <h4 class=" d-md-none " style="background-color: #AB9993 !important; color: white !important; "> Status</h4>
                            </div>
                               <div class="col-4">
                                 <h4 class="alert d-none d-md-block" style="background-color: #AB9993 !important; color: white !important;"> Image</h4>
                                      <h4 class=" d-md-none" style="background-color: #AB9993 !important; color: white !important; "> Image</h4>
                            </div>
                        </div>  

                        <asp:GridView ID="gridAnimalMammal"  class="table table-borderless table-striped table-condensed"  runat="server" AutoGenerateColumns="False"  AllowSorting="True"  DataSourceID="SqlDataSource2" OnRowDataBound ="gridMammal_RowDataBound">
        <Columns>
           <%-- <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" Visible="False" />--%>
            <asp:BoundField DataField="AnimalName" SortExpression="AnimalName" >
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Status"  SortExpression="Status" >
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
           <asp:TemplateField >
                              <ItemTemplate>
                                  <img src = '<%# Eval("AnimalImage") %>' id="imageControl" runat="server" />

                              </ItemTemplate>
                          </asp:TemplateField>

        </Columns>
        
     </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"  
                    SelectCommand="SELECT [AnimalType], [AnimalName], [Status], [AnimalImage] FROM [Animal] WHERE ([AnimalType] = @AnimalType) ORDER BY [Status], [AnimalName]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Mammal" Name="AnimalType" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

                    </div>
                </div>




                <div id="AnimalsReptileTab" class="container1 block3 tab-pane  text-center WildTable">
                    <div class="InternalAnimalTab">
                     
                          <div class="row mx-auto d-flex justify-content-center">
                            <div class="col-4">
                                <h4 class="alert d-none d-lg-block" style="background-color: #AB9993 !important; color: white !important;"> Animal Name</h4>
                                <h4 class=" d-md-none " style="background-color: #AB9993 !important; color: white !important; "> Name</h4>
                                     <h4 class="alert d-none d-md-block d-lg-none" style="background-color: #AB9993 !important; color: white !important;"> Name</h4>
                            </div>
                     
                            <div class="col-4">
                                 <h4 class="alert d-none d-md-block" style="background-color: #AB9993 !important; color: white !important;"> Status</h4>
                                       <h4 class=" d-md-none " style="background-color: #AB9993 !important; color: white !important; "> Status</h4>
                            </div>
                               <div class="col-4">
                                 <h4 class="alert d-none d-md-block" style="background-color: #AB9993 !important; color: white !important;"> Image</h4>
                                             <h4 class=" d-md-none" style="background-color: #AB9993 !important; color: white !important; "> Image</h4>
                            </div>
                        </div>  
                        <asp:GridView ID="gridReptile"  class="table table-borderless table-condensed  table-striped "  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True"  OnRowDataBound ="gridReptile_RowDataBound">
                    <Columns>
                        <%--  <asp:BoundField DataField="AnimalType"  SortExpression="AnimalType" Visible="False" /> --%>
                        <asp:BoundField DataField="AnimalName" SortExpression="AnimalName" >
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Status"  SortExpression="Status" >
                            <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                      <asp:TemplateField >
                              <ItemTemplate>
                                  <img src = '<%# Eval("AnimalImage") %>' id="imageControl" runat="server" />
                              </ItemTemplate>
                          </asp:TemplateField>    
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [AnimalName], [AnimalType], [Status], [AnimalImage] FROM [Animal] WHERE ([AnimalType] = @AnimalType) ORDER BY [Status], [AnimalName]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Reptile" Name="AnimalType" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                    </div>
                </div>




                <div id="AnimalsBirdTab" class="container1 block3 tab-pane text-center  WildTable">
                    <div class="InternalAnimalTab">                   
                       
                           <div class="row mx-auto d-flex justify-content-center">
                            <div class="col-4">
                                <h4 class="alert d-none d-lg-block" style="background-color: #AB9993 !important; color: white !important;"> Animal Name</h4>
                                   <h4 class=" d-md-none " style="background-color: #AB9993 !important; color: white !important; "> Name</h4>
                                     <h4 class="alert d-none d-md-block d-lg-none" style="background-color: #AB9993 !important; color: white !important;"> Name</h4>
                            </div>
                     
                            <div class="col-4">
                                 <h4 class="alert d-none d-md-block" style="background-color: #AB9993 !important; color: white !important;"> Status</h4>
                                        <h4 class=" d-md-none " style="background-color: #AB9993 !important; color: white !important; "> Status</h4>
                            </div>
                               <div class="col-4">
                                 <h4 class="alert d-none d-md-block" style="background-color: #AB9993 !important; color: white !important;"> Image</h4>
                                         <h4 class=" d-md-none" style="background-color: #AB9993 !important; color: white !important; "> Image</h4>
                            </div>
                        </div>  
                        <asp:GridView ID="gridBird"  class="table table-borderless table-condensed  table-striped" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True" OnRowDataBound ="gridBird_RowDataBound">
                      
                            <Columns>
                       <%--   <asp:BoundField DataField="AnimalType"   SortExpression="AnimalType" Visible="False" /> --%>
                          <asp:BoundField DataField="AnimalName"  SortExpression="AnimalName" >
                              <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                          <asp:BoundField DataField="Status"  SortExpression="Status" >
                              <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                            <asp:TemplateField >
                              <ItemTemplate>
                                  <img src = '<%# Eval("AnimalImage") %>' id="imageControl" runat="server" />

                              </ItemTemplate>
                          </asp:TemplateField>
                      </Columns>
                 </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [AnimalType], [AnimalName], [Status], [AnimalImage] FROM [Animal] WHERE ([AnimalType] = @AnimalType) ORDER BY [Status], [AnimalName]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Bird" Name="AnimalType" Type="String" />
                        </SelectParameters>
                 </asp:SqlDataSource>
                    </div>
                </div>

<div id="AnimalsLocationTab" class="container1 block3 tab-pane text-center  WildTable">
                    <div class="InternalAnimalTab">     
                        <div class="row mx-auto d-flex justify-content-center">
                            <div class="col-4">
                                <h4 class="alert d-none d-lg-block" style="background-color: #AB9993 !important; color: white !important;"> Animal Name</h4>
                                   <h4 class=" d-md-none " style="background-color: #AB9993 !important; color: white !important; "> Name</h4>
                                     <h4 class="alert d-none d-md-block d-lg-none" style="background-color: #AB9993 !important; color: white !important;"> Name</h4>
                            </div>
                     
                            <div class="col-4">
                                 <h4 class="alert d-none d-md-block" style="background-color: #AB9993 !important; color: white !important;"> Status</h4>
                                        <h4 class=" d-md-none " style="background-color: #AB9993 !important; color: white !important; "> Status</h4>
                            </div>
                               <div class="col-4">
                                 <h4 class="alert d-none d-md-block" style="background-color: #AB9993 !important; color: white !important;"> Image</h4>
                                         <h4 class=" d-md-none" style="background-color: #AB9993 !important; color: white !important; "> Image</h4>
                            </div>
                        </div>  
                         <%--<a class="d-block small" href="forgot-password.html">Forgot Password?</a>--%>
        <div class="block3">
                 

                 <div class="tab-content">
                      <div id="AllTab" class="container1 block3 tab-pane  WildTable active">
<div class="InternalTab">
     <p>  <style type="text/css">
#mapContainer {
    height: 739px;
    width: 1650px;
    border:10px solid #eaeaea;
}
</style>

<script src="http://maps.google.com/maps/api/js?sensor=false">
</script>

<script type="text/javascript">
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position){
        var latitude = position.coords.latitude;
        var longitude = position.coords.longitude;
        var coords = new google.maps.LatLng(latitude, longitude);
        var mapOptions = {
            zoom: 15,
            center: coords,
            mapTypeControl: true,
            navigationControlOptions: {
                style: google.maps.NavigationControlStyle.SMALL
            },
            mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            map = new google.maps.Map(
                document.getElementById("mapContainer"), mapOptions
                );
            var marker = new google.maps.Marker({
                    position: coords,
                    map: map,
                    title: "Your current location!"
            });
 
        });
    }else {
        alert("Geolocation API is not supported in your browser.");
    }

</script>

         <div class="card-header NewUserTitle text-center">Location Services<br />
             <asp:Button ID="btnTrack" runat="server" Font-Size="Small" Height="33px" Text="Start Tracking????" Width="127px" />
     </div>
         <div class="container">
      <h1>PubNub Google Maps Tutorial - Live Flight Path</h1>
      <div id="map-canvas" style="width:600px;height:400px"></div>
    </div>

    <script>
    window.lat = 38.039303693465236;
    window.lng = -78.9137649536133;

    var map;
    var mark;
    var lineCoords = [];
      
    var initialize = function() {
      map  = new google.maps.Map(document.getElementById('map-canvas'), {center:{lat:lat,lng:lng},zoom:12});
      mark = new google.maps.Marker({position:{lat:lat, lng:lng}, map:map});
    };

    window.initialize = initialize;

    var redraw = function(payload) {
      lat = payload.message.lat;
      lng = payload.message.lng;

      map.setCenter({lat:lat, lng:lng, alt:0});
      mark.setPosition({lat:lat, lng:lng, alt:0});
      
      lineCoords.push(new google.maps.LatLng(lat, lng));

      var lineCoordinatesPath = new google.maps.Polyline({
        path: lineCoords,
        geodesic: true,
        strokeColor: '#2E10FF'
      });
      
      lineCoordinatesPath.setMap(map);
    };

    var pnChannel = "map3-channel";

    var pubnub = new PubNub({
      publishKey:   'pub-c-ccdc4b85-b3e4-4db0-b70a-c45dfb682591',
      subscribeKey: 'sub-c-976595e8-f0fe-11e8-9886-12310f425d87'
    });

    pubnub.subscribe({channels: [pnChannel]});
    pubnub.addListener({message:redraw});

    setInterval(function() {
      pubnub.publish({channel:pnChannel, message:{lat:window.lat + 0.001, lng:window.lng + 0.01}});
    }, 500);
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyBg2nITIncYD46WfW9B57reDqmTwuoUH2o&callback=initialize"></script>
  
<div id="mapContainer" visible ="false"></div>
         </p>
          <br />
     <br /><br /><br />
              </div>
</div>
                        <%--      
                        <asp:GridView ID="GridView4"  class="table table-borderless table-condensed  table-striped" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True" OnRowDataBound ="gridBird_RowDataBound">
                      
                            <Columns>
                      
                                <asp:BoundField DataField="AnimalType"   SortExpression="AnimalType" Visible="False" />
                          <asp:BoundField DataField="AnimalName"  SortExpression="AnimalName" >
                              <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                          <asp:BoundField DataField="Status"  SortExpression="Status" >
                              <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                            <asp:TemplateField >
                              <ItemTemplate>
                                  <img src = '<%# Eval("AnimalImage") %>' id="imageControl" runat="server" />

                              </ItemTemplate>
                          </asp:TemplateField>
                      </Columns>
                 </asp:GridView> --%>

                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [AnimalType], [AnimalName], [Status], [AnimalImage] FROM [Animal] WHERE ([AnimalType] = @AnimalType) ORDER BY [Status], [AnimalName]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Bird" Name="AnimalType" Type="String" />
                        </SelectParameters>
                 </asp:SqlDataSource>
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
 
       
</section>         





                 </div>

<div class="modal fade" id="AddAnimalModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title text-center" style="font-size: 145% !important; color: #e2561d !important;">Add Animal</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
    <div class="modal-body">
        <div runat= server id="AnimalAddDiv">
            <p>&nbsp;</p>
            <div class="row">
                <div class=" col-md-4 InternalAnimalForm"><h6>Animal Type</h6> </div>
                <div class=" col-md-3 InternalAnimalForm">
                    <asp:DropDownList class="InternalAnimalForm btn btn-secondary btn-sm dropdown-toggle" style="background-color: #FFFAFA !important; color: #732700 !important; border-color:grey;" ID="ddlAnimalType" runat="server">
                        <asp:ListItem>--Animal Type--</asp:ListItem>
                        <asp:ListItem>Bird</asp:ListItem>
                        <asp:ListItem>Mammal</asp:ListItem>
                        <asp:ListItem>Reptile</asp:ListItem>
                    </asp:DropDownList>&nbsp;&nbsp;
                </div>
            </div>
            <div class="row">
                <div class=" col-md-4 InternalAnimalForm"><h6>Animal Name</h6> </div>
                <div class=" col-md-3 InternalAnimalForm">
                    <asp:TextBox  class="InternalAnimalForm" placeholder=" Animal Name" ID="txtAnimalName" runat="server"></asp:TextBox>&nbsp&nbsp
                </div>
            </div>
            <div>
            </div>
             <div class="row">
                <div class=" col-md-4 InternalAnimalForm"><h6>Status</h6> </div>
                <div class=" col-md-3 InternalAnimalForm">
                    <asp:DropDownList class="InternalAnimalForm btn btn-secondary btn-sm dropdown-toggle" style="background-color: #FFFfff !important; color: #732700 !important; border-color:grey;" ID="ddlAnimalStatus" runat="server">
                         <asp:ListItem>--Status--</asp:ListItem>
                        <asp:ListItem>Active</asp:ListItem>
                        <asp:ListItem>Inactive</asp:ListItem>
                        
                    </asp:DropDownList>&nbsp;&nbsp;
                </div>
                     
            </div>
            <div class ="row">
                <div class =" col-md-4 InternalAnimalForm">
                    Upload Picture: <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
            </div>
            <div class ="row">
                <div class =" col-md-4 InternalAnimalForm">
                    <asp:Image ID="animalImage" runat="server" />
                    </div>
            </div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp;
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
    </div>
        <div class="modal-footer">
             <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <asp:Button ID="Button3" class="btn btn-primary btn-inside" runat="server" Text="Submit" OnClick="btnAdd_Click" />
            <%-- <button type="button" class="btn btn-primary btn-inside">Save changes</button>--%>
           
      </div>
    </div>
  </div>
</div>




                <!-- Edit Animal Modal - Megan-->

<div class="modal fade" id="EditAnimalModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title text-center" style="font-size: 145% !important; color: #e2561d !important;">Edit Animal</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers> 
     <asp:AsyncPostBackTrigger ControlID="ddlAnimal" EventName="SelectedIndexChanged" /> 
     <asp:AsyncPostBackTrigger ControlID="btnUpdate" EventName="Click" /> 
   </Triggers> 
<ContentTemplate>
  <div class="modal-body">
      <div runat= server id="AnimalEditDiv">
          <p>&nbsp;</p>
          <div class="row"> 
            <div class=" col-md-4 InternalAnimalForm"><h6>Select Animal</h6> </div>
                <div class=" col-md-3 InternalAnimalForm">
                <asp:DropDownList class="InternalAnimalForm btn btn-secondary btn-sm dropdown-toggle" style="background-color: #FFFfff !important; color: #732700 !important; border-color:grey;" ID="ddlAnimal" runat="server" AppendDataBoundItems="false" AutoPostBack="true" ViewStateMode="Enabled" EnableViewState="true" DataTextField="AnimalName" DataValueField="AnimalID" OnSelectedIndexChanged ="ddlAnimal_SelectedIndexChanged1">
                <asp:ListItem>--Select Animal--</asp:ListItem>
                </asp:DropDownList>&nbsp&nbsp
                </div>     
               </div>
            <div class="row"> 
                <div class=" col-md-4 InternalAnimalForm"><h6>Animal Type</h6> </div>
                    <div class=" col-md-3 InternalAnimalForm">
                        <asp:DropDownList class="InternalAnimalForm btn btn-secondary btn-sm dropdown-toggle" style="background-color: #FFFfff !important; color: #732700 !important; border-color:grey;" ID="ddlAnimalTypeEdit" runat="server" AutoPostBack="True"> <%-- Github Merge issue: other version did not have autopostback --%>
                            <asp:ListItem Text="--Animal Type--" Value=""></asp:ListItem>

                            <%-- <asp:ListItem>All</asp:ListItem> --%>
                            <asp:ListItem Text="Bird" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Mammal" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Reptile" Value="2"></asp:ListItem>
                        </asp:DropDownList>&nbsp;&nbsp; 
                    </div>
            </div>
              <div class="row"> 
                <div class=" col-md-4 InternalAnimalForm"><h6>Animal Name</h6> </div>
                    <div class=" col-md-3 InternalAnimalForm">
                         <asp:TextBox ID="txtBoxAnimalName" placeholder=" Animal Name" runat="server"></asp:TextBox>&nbsp&nbsp
                    </div>
              </div>
             <%-- <div class="row"> 
                <div class=" col-md-4 InternalAnimalForm"><h6>Age</h6> </div>
                    <div class=" col-md-3 InternalAnimalForm">
                         <asp:TextBox ID="txtAge" placeholder="Animal Age" runat="server"></asp:TextBox>
                    </div>
              </div>--%>

              <div class="row"> 
                <div class=" col-md-4 InternalAnimalForm"><h6>Status</h6> </div>
                    <div class=" col-md-3 InternalAnimalForm">
                        <asp:DropDownList class="InternalAnimalForm btn btn-secondary btn-sm dropdown-toggle" style="background-color: #FFFfff !important; color: #732700 !important; border-color:grey;" ID="ddlStatus" runat="server">
                            <asp:ListItem>--Status--</asp:ListItem>
            <asp:ListItem>Active</asp:ListItem>
            <asp:ListItem>Inactive</asp:ListItem>
        </asp:DropDownList>
                    </div>
              </div>
<%--                   <div class ="row">
                <div class =" col-md-4 InternalAnimalForm">
                    Upload Picture: <asp:FileUpload ID="FileUpload2" runat="server" />
                    </div>
            </div>--%>
              <asp:Label ID="lblLastUpdated" runat="server" Text=""></asp:Label>&nbsp;
              <asp:Label ID="lblLastUpdatedBy" runat="server" Text=""></asp:Label>
<%--              <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate1_Click" />--%>
            <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
<%--                <button type="button" class="btn btn-primary btn-inside" OnClick="btnUpdate1_Click">Update</button>--%>
                  <asp:Button ID="btnUpdate" class="btn btn-primary btn-inside" runat="server" Text="Save Changes" OnClick="btnUpdate1_Click" Enabled="true"></asp:Button>
                <%--<asp:Button ID="btnDelete" class="btn btn-primary btn-inside" runat="server" Text="Delete" OnClick="btnDelete_Click" />--%>

<%--        <button type="button" class="btn btn-primary btn-inside">Save changes</button>--%>
      
      </div>
       
      <div></div>
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    &nbsp;<asp:Label ID="Label4" runat="server" Text=""></asp:Label>
    </div>
      </div>
                    </ContentTemplate>
        </asp:UpdatePanel>
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