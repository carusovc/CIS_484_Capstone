﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AnimalMonthlyWildlifeReport.aspx.cs" Inherits="AnimalMonthlyWildlifeReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<!-- Bootstrap v4 -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
<link href="Content/Login.css" rel="stylesheet" type="text/css" media="screen">
<link href="Content/sb-admin.css" rel="stylesheet" type="text/css" media="screen">
        
<!-- Logo FOnt-->
<link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet">

    <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-user-circle fa-fw"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
            </div>
        </li>
    </ul>
    <nav class="navbar navbar-expand navbar-dark bg-dark static-top logo">
    <a class="navbar-brand mr-1" href="Default.aspx">WildTek</a>

      <%--<button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="~/carvet-square-down.svg">
        <i class="fas fa-bars"></i>
      </button>--%>

    <%--  <!-- Navbar Search -->
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
          <a class="nav-link" href="ProgramForm.aspx">
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

       <!-- Title-->
       <div class="row">
		<div class="col-md-12 ProgramTitle">
			<h1 >Reports Based on Animal Type</h1>
		</div>
	</div>
       <div class="col-md-12">
        <br>
	   </div>
       <div class="container1 ">
    <div class="row WildTable">
    <div class="col-md-12 mx-auto d-flex justify-content-center">
   
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
 </asp:DropDownList>

             </div>
        </div>



                <div class="row WildTable">
        <div class="col-md-12 mx-auto d-flex justify-content-center">
    <br />
     <br />
    <asp:GridView ID="GridView1" class="table table-borderless table-condensed table-hover" runat="server"  AutoGenerateColumns="False">
        <Columns>

            <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
            <asp:BoundField DataField="TotalOnSitePrograms" HeaderText="Total OnSite Programs" ReadOnly="True" SortExpression="TotalOnSitePrograms" />
            <asp:BoundField DataField="TotalOffSitePrograms" HeaderText="Total OffSite Programs" ReadOnly="True" SortExpression="TotalOffSitePrograms" />
            <asp:BoundField DataField="NumberOfChildren" HeaderText="Number Of Children" SortExpression="NumberOfChildren" />
            <asp:BoundField DataField="NumberOfAdults" HeaderText="Number Of Adults" SortExpression="NumberOfAdults" />
            <asp:BoundField DataField="TotalParticipants" HeaderText="Total Participants" ReadOnly="True" SortExpression="TotalParticipants" />
        </Columns>
    </asp:GridView>
             </div>
        </div>
    <br />
    <div class="row WildTable">
        <div class="col-md-12 mx-auto d-flex justify-content-center">
         <asp:GridView runat="server" class="table table-borderless table-condensed table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" >
            <Columns>
             <asp:BoundField DataField="TotalPrograms" HeaderText="Total Programs" ReadOnly="True" SortExpression="TotalPrograms" />
             <asp:BoundField DataField="TotalParticipants" HeaderText="Total Participants" ReadOnly="True" SortExpression="TotalParticipants" />
            </Columns>
        </asp:GridView>
        
        <asp:SqlDataSource ID="SqlDataSource3" runat="server"  ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT COUNT(ProgramAnimal.ProgramID) AS TotalPrograms, SUM(Program.NumberOfChildren + Program.NumberOfAdults) AS TotalParticipants FROM Animal LEFT OUTER JOIN ProgramAnimal ON Animal.AnimalID = ProgramAnimal.AnimalID LEFT OUTER JOIN Program ON ProgramAnimal.ProgramID = Program.ProgramID WHERE (Animal.AnimalType = @AnimalType) ">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="AnimalType" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
   </div>

<br />

  <div class="row WildTable">
        <div class="col-md-12 mx-auto d-flex justify-content-center">
            <asp:Button ID="btnMonthlyVisualize" runat="server" Text="Visualize" class="btn btn-primary btn-inside" OnClick="btnVisualize_Click"></asp:Button>   
            <asp:Button ID="btnBack" runat="server" Text="Back" class="btn btn-primary btn-inside " OnClick="btnBack_Click"></asp:Button>
        </div>
  </div>
                  
                <br />
                <br />

</div>
</div>
</div>
</div>


    <!-- jQuery and Bootstrap links - do not delete! -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<!-- end of do not delete -->
</asp:Content>
