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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

                
            <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1 logo" href="Programs.aspx">WildTek</a>

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
          
            <span>Organizations</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" >
            <a class="dropdown-item" href="#" data-target="#AddOrganization" data-toggle="modal">Add New Organization</a>
              <a class="dropdown-item" href="#" data-target="#UpdateOrganization" data-toggle="modal">Update Organizations</a>
          </div>
        </li>

           <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown" >

            <span>Educators</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" >
            <a class="dropdown-item" href="#" data-target="#AddEducator" data-toggle="modal">Add New Educator</a>
            <a class="dropdown-item" href="#" data-target="#UpdateEducator" data-toggle="modal">Update Educators</a>
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

                 <section class="login-block  col-lg-8 col-md-10 col-s-12 mx-auto ">
    

<div class="container1">
      <div class="card  mx-auto mt-5">
        <div class="card-header NewUserTitle text-center">Reports Based on Year</div>
        <div class="card-body">
          
       <div class="mx-auto d-flex justify-content-center">
  

    <asp:DropDownList ID="drpYear" class="InternalAnimalForm btn btn-secondary btn-sm dropdown-toggle" style="background-color: #FFBC7C !important; color: #732700 !important;" runat="server" AutoPostBack="True"   DataSourceID="SqlDataSource4" DataTextField="YEAR" DataValueField="YEAR">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT Distinct YEAR(ProgramDate) AS YEAR FROM Program Order By YEAR(ProgramDate)"></asp:SqlDataSource>

            </div>
            <br />
                   <%-- this div  is the internal div--%>
        <div class="block3">
  
                 <div class="tab-content">
                 
<div class="InternalTab">
    <div class="col-md-12 ProgramTitle">
             <br />
			  <div class="ReportTitle text-center">Totals Based on Live Programs</div>
			
		</div>
	</div>
                         <br />

              <div class="col-md-12 mx-auto d-flex justify-content-center">
    <br />
     <br />
   
<asp:GridView ID="gridPrograms"  HeaderStyle-Backcolor="#FFBC7C"
    HeaderStyle-Forecolor="#732700" class="table table-bordered table-condensed table-hover"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="MonthName" HeaderText="Month" SortExpression="Month Name" ReadOnly="True" >
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalOnSitePrograms" HeaderText="Total OnSite Programs" SortExpression="TotalOnSitePrograms" ReadOnly="True" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalOffSitePrograms" HeaderText="Total OffSite Programs" SortExpression="TotalOffSitePrograms" ReadOnly="True" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalLivePrograms" HeaderText="Total Live Programs" SortExpression="TotalLivePrograms" ReadOnly="true" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="NumberOfChildren" HeaderText="Number Of Children" SortExpression="NumberOfChildren" ReadOnly="True" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="NumberOFAdults" HeaderText="Number Of Adults" SortExpression="NumberOFAdults" ReadOnly="True" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalParticipants" HeaderText="Total Participants" SortExpression="TotalParticipants" ReadOnly="True" >
            
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            
        </Columns>
     </asp:GridView>

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
          <br />
     <br /><br /><br />
              </div>
    </div>
                 </div>
          <p></p>
     <%-- this div  is the internal div--%>
        <div class="block3">
  
                 <div class="tab-content">
                 
<div class="InternalTab">
    <div class="col-md-12 ProgramTitle">
        <br />
			<div class="ReportTitle text-center">Totals Based on Online Programs</div>
			
		</div>
	</div>
                     <br />
              <div class="col-md-12 mx-auto d-flex justify-content-center">
    <br />
     <br />
   
 
    <asp:GridView ID="gridOnlinePrograms" HeaderStyle-Backcolor="#FFBC7C"
    HeaderStyle-Forecolor="#732700"  class="table table-bordered table-condensed table-hover"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="MonthName" HeaderText="Month" SortExpression="MonthName" >
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalOnlinePrograms" HeaderText="Total Online Programs" SortExpression="TotalOnlinePrograms" ReadOnly="True" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="NumberOfKids" HeaderText="Number Of Children" SortExpression="NumberOfKids" >
            
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            
            <asp:BoundField DataField="NumberOfPeople" HeaderText="Number Of People" SortExpression="NumberOfPeople" >
            

            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            
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
          <br />
     <br /><br /><br />
              </div>

    </div>
                 </div>


     
                   
         </div>
          <div class="mx-auto d-flex justify-content-center">

              <asp:Button ID="btnExport" runat="server" Text="Export to Excel" class="btn btn-primary btn-inside" OnClick="btnExportLive_Click"></asp:Button>



              </div>
        </div>
      </div>
    </div>



       
</section>         


</div>


</asp:Content>

