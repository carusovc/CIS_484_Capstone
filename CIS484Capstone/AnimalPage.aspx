<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AnimalPage.aspx.cs" Inherits="AnimalPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
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
            <span>Add New Program Content</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" >
            <a class="dropdown-item" href="#" data-target="#AddProgram" data-toggle="modal" >Add New Program Type</a>
            <a class="dropdown-item" href="#" data-target="#AddOrganization" data-toggle="modal">Add New Organization</a>
            <a class="dropdown-item" href="#" data-target="#AddAnimal" data-toggle="modal">Add New Animal</a>
            <a class="dropdown-item" href="#" data-target="#AddEducator" data-toggle="modal">Add New Educator</a>
          </div>
        </li>

           <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown" >
            <i class="fas fa-envelope fa-fw"></i>
            <span>Update Program Content</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" >
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

          

       <!-- Programs-->
       <div class="row">
		<div class="col-md-12 ProgramTitle">
			<h1 >Animals Listing</h1>
			
		</div>
	</div>
            <div class="row">
            <div class ="modifyOptions mx-auto">
         
                <div class="btn btn-primary btn-inside" data-target="#AddAnimalModal" data-toggle="modal">Add Animal</div>
      <div class="btn btn-primary btn-inside" data-target="#EditAnimalModal" data-toggle="modal">Edit Animal</div>
     <%--<asp:Button ID="Button3" runat="server" Text="View Animal" class="btn btn-primary btn-inside" OnClick="btnViewAnimal_Click"></asp:Button>--%>

       </div>
                </div>
            <br />
            <div class="col-lg-4 col-md-12 col-s-12 mx-auto">
    <div class="container1 block">
   

                 <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active TabStyle" data-toggle="tab" href="#MammalTab">Mammals</a>
    </li>
    <li class="nav-item">
      <a class="nav-link TabStyle" data-toggle="tab" href="#ReptileTab">Reptiles</a>
    </li>
                     <li class="nav-item">
      <a class="nav-link TabStyle" data-toggle="tab" href="#BirdTab">Birds</a>
    </li>
    
  </ul>

                 <div class="tab-content">
    <div id="MammalTab" class="container1 block tab-pane active WildTable">
          
        
    <asp:GridView ID="gridAnimalMammal"  class="table table-borderless table-condensed table-hover  "  runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource2" AllowSorting="True" >
        <Columns>
            <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" />
            <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
            
        </Columns>
        
     </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"  
                    SelectCommand="SELECT [AnimalType], [AnimalName] FROM [Animal] WHERE ([AnimalType] = @AnimalType) and Status = 'active' ORDER BY [AnimalName]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Mammal" Name="AnimalType" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
      </div>
    <div id="ReptileTab" class="container1 block tab-pane fade WildTable">
     
                <asp:GridView ID="gridReptile"  class="table table-borderless table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True">
                    <Columns>
                          <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" />
                        <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
                      
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [AnimalName], [AnimalType] FROM [Animal] WHERE ([AnimalType] = @AnimalType) and status = 'active' ORDER BY [AnimalName]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Reptile" Name="AnimalType" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
        
    </div>
    <div id="BirdTab" class="container1 block tab-pane fade WildTable">
     
        
                  <asp:GridView ID="gridBird"  class="table table-borderless table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True">
                      <Columns>
                          <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" />
                          <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
                      </Columns>
                 </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [AnimalType], [AnimalName] FROM [Animal] WHERE ([AnimalType] = @AnimalType) and status = 'active' ORDER BY [AnimalName]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Bird" Name="AnimalType" Type="String" />
                        </SelectParameters>
                 </asp:SqlDataSource>
    </div>
                 </div>
                   <div runat="server" id="ViewAnimals">
                   </div>
               </div>
            </div>
         </div>
      </div>

    
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
  <div class="modal-body">
      <div runat= server id="AnimalEditDiv">
          <p>&nbsp;</p>
          <div class="row"> 
            <div class=" col-md-4 InternalAnimalForm"><h6>Select Animal</h6> </div>
                <div class=" col-md-3 InternalAnimalForm">
                <asp:DropDownList ID="ddlAnimal" runat="server" AppendDataBoundItems="false" AutoPostBack="true" DataTextField="AnimalName" DataValueField="AnimalID"  OnSelectedIndexChanged ="ddlAnimal_SelectedIndexChanged1">
                </asp:DropDownList>
                </div>     
               </div>
            <div class="row"> 
                <div class=" col-md-4 InternalAnimalForm"><h6>Animal Type</h6> </div>
                    <div class=" col-md-3 InternalAnimalForm">
                        <asp:DropDownList class="InternalAnimalForm" ID="ddlAnimalTypeEdit" runat="server">
                            <asp:ListItem>Bird</asp:ListItem>
                            <asp:ListItem>Mammal</asp:ListItem>
                            <asp:ListItem>Reptile</asp:ListItem>
                        </asp:DropDownList>&nbsp;&nbsp; 
                    </div>
            </div>
              <div class="row"> 
                <div class=" col-md-4 InternalAnimalForm"><h6>Animal Name</h6> </div>
                    <div class=" col-md-3 InternalAnimalForm">
                         <asp:TextBox ID="txtBoxAnimalName" runat="server"></asp:TextBox>
                    </div>
              </div>

              <div class="row"> 
                <div class=" col-md-4 InternalAnimalForm"><h6>Status</h6> </div>
                    <div class=" col-md-3 InternalAnimalForm">
                        <asp:DropDownList ID="ddlStatus" runat="server">
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

