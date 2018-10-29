<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="YearlyWildlifeReport.aspx.cs" Inherits="YearlyWildlifeReport" %>

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
                
            <nav class="navbar navbar-expand navbar-dark bg-dark static-top logo">

       <a class="navbar-brand mr-1" href="Default.aspx">WildTek</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
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

          

        <div class="container-fluid block">

          

       <!-- Programs-->
       <div class="row">
		<div class="col-md-12 ProgramTitle">
			<h1>Reports Based on Year</h1>
			
		</div>
	</div>

   
     <asp:Label ID="lblYear" runat="server" Text="Select a Year:"></asp:Label>
    <asp:DropDownList ID="drpYear" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="YEAR" DataValueField="YEAR">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT YEAR(ProgramDate) AS YEAR, ProgramID FROM Program"></asp:SqlDataSource>
  
     <h4>Totals Based on Live Programs</h4>
    <asp:GridView ID="gridPrograms" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="EventMonth" HeaderText="EventMonth" SortExpression="EventMonth" />
            <asp:BoundField DataField="TotalOnSitePrograms" HeaderText="TotalOnSitePrograms" SortExpression="TotalOnSitePrograms" ReadOnly="True" />
            <asp:BoundField DataField="TotalOffSitePrograms" HeaderText="TotalOffSitePrograms" SortExpression="TotalOffSitePrograms" ReadOnly="True" />
            <asp:BoundField DataField="NumberOfChildren" HeaderText="NumberOfChildren" SortExpression="NumberOfChildren" />
            <asp:BoundField DataField="NumberOfAdults" HeaderText="NumberOfAdults" SortExpression="NumberOfAdults" />
            <asp:BoundField DataField="TotalParticipants" HeaderText="TotalParticipants" SortExpression="TotalParticipants" ReadOnly="True" />
            
        </Columns>
     </asp:GridView>
    <br />
    <br />
     <h4>Totals Based on Online Programs</h4>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT DISTINCT EventMonth, SUM(CASE WHEN onoff = 1 THEN 1 ELSE 0 END) AS TotalOnSitePrograms, SUM(CASE WHEN onoff = 0 THEN 1 ELSE 0 END) AS TotalOffSitePrograms, NumberOfChildren, NumberOfAdults, SUM(NumberOfChildren + NumberOfAdults) AS TotalParticipants FROM Program AS p GROUP BY EventMonth, NumberOfChildren, NumberOfAdults"></asp:SqlDataSource>

    <asp:GridView ID="gridOnlinePrograms" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="OnlineProgramID" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
            <asp:BoundField DataField="TotalOnlinePrograms" HeaderText="TotalOnlinePrograms" SortExpression="TotalOnlinePrograms" ReadOnly="True" />
            <asp:BoundField DataField="NumberOfKids" HeaderText="NumberOfKids" SortExpression="NumberOfKids" />
            
            <asp:BoundField DataField="NumberOfPeople" HeaderText="NumberOfPeople" SortExpression="NumberOfPeople" />
            
        </Columns>
        
     </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT Distinct(Month), 
        OnlineProgramID, COUNT(*) AS TotalOnlinePrograms, NumberOfKids, NumberOfPeople FROM OnlineProgram GROUP BY Month, OnlineProgramID, NumberOfKids, NumberOfPeople"></asp:SqlDataSource>

                <br />
                 <asp:Button ID="btnMonthlyVisualize" runat="server" Text="Visualize" class="btn btn-primary btn-login btn-block" OnClick="btnVisualize_Click"></asp:Button>   
              
                 <asp:Button ID="btnBack" runat="server" Text="Back" class="btn btn-primary btn-login btn-block" OnClick="btnBack_Click"></asp:Button>
                <br />
               
                <br />

</div>
</div>
</div>


    <!-- jQuery and Bootstrap links - do not delete! -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<!-- end of do not delete -->
        </body>


</html>

</asp:Content>

