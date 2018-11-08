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

                
            <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1 logo" href="Default.aspx">WildTek</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" >
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
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown" >
            <i class="fas fa-envelope fa-fw"></i>
          <%--<a class="nav-link" href="Programs.aspx">--%>
            <%--<i class="fas fa-fw fa-book-open"></i>--%>
            <span>Programs</span>
          </a>
            <div class="dropdown-menu dropdown-menu-right" >
                <a class="dropdown-item" href="Programs.aspx">View Programs</a>
            <a class="dropdown-item" href="#" data-target="#AddProgram" data-toggle="modal" >Add New Program Type</a>
          </div>
        </li>
<%--      <li class="nav-item">
          <a class="nav-link" href="AnimalPage.aspx">
            <i class="fas fa-fw fa-book-open"></i>--%>
          <li class="nav-item dropdown no-arrow active">
          <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown" >
            <i class="fas fa-envelope fa-fw"></i>
            <span>Animals</span>
          </a>
            <div class="dropdown-menu dropdown-menu-right" >
                <a class="dropdown-item" href="AnimalPage.aspx">View Animals</a>
            <a class="dropdown-item" href="#" data-target="#AddAnimal" data-toggle="modal">Add New Animal</a>
            <a class="dropdown-item" href="#" data-target="#UpdateAnimal" data-toggle="modal">Update Animals</a>
          </div>
        </li>
           <li class="nav-item dropdown no-arrow ">
          <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown" >
            <i class="fas fa-envelope fa-fw"></i>
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
          <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown" >
            <i class="fas fa-envelope fa-fw"></i>
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
            <i class="fas fa-envelope fa-fw"></i>
            <span>Organizations</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" >
            <a class="dropdown-item" href="#" data-target="#AddOrganization" data-toggle="modal">Add New Organization</a>
              <a class="dropdown-item" href="#" data-target="#UpdateOrganization" data-toggle="modal">Update Organizations</a>
          </div>
        </li>

           <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown" >
            <i class="fas fa-envelope fa-fw"></i>
            <span>Educators</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" >
            <a class="dropdown-item" href="#" data-target="#AddEducator" data-toggle="modal">Add New Educator</a>
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

          
<section class="login-block  col-md-6 col-md-8 col-s-5 mx-auto ">
            <%--<section class="card card-register mx-auto mt-5">--%>
    <div class="container1">
      <div class="card  mx-auto mt-5">
        <div class="card-header NewUserTitle text-center">Animal Listing</div>
        <div class="card-body">
            <div class="mx-auto d-flex justify-content-center">
                <div class="btn btn-primary btn-inside" data-target="#AddAnimalModal" data-toggle="modal">Add Animal</div>
                <div class="btn btn-primary btn-inside" data-target="#EditAnimalModal" data-toggle="modal">Edit Animal</div>
            </div>
            <%-- this div  is the internal div--%>
            <ul class="nav nav-tabs block4" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active TabStyle" data-toggle="tab" href="#AnimalsAllTab" style="color:black;">All</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link TabStyle" data-toggle="tab" href="#AnimalsMammalTab" style="color:black;">Mammals</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link TabStyle" data-toggle="tab" href="#AnimalsReptileTab" style="color:black;">Reptiles</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link TabStyle" data-toggle="tab" href="#AnimalsBirdTab" style="color:black;">Birds</a>
                </li>
            </ul>
            <div class="tab-content">
                <div id="AnimalsAllTab" class="container1 block3 tab-pane  WildTable active">
                    <div class="InternalAnimalTab">
                        <%--<p>  Hello</p>
                        <br />
                        <br /><br /><br />--%>
                        <div class ="grid-mammal text-center">
                            <p>
                                <asp:Label Text ="Mammal" runat ="server"></asp:Label>
                            </p>
    <asp:GridView ID="GridView1"  class="table table-borderless table-condensed table-hover "  runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource4" AllowSorting="True" >
        <Columns>
            <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" Visible="False"/>
            <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
            
        </Columns>
        
     </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"  
                    SelectCommand="SELECT [AnimalType], [AnimalName] FROM [Animal] WHERE ([AnimalType] = 'Mammal') ORDER BY [AnimalName]">
                </asp:SqlDataSource>
     </div>
  
       <div class ="grid-reptile text-center">
           <p>
              <asp:Label Text ="Reptile" runat ="server"></asp:Label>
           </p>
                <asp:GridView ID="GridView2"  class="table table-borderless table-condensed table-hover " runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" AllowSorting="True">
                    <Columns>
                          <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" Visible="False" />
                        <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
                      
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [AnimalName], [AnimalType] FROM [Animal] WHERE ([AnimalType] = 'Reptile') ORDER BY [AnimalName]">
                </asp:SqlDataSource>
        
 
   </div>
     
        <div class ="grid-bird text-center">
            <p>
            <asp:Label Text ="Bird" runat ="server"></asp:Label>
                </p>
                  <asp:GridView ID="GridView3"  class="table table-borderless table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" AllowSorting="True">
                      <Columns>
                          <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" Visible="False"/>
                          <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
                      </Columns>
                 </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [AnimalType], [AnimalName] FROM [Animal] WHERE ([AnimalType] = 'Bird') ORDER BY [AnimalName]">
                 </asp:SqlDataSource>
        </div>
                    </div>
                </div>


                <div id="AnimalsMammalTab" class="container1 block3 tab-pane WildTable">
                    <div class="InternalAnimalTab">
                        <%--<p> There</p>
                        <br />
                        <br /><br /><br />--%>
                        <asp:GridView ID="gridAnimalMammal"  class="table table-borderless table-condensed table-hover  "  runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource2" AllowSorting="True" >
        <Columns>
            <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" Visible="False" />
            <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
            
        </Columns>
        
     </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"  
                    SelectCommand="SELECT [AnimalType], [AnimalName] FROM [Animal] WHERE ([AnimalType] = @AnimalType) ORDER BY [AnimalName]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Mammal" Name="AnimalType" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

                    </div>
                </div>




                <div id="AnimalsReptileTab" class="container1 block3 tab-pane fade WildTable">
                    <div class="InternalAnimalTab">
                        <%--<p> My</p>
                        <br />
                        <br /><br /><br />--%>
                        <asp:GridView ID="gridReptile"  class="table table-borderless table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True">
                    <Columns>
                          <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" Visible="False" />
                        <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
                      
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [AnimalName], [AnimalType] FROM [Animal] WHERE ([AnimalType] = @AnimalType) ORDER BY [AnimalName]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Reptile" Name="AnimalType" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                    </div>
                </div>




                <div id="AnimalsBirdTab" class="container1 block3 tab-pane fade WildTable">
                    <div class="InternalAnimalTab">
                        <%--<p> Friend</p>
                        <br />
                        <br /><br /><br />--%>
                        <asp:GridView ID="gridBird"  class="table table-borderless table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True">
                      <Columns>
                          <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" Visible="False" />
                          <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
                      </Columns>
                 </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [AnimalType], [AnimalName] FROM [Animal] WHERE ([AnimalType] = @AnimalType) ORDER BY [AnimalName]">
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
        <div class="text-center">
            <%--<a class="d-block small mt-3" href="Default.aspx">Login Page</a>--%>
            <%--<a class="d-block small" href="forgot-password.html">Forgot Password?</a>--%>
          </div>
        </div>
      </div>
    </div>
       
