﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeFile="NewProgramForm.aspx.cs" Inherits="NewProgramForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>
<html>

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>WildTek Online</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.15/css/bootstrap-multiselect.css" type ="text/css" />

    <!-- jQuery and Bootstrap links - do not delete! -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

<script src ="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.15/js/bootstrap-multiselect.js"> </script>
    <script type ="text/javascript"> 
        $(function () {
            $('#lstMammals').multiselect({
                includeSelectAllOptions: true
            });
        });


    </script>
<!-- end of do not delete -->

  </head>

  <body>

    
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
        <li class="nav-item active">
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
       
        <li class="nav-item">
          <a class="nav-link" href="ReportChoice.aspx">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Reports</span></a>
        </li>
      
        
        <li class="nav-item">
          <a class="nav-link" href="Payment.aspx">
            <i class="fas fa-fw fa-dollar-sign"></i>
            <span>Payment</span></a>
        </li>
      </ul>

      <div id="content-wrapper">

        <div class="container-fluid block">

          

       <!-- Programs-->
       <div class="row">
		<div class="col-md-12 ProgramTitle">
			<h1 >Add a Live Program</h1>
			
		</div>
	</div>
       <div class="col-md-12">
        <br>
			</div>

    <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label>
    <br />
<asp:Label ID="lblOnOff" runat="server" Text="On-Site/Off-Site"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Status:
    <asp:TextBox ID="txtStatus" runat="server" Width="152px"></asp:TextBox>
&nbsp; 
&nbsp;<asp:RadioButtonList ID="rboOnOff" runat="server">
        <asp:ListItem>On</asp:ListItem>
        <asp:ListItem>Off</asp:ListItem>
    </asp:RadioButtonList>
    
    <br />
    Organization Name: &nbsp;<asp:DropDownList ID="ddlOrganizationName" runat="server" DataSourceID="SqlDataSource2" DataTextField="OrgName" DataValueField="OrgID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString2 %>" SelectCommand="SELECT [OrgID], [OrgName] FROM [Organization]"></asp:SqlDataSource>
&nbsp;Program:
    <asp:DropDownList ID="ddlProgramTypeID" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProgramName" DataValueField="ProgramTypeID">
</asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [ProgramTypeID], [ProgramName] FROM [ProgramType]"></asp:SqlDataSource>
&nbsp;Program:

    
&nbsp; Program Address:
    <asp:TextBox ID="txtProgramAddress" runat="server" Width="295px"></asp:TextBox>
    
    <br />
    <br />
    City/County:
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
    &nbsp; State:
    <asp:DropDownList ID="ddlState1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
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
    
    <br />
    <br />
    Month:
    <asp:DropDownList ID="ddlReportMonth" runat="server" AutoPostBack="True">
        <asp:ListItem>January</asp:ListItem>
        <asp:ListItem>February</asp:ListItem>
        <asp:ListItem>March</asp:ListItem>
        <asp:ListItem>April</asp:ListItem>
        <asp:ListItem>May</asp:ListItem>
        <asp:ListItem>June</asp:ListItem>
        <asp:ListItem>July</asp:ListItem>
        <asp:ListItem>August</asp:ListItem>
        <asp:ListItem>September</asp:ListItem>
        <asp:ListItem>October</asp:ListItem>
        <asp:ListItem>November</asp:ListItem>
        <asp:ListItem>December</asp:ListItem>
    </asp:DropDownList>
    &nbsp; Date:&nbsp;
    <asp:DropDownList ID="ddlDate" runat="server" AutoPostBack="True">
        <asp:ListItem Value="Day"></asp:ListItem>
    </asp:DropDownList>
    &nbsp;&nbsp; Year:
    <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged">
        <asp:ListItem Value="Year"></asp:ListItem>
    </asp:DropDownList>
&nbsp; Start Time:
    <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
    
    <br />
    <br />
    Educators:
    &nbsp;<asp:DropDownList ID="ddlEducator" runat="server" DataSourceID="SqlDataSource4" DataTextField="EducatorFirstName" DataValueField="EducatorFirstName">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString5 %>" SelectCommand="SELECT * FROM [Educators]"></asp:SqlDataSource>
    &nbsp;# of People:
    <asp:TextBox ID="txtNumOfAdults" runat="server"></asp:TextBox>
&nbsp; # of Children:&nbsp;
    <asp:TextBox ID="txtNumOfChildren" runat="server"></asp:TextBox>
    &nbsp; Grade
<asp:DropDownList ID="ddlGrade" runat="server" DataSourceID="SqlDataSource3" DataTextField="GradeLevel" DataValueField="GradeID">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString3 %>" SelectCommand="SELECT * FROM [Grade]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="lblAnimalType" runat="server" Text="Animal Type:"></asp:Label>&nbsp;<asp:DropDownList ID="ddlAnimalType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>Bird</asp:ListItem>
        <asp:ListItem>Mammal</asp:ListItem>
        <asp:ListItem>Reptile</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;
    <asp:Label ID="lblAnimalName" runat="server" Text="Animal Name:"></asp:Label>
&nbsp;<asp:DropDownList ID="ddlAnimalName" DataTextField="AnimalName" DataValueField="AnimalID" runat="server">
    </asp:DropDownList>

    &nbsp;<br />
    &nbsp;<asp:Button ID="Button1" runat="server" Text="Add Animal to Program" OnClick="btnAdd_Click" />
&nbsp;
    <br />
    Payment Completed?<asp:RadioButtonList ID="rboWaitForPayment" runat="server">
        <asp:ListItem Value="Y">Yes</asp:ListItem>
        <asp:ListItem Value="N">No</asp:ListItem>
    </asp:RadioButtonList> Comments: <asp:TextBox ID="txtComments" runat="server"></asp:TextBox>
    <br /> 
    <asp:Button ID="btnSubmit" runat="server" Text="Submit"  href="ProgramForm.aspx" OnClick="btnSubmit_Click" />
    
<%--&nbsp;<asp:Button ID="btnLogOut" runat="server" Text="Logout" OnClick="btnLogOut_Click" />--%>
    
&nbsp;<asp:Button ID="btnPopulate" runat="server" Text="Populate" OnClick="btnPopulate_Click" />


 </div>

   
   </div> 
               

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
	 

  </body>

</html>


       
</section>





</body>
</html>
    
</asp:Content>

