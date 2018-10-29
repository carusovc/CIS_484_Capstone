<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MonthlyWildlifeReport.aspx.cs" Inherits="MonthlyWildlifeReport" %>

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
       
        <li class="nav-item">
          <a class="nav-link active" href="ReportChoice.aspx">
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
			<h1 >Monthly WildTek Reports</h1>
			
		</div>
	</div>
     

<%--    <h2>Monthly Reports for WildTek</h2>--%>
            <asp:Label ID="lblMonth" runat="server" Text="Select a Month:"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="MonthName" DataValueField="MonthName">
                        <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
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
      AS MonthName FROM [Program] Group by { fn MONTH(Program.ProgramDate) } order by { fn MONTH(Program.ProgramDate) }"></asp:SqlDataSource>
    

             <asp:Label ID="lblYear" runat="server" Text="Select a Year:"></asp:Label>
            <asp:DropDownList ID="drpYear" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="YEAR" DataValueField="YEAR">
                        <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT Distinct(YEAR(ProgramDate)) AS YEAR FROM Program"></asp:SqlDataSource>
    <br />


    <h4>Total Live Program Based on Month</h4>
        <asp:GridView ID="gridPrograms" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="MonthName" HeaderText="Month" SortExpression="MonthName" />
            <%--<asp:BoundField DataField="ProgramID" HeaderText="ID" SortExpression="ProgramID" />--%>
            <asp:BoundField DataField="TotalOnSitePrograms" HeaderText="Total OnSite Programs" SortExpression="TotalOnSitePrograms" ReadOnly="True" />
            <asp:BoundField DataField="TotalOffSitePrograms" HeaderText="Total OffSite Programs" SortExpression="TotalOffSitePrograms" ReadOnly="True" />
            <asp:BoundField DataField="NumberOfChildren" HeaderText="Total Number Of Children" SortExpression="NumberOfChildren" />
            <asp:BoundField DataField="NumberOfAdults" HeaderText="Total Number Of Adults" SortExpression="NumberOfAdults" />
            <asp:BoundField DataField="TotalParticipants" HeaderText="Total Attendance" SortExpression="TotalParticipants" ReadOnly="True" />
        </Columns>
     </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT CASE { fn MONTH(Program.ProgramDate) } 
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
      AS MonthName, SUM(CASE WHEN onoff = 1 THEN 1 ELSE 0 END) AS TotalOnSitePrograms, SUM(CASE WHEN onoff = 0 THEN 1 ELSE 0 END) AS TotalOffSitePrograms, 
         SUM(NumberOfChildren) as NumberOfChildren, SUM(NumberOfAdults) AS NumberOfAdults, SUM(NumberOfChildren + NumberOfAdults) AS TotalParticipants FROM Program 
		 WHERE ( CASE { fn MONTH(Program.ProgramDate) } 
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
           END = @Month) AND (YEAR(ProgramDate)= @Year)
        GROUP BY { fn MONTH(Program.ProgramDate) }">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Month" PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="drpYear" Name="Year" PropertyName="SelectedValue" Type="String" />

        </SelectParameters>
     </asp:SqlDataSource>
    <br />

    <h4>Total Online Program Based on Month</h4>
     <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True">
         <Columns>
             <asp:BoundField DataField="MonthName" HeaderText="Month" SortExpression="MonthName" />
             <asp:BoundField DataField="TotalOnlinePrograms" HeaderText="Total Online Programs" SortExpression="TotalOnlinePrograms" />
             <asp:BoundField DataField="NumberOfKids" HeaderText="Number Of Children" SortExpression="NumberOfKids" />
             <asp:BoundField DataField="NumberOfPeople" HeaderText="Number Of Total People" SortExpression="NumberOfPeople" />
         </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT CASE { fn MONTH(OnlineProgram.ProgramDate) } 
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
      AS MonthName,count(distinct OnlineProgram.OnlineProgramID) as TotalOnlinePrograms,
	   SUM(NumberOfKids) as NumberOfKids, SUM(NumberOfPeople) AS NumberOfPeople FROM [OnlineProgram] WHERE (CASE { fn MONTH(OnlineProgram.ProgramDate) } 
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
           END = @Month) AND (YEAR(ProgramDate)=@Year) Group By { fn MONTH(OnlineProgram.ProgramDate) }">
         <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Month" PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="drpYear" Name="Year" PropertyName="SelectedValue" Type="String" />
          
        </SelectParameters>
    </asp:SqlDataSource>

    <br />

<%--        <h4>TOTALSSSSS Live Program Counts Based on Month</h4>
     <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True">
         <Columns>
             <asp:BoundField DataField="ProgramDate" HeaderText="ProgramDate" SortExpression="ProgramDate" />
             <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
             <asp:BoundField DataField="NumberOfChildren" HeaderText="NumberOfKids" SortExpression="NumberOfChildren" />
             <asp:BoundField DataField="NumberOfAdults" HeaderText="NumberOfPeople" SortExpression="NumberOfAdults" />
         </Columns>
        
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT SUM(ProgramAnimal.ProgramID) AS TotalPrograms,
        SUM(Program.NumberOfChildren + Program.NumberOfAdults) AS TotalParticipants FROM Animal LEFT OUTER JOIN ProgramAnimal ON Animal.AnimalID = ProgramAnimal.AnimalID LEFT OUTER JOIN Program 
        ON ProgramAnimal.ProgramID = Program.ProgramID WHERE (Animal.AnimalType = @AnimalType) ">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="AnimalType" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>

    </asp:SqlDataSource>


        <h4>TOTALSSSSS Online Program Counts Based on Month</h4>
     <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True">
         <Columns>
             <asp:BoundField DataField="ProgramDate" HeaderText="ProgramDate" SortExpression="ProgramDate" />
             <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
             <asp:BoundField DataField="NumberOfKids" HeaderText="NumberOfKids" SortExpression="NumberOfKids" />
             <asp:BoundField DataField="NumberOfPeople" HeaderText="NumberOfPeople" SortExpression="NumberOfPeople" />
         </Columns>
        
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT SUM(ProgramAnimal.ProgramID) AS TotalPrograms,
        SUM(Program.NumberOfChildren + Program.NumberOfAdults) AS TotalParticipants FROM Animal LEFT OUTER JOIN ProgramAnimal ON Animal.AnimalID = ProgramAnimal.AnimalID LEFT OUTER JOIN Program 
        ON ProgramAnimal.ProgramID = Program.ProgramID WHERE (Animal.AnimalType = @AnimalType) ">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="AnimalType" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>

    </asp:SqlDataSource>--%>
            <br />
                 <asp:Button ID="btnMonthlyVisualize" runat="server" Text="Visualize" class="btn btn-primary btn float-left btn-login btn-block" OnClick="btnVisualize_Click"></asp:Button>   
                 <br />
                 <asp:Button ID="btnBack" runat="server" Text="Back" class="btn btn-primary btn float-left btn-login btn-block" OnClick="btnBack_Click"></asp:Button>
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