</section>         








       <!-- Programs-->
       <%--<div class="row">
		<div class="col-md-12 ProgramTitle">
			<h1 >Animals Listing</h1>
			
		</div>
	</div>
            <div class="row">
            <div class ="modifyOptions mx-auto">
         
                <div class="btn btn-primary btn-inside" data-target="#AddAnimalModal" data-toggle="modal">Add Animal</div>
      <div class="btn btn-primary btn-inside" data-target="#EditAnimalModal" data-toggle="modal">Edit Animal</div>
     <asp:Button ID="Button3" runat="server" Text="View Animal" class="btn btn-primary btn-inside" OnClick="btnViewAnimal_Click"></asp:Button>

       </div>
                </div>
            <br />
            <div class="row">
               
                <div class=" col-md-3 InternalAnimalForm">
                    <asp:TextBox  class="InternalAnimalForm" ID="txtSearch" runat="server"></asp:TextBox>
                    <asp:Button ID ="btnSearch" runat ="server" Text ="Search" OnClick="btnSearch_Click" />
                </div>
            </div>
            <div class="col-lg-4 col-md-12 col-s-12 mx-auto">
    <div class="container1 block">
   

                 <ul class="nav nav-tabs" role="tablist">
                      <li class="nav-item">
      <a class="nav-link active TabStyle" data-toggle="tab" href="#AllTab">All</a>
    </li>
    <li class="nav-item">
      <a class="nav-link TabStyle" data-toggle="tab" href="#MammalTab">Mammals</a>
    </li>
    <li class="nav-item">
      <a class="nav-link TabStyle" data-toggle="tab" href="#ReptileTab">Reptiles</a>
    </li>
                     <li class="nav-item">
      <a class="nav-link TabStyle" data-toggle="tab" href="#BirdTab">Birds</a>
    </li>
