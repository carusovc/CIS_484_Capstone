<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="YearlyWildlifeReport.aspx.cs" Inherits="YearlyWildlifeReport" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
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
          <li class="nav-item dropdown no-arrow">
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
           <li class="nav-item dropdown no-arrow active">
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

       <!-- Programs-->
       <div class="row">
		<div class="col-md-12 ProgramTitle">
			<h1 >Reports Based on Year</h1>
			
		</div>
	</div>


             <div class="row WildTable">
        <div class="col-md-12 mx-auto d-flex justify-content-center">
    
    <asp:DropDownList ID="drpYear" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="YEAR" DataValueField="YEAR">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT Distinct YEAR(ProgramDate) AS YEAR FROM Program Order By YEAR(ProgramDate)"></asp:SqlDataSource>
  

                       
             </div>
        </div>
   
    


            <div class="row">
		<div class="col-md-12 ProgramTitle">
			 <h4>Totals Based on Live Programs</h4>
			
		</div>
	</div>


              <div class="col-md-12 mx-auto d-flex justify-content-center">
    <br />
     <br />
   
<asp:GridView ID="gridPrograms"  class="table table-borderless table-condensed table-hover"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="MonthName" HeaderText="Month" SortExpression="Month Name" ReadOnly="True" />
            <asp:BoundField DataField="TotalOnSitePrograms" HeaderText="Total OnSite Programs" SortExpression="TotalOnSitePrograms" ReadOnly="True" />
            <asp:BoundField DataField="TotalOffSitePrograms" HeaderText="Total OffSite Programs" SortExpression="TotalOffSitePrograms" ReadOnly="True" />
            <asp:BoundField DataField="TotalLivePrograms" HeaderText="Total Live Programs" SortExpression="TotalLivePrograms" ReadOnly="true" />
            <asp:BoundField DataField="NumberOfChildren" HeaderText="Number Of Children" SortExpression="NumberOfChildren" ReadOnly="True" />
            <asp:BoundField DataField="NumberOFAdults" HeaderText="Number Of Adults" SortExpression="NumberOFAdults" ReadOnly="True" />
            <asp:BoundField DataField="TotalParticipants" HeaderText="Total Participants" SortExpression="TotalParticipants" ReadOnly="True" />
            
        </Columns>
     </asp:GridView>
    <br />
    <br />
         
             </div>


            <div class="row">
		<div class="col-md-12 ProgramTitle">
			<h4>Totals Based on Online Programs</h4>
			
		</div>
	</div>


            <div class="col-md-12 mx-auto d-flex justify-content-center">
    <br />
     <br />
 
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT CASE { fn MONTH(Program.ProgramDate) } 
            when 1 then 'January'
            when 2 then 'February'
            when 3 then 'March'
            when 4 then 'April'
            when 5 then 'May'
            when 6 then 'June'
            when 7 then 'July'
            when 8 then 'August'
            when 9 then 'September'
            when 10 then 'October'
            when 11 then 'November'
            when 12 then 'December'
           END
      AS MonthName, SUM(CASE WHEN onoff = 1 THEN 1 ELSE 0 END) AS TotalOnSitePrograms, SUM(CASE WHEN onoff = 0 THEN 1 ELSE 0 END) AS TotalOffSitePrograms, Count(Program.ProgramID) as TotalLivePrograms,
        SUM(NumberOfChildren) as NumberOfChildren,
		SUM(NumberOfAdults) AS NumberOFAdults, 
        SUM(NumberOfChildren + NumberOfAdults) AS TotalParticipants FROM Program WHERE (YEAR(ProgramDate) = @Year) GROUP BY { fn MONTH(Program.ProgramDate) } ORDER BY { fn MONTH(Program.ProgramDate) }">
        <SelectParameters>
            <asp:ControlParameter ControlID="drpYear" Name="YEAR" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
               
       
            
            <%--DataKeyNames="OnlineProgramID"--%>
              
    <asp:GridView ID="gridOnlinePrograms"  class="table table-borderless table-condensed table-hover"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="MonthName" HeaderText="Month" SortExpression="MonthName" />
            <asp:BoundField DataField="TotalOnlinePrograms" HeaderText="Total Online Programs" SortExpression="TotalOnlinePrograms" ReadOnly="True" />
            <asp:BoundField DataField="NumberOfKids" HeaderText="Number Of Children" SortExpression="NumberOfKids" />
            
            <asp:BoundField DataField="NumberOfPeople" HeaderText="Number Of People" SortExpression="NumberOfPeople" />
            
        </Columns>
        
     </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT CASE { fn MONTH(OnlineProgram.ProgramDate) } 
            when 1 then 'January'
            when 2 then 'February'
            when 3 then 'March'
            when 4 then 'April'
            when 5 then 'May'
            when 6 then 'June'
            when 7 then 'July'
            when 8 then 'August'
            when 9 then 'September'
            when 10 then 'October'
            when 11 then 'November'
            when 12 then 'December'
           END
      AS MonthName,  count(distinct OnlineProgram.OnlineProgramID) as TotalOnlinePrograms, SUM(NumberOfKids) as NumberOfKids,
		SUM(NumberOfPeople) AS NumberOfPeople
		FROM OnlineProgram WHERE (YEAR(ProgramDate) = @Year) GROUP BY { fn MONTH(OnlineProgram.ProgramDate) } ORDER BY { fn MONTH(OnlineProgram.ProgramDate) }">
        <SelectParameters>
            <asp:ControlParameter ControlID="drpYear" Name="YEAR" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
                 

           <%--  <asp:Button ID="Button4" runat="server" Text="Export Online Program Report to Excel" class="btn btn-primary btn-inside" OnClick="btnExportOnline_Click"></asp:Button>--%>
            </div>
             <div class="row WildTable">
        <div class="col-md-12 mx-auto d-flex justify-content-center">

   <br />
                 <asp:Button ID="Button1" runat="server" Text="Visualize" class="btn btn-primary btn-inside" OnClick="btnVisualize_Click"></asp:Button>   
              
                 <asp:Button ID="Button2" runat="server" Text="Back" class="btn btn-primary btn-inside" OnClick="btnBack_Click"></asp:Button>
            <br />
 
             </div>
                  <asp:Button ID="Button3" runat="server" Text="Export Program Reports to Excel" class="btn btn-primary btn-inside" OnClick="btnExportLive_Click"></asp:Button>
           
        </div>

</div>
</div>

</asp:Content>

