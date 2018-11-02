<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AnimalPage.aspx.cs" Inherits="AnimalPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
        <!doctype html>
    <html>

    <head>
<meta charset="UTF-8">
<title>WildTek</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

	  <!-- Bootstrap v4 -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
<link href="Content/Login.css" rel="stylesheet" type="text/css" media="screen">
<link href="Content/sb-admin.css" rel="stylesheet" type="text/css" media="screen">
        
      <!-- Logo FOnt-->
      <link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet">
    
</head>
        <body>
                
            <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="index.html">WildTek</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" >
        <i class="fas fa-bars"></i>
      </button>

<%--      <!-- Navbar Search -->
      <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
          <div class="input-group-append">
            <button class="btn btn-primary" type="button">
              <i class="fas fa-search"></i>
            </button>
          </div>
        </div>
      </form>--%>

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
          <a class="nav-link" href="Default.aspx">
            <i class="fas fa-fw fa-book-open"></i>
            <span>Live Program Form</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="OnlineForm.aspx">
            <i class="fas fa-fw fa-wifi"></i>
            <span>Online Program Form</span></a>
        </li>
       
        <li class="nav-item active">
          <a class="nav-link" href="ReportChoice.aspx">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Reports</span></a>
        </li>
      
        
        <li class="nav-item">
          <a class="nav-link" href="Payment.aspx">
            <i class="fas fa-fw fa-dollar-sign"></i>
            <span>Payment</span></a>
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
            <div class ="modifyOptions">
         <asp:Button ID="Button1" runat="server" Text="Add Animal" class="btn btn-primary btn-inside" OnClick="btnAddAnimal_Click"></asp:Button>
     <asp:Button ID="Button2" runat="server" Text="Edit Animal" class="btn btn-primary btn-inside" OnClick="btnEditAnimal_Click"></asp:Button>
     <%--<asp:Button ID="Button3" runat="server" Text="View Animal" class="btn btn-primary btn-inside" OnClick="btnViewAnimal_Click"></asp:Button>--%>

       </div>

             <div class="col-md-12 mx-auto d-flex justify-content-center">
    <br />
     <br />
   
                 <div runat="server" id="ViewAnimals">
    <asp:Label ID="Label1" runat="server" Text="Mammals"></asp:Label>      
    <asp:GridView ID="gridAnimalMammal"  class="table table-borderless table-condensed table-hover"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" AllowSorting="True" >
        <Columns>
            <asp:BoundField DataField="AnimalType" HeaderText="AnimalType" SortExpression="AnimalType" />
            <asp:BoundField DataField="AnimalName" HeaderText="AnimalName" SortExpression="AnimalName" />
            
        </Columns>
        
     </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"  
                    SelectCommand="SELECT [AnimalType], [AnimalName] FROM [Animal] WHERE ([AnimalType] = @AnimalType) ORDER BY [AnimalName]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Mammal" Name="AnimalType" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
      

                  <asp:Label ID="Label2" runat="server" Text="Reptiles"></asp:Label>     
                <asp:GridView ID="gridReptile"  class="table table-borderless table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True">
                    <Columns>
                          <asp:BoundField DataField="AnimalType" HeaderText="AnimalType" SortExpression="AnimalType" />
                        <asp:BoundField DataField="AnimalName" HeaderText="AnimalName" SortExpression="AnimalName" />
                      
                    </Columns>
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [AnimalName], [AnimalType] FROM [Animal] WHERE ([AnimalType] = @AnimalType) ORDER BY [AnimalName]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Reptile" Name="AnimalType" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>


                  <asp:Label ID="Label3" runat="server" Text="Birds"></asp:Label>     
                  <asp:GridView ID="gridBird"  class="table table-borderless table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True">
                      <Columns>
                          <asp:BoundField DataField="AnimalType" HeaderText="AnimalType" SortExpression="AnimalType" />
                          <asp:BoundField DataField="AnimalName" HeaderText="AnimalName" SortExpression="AnimalName" />
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


   
        


   




    <div runat= server id="addAnimal">
    <h2>Create New Animal</h2>
    <p>&nbsp;</p>
    <p><div>Animal Type:
        <asp:DropDownList ID="ddlAnimalType" runat="server">
            <asp:ListItem>Bird</asp:ListItem>
            <asp:ListItem>Mammal</asp:ListItem>
            <asp:ListItem>Reptile</asp:ListItem>
        </asp:DropDownList>
    &nbsp;&nbsp; 
        </div>
        <div>
        Animal Name:
        <asp:TextBox ID="txtAnimalName" runat="server"></asp:TextBox>
        </div>
    </p>

    <p>
    <div>
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
    </div>
    <asp:Label ID="lblLastUpdated" runat="server" Text=""></asp:Label>
    &nbsp;<asp:Label ID="lblLastUpdatedBy" runat="server" Text=""></asp:Label>


    </p>
    </div>









    <!-- jQuery and Bootstrap links - do not delete! -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<!-- end of do not delete -->
        </body>


</html>

</asp:Content>