<%--      <li class="nav-item">
      <a class="nav-link TabStyle" data-toggle="tab" href="#ResultsTab">Results</a>
    </li>--%>
    
  </ul>

                 <div class="tab-content">
                      <div id="AllTab" class="container1 block tab-pane active">--%>
     
          
         <%--<div class ="grid-mammal text-center">
             <p>
                <asp:Label Text ="Mammal" runat ="server"></asp:Label>
                 </p>
    <asp:GridView ID="GridView1"  class="table table-borderless table-condensed table-hover "  runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource2" AllowSorting="True" >
        <Columns>
            <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" Visible="False"/>
            <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
            
        </Columns>
        
     </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"  
                    SelectCommand="SELECT [AnimalType], [AnimalName] FROM [Animal] WHERE ([AnimalType] = 'Mammal) ORDER BY [AnimalName]">
                </asp:SqlDataSource>
     </div>
  
       <div class ="grid-reptile text-center">
           <p>
              <asp:Label Text ="Reptile" runat ="server"></asp:Label>
           </p>
                <asp:GridView ID="GridView2"  class="table table-borderless table-condensed table-hover " runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True">
                    <Columns>
                          <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" Visible="False" />
                        <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
                      
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [AnimalName], [AnimalType] FROM [Animal] WHERE ([AnimalType] = 'Reptile') ORDER BY [AnimalName]">
                </asp:SqlDataSource>
        
 
   </div>
     
        <div class ="grid-bird text-center">
            <p>
            <asp:Label Text ="Bird" runat ="server"></asp:Label>
                </p>
                  <asp:GridView ID="GridView3"  class="table table-borderless table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True">
                      <Columns>
                          <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" Visible="False"/>
                          <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
                      </Columns>
                 </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [AnimalType], [AnimalName] FROM [Animal] WHERE ([AnimalType] = 'Bird') ORDER BY [AnimalName]">
                 </asp:SqlDataSource>
        </div>--%>



      </div>
                         
    <%--<div id="MammalTab" class="container1 block tab-pane WildTable">
          
        
    <asp:GridView ID="gridAnimalMammal"  class="table table-borderless table-condensed table-hover  "  runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource2" AllowSorting="True" >
        <Columns>
            <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" Visible="False" />
            <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
            
        </Columns>
        
     </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"  
                    SelectCommand="SELECT [AnimalType], [AnimalName] FROM [Animal] WHERE ([AnimalType] = @AnimalType) and Status = 'active' ORDER BY [AnimalName]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Mammal" Name="AnimalType" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
      </div>--%>

    <%--<div id="ReptileTab" class="container1 block tab-pane fade WildTable">
     
                <asp:GridView ID="gridReptile"  class="table table-borderless table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True">
                    <Columns>
                          <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" Visible="False" />
                        <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
                      
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [AnimalName], [AnimalType] FROM [Animal] WHERE ([AnimalType] = @AnimalType) and status = 'active' ORDER BY [AnimalName]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Reptile" Name="AnimalType" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
        
    </div>--%>


    <%--<div id="BirdTab" class="container1 block tab-pane fade WildTable">
     
        
                  <asp:GridView ID="gridBird"  class="table table-borderless table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True">
                      <Columns>
                          <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" Visible="False" />
                          <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
                      </Columns>
                 </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [AnimalType], [AnimalName] FROM [Animal] WHERE ([AnimalType] = @AnimalType) and status = 'active' ORDER BY [AnimalName]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Bird" Name="AnimalType" Type="String" />
                        </SelectParameters>
                 </asp:SqlDataSource>
    </div>--%>



                 </div>

                   <div runat="server" id="ViewAnimals">
                   </div>
               </div>
            </div>
         </div>
      </div>

                      <asp:GridView ID="gridSearch"  class="table table-borderless table-condensed table-hover" runat="server" AutoGenerateColumns="False" AllowSorting="True">
                      <Columns>
                          <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" />
                          <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
                          <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                      </Columns>
                 </asp:GridView>
<div class="modal" id="AddAnimalModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Add Animal</h5>
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
                    <asp:DropDownList class="InternalAnimalForm" ID="ddlAnimalType" runat="server">
                        <asp:ListItem>All</asp:ListItem>
                        <asp:ListItem>Bird</asp:ListItem>
                        <asp:ListItem>Mammal</asp:ListItem>
                        <asp:ListItem>Reptile</asp:ListItem>
                    </asp:DropDownList>&nbsp;&nbsp;
                </div>
            </div>
            <div class="row">
                <div class=" col-md-4 InternalAnimalForm"><h6>Animal Name</h6> </div>
                <div class=" col-md-3 InternalAnimalForm">
                    <asp:TextBox  class="InternalAnimalForm" ID="txtAnimalName" runat="server"></asp:TextBox>
                </div>
            </div>
            <div>
            </div>
             <div class="row">
                <div class=" col-md-4 InternalAnimalForm"><h6>Status</h6> </div>
                <div class=" col-md-3 InternalAnimalForm">
                    <asp:DropDownList class="InternalAnimalForm" ID="ddlAnimalStatus" runat="server">
                        <asp:ListItem>Active</asp:ListItem>
                        <asp:ListItem>Inactive</asp:ListItem>
                        
                    </asp:DropDownList>&nbsp;&nbsp;
                </div>
            </div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp;
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
    </div>
        <div class="modal-footer">
          <asp:Button ID="Button3" class="btn btn-primary btn-inside" runat="server" Text="Save changes" OnClick="btnAdd_Click" />
            <%-- <button type="button" class="btn btn-primary btn-inside">Save changes</button>--%>
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>




                <!-- Edit Animal Modal - Megan-->

<div class="modal" id="EditAnimalModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Update Animal</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers> 
     <asp:AsyncPostBackTrigger ControlID="ddlAnimal" EventName="SelectedIndexChanged" /> 
   </Triggers> 
<ContentTemplate>
  <div class="modal-body">
      <div runat= server id="AnimalEditDiv">
          <p>&nbsp;</p>
          <div class="row"> 
            <div class=" col-md-4 InternalAnimalForm"><h6>Select Animal</h6> </div>
                <div class=" col-md-3 InternalAnimalForm">
                <asp:DropDownList ID="ddlAnimal" runat="server" AppendDataBoundItems="false" AutoPostBack="true" ViewStateMode="Enabled" EnableViewState="true" DataTextField="AnimalName" DataValueField="AnimalID" OnSelectedIndexChanged ="ddlAnimal_SelectedIndexChanged1">
                <asp:ListItem>--Select Animal--</asp:ListItem>
                </asp:DropDownList>
                </div>     
               </div>
            <div class="row"> 
                <div class=" col-md-4 InternalAnimalForm"><h6>Animal Type</h6> </div>
                    <div class=" col-md-3 InternalAnimalForm">
                        <asp:DropDownList class="InternalAnimalForm" ID="ddlAnimalTypeEdit" runat="server">
                            <asp:ListItem>Animal Type</asp:ListItem>
                            <%-- <asp:ListItem>All</asp:ListItem> --%>
                            <asp:ListItem>Bird</asp:ListItem>
                            <asp:ListItem>Mammal</asp:ListItem>
                            <asp:ListItem>Reptile</asp:ListItem>
                        </asp:DropDownList>&nbsp;&nbsp; 
                    </div>
            </div>
              <div class="row"> 
                <div class=" col-md-4 InternalAnimalForm"><h6>Animal Name</h6> </div>
                    <div class=" col-md-3 InternalAnimalForm">
                         <asp:TextBox ID="txtBoxAnimalName" placeholder="Animal Name" runat="server"></asp:TextBox>
                    </div>
              </div>
              <div class="row"> 
                <div class=" col-md-4 InternalAnimalForm"><h6>Age</h6> </div>
                    <div class=" col-md-3 InternalAnimalForm">
                         <asp:TextBox ID="txtAge" placeholder="Animal Age" runat="server"></asp:TextBox>
                    </div>
              </div>

              <div class="row"> 
                <div class=" col-md-4 InternalAnimalForm"><h6>Status</h6> </div>
                    <div class=" col-md-3 InternalAnimalForm">
                        <asp:DropDownList ID="ddlStatus" runat="server">
                            <asp:ListItem>--Status--</asp:ListItem>
            <asp:ListItem>Active</asp:ListItem>
            <asp:ListItem>Inactive</asp:ListItem>
        </asp:DropDownList>
                    </div>
              </div>
              <asp:Label ID="lblLastUpdated" runat="server" Text=""></asp:Label>&nbsp;
              <asp:Label ID="lblLastUpdatedBy" runat="server" Text=""></asp:Label>
              <%--<asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />--%>
            <div class="modal-footer">
          <asp:Button ID="btnUpdate" class="btn btn-primary btn-inside" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                <%--<asp:Button ID="btnDelete" class="btn btn-primary btn-inside" runat="server" Text="Delete" OnClick="btnDelete_Click" />--%>

       <%-- <button type="button" class="btn btn-primary btn-inside">Save changes</button>--%>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
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

</asp:Content>

