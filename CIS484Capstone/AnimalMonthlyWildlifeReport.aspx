<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AnimalMonthlyWildlifeReport.aspx.cs" Inherits="AnimalMonthlyWildlifeReport" EnableEventValidation="false" %>

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

      <a class="navbar-brand mr-1 logo" href="Programs.aspx">WildTek</a>

    </nav>

            <div id="wrapper">

 <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown" >
            <span>Programs</span>
          </a>
            <div class="dropdown-menu dropdown-menu-right" >
                <a class="dropdown-item" href="Programs.aspx">View Programs</a>
            <a class="dropdown-item" href="#" data-target="#AddProgram" data-toggle="modal" >Add New Program Type</a>
          </div>
        </li>
<%--      <li class="nav-item">
          <a class="nav-link" href="AnimalPage.aspx">--%>
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
            <a class="dropdown-item js-modal" href="#" data-target="#AddOrganization" data-toggle="modal">Add New Organization</a>
              <a class="dropdown-item js-modal" href="#" data-target="#UpdateOrganization" data-toggle="modal">Update Organizations</a>
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
          <a class="nav-link" href="Location.aspx">
            
            <span>Location</span></a>
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
      

<body>


      <div id="content-wrapper" class="section">


                 <section class="login-block  col-lg-8 col-md-10 col-s-12 mx-auto ">
    

<div class="container1 supreme-container">
      <div class="card  mx-auto mt-5">
        <div class="card-header NewUserTitle text-center">Reports Based on Animal</div>
        <div class="card-body">
          
       <div class="mx-auto d-flex justify-content-center">
  


   
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT Distinct YEAR(ProgramDate) AS YEAR FROM Program Order By YEAR(ProgramDate)"></asp:SqlDataSource>

            </div>

           
            
            <div class="mx-auto d-flex justify-content-center">
               <asp:DropDownList ID="drpAnimalType" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
 </asp:DropDownList></div>
                </div>

            <div class="row">
               
                <div class=" col-md-4 ml-auto InternalAnimalForm">
                    <asp:TextBox  class="InternalAnimalForm" ID="txtSearch" runat="server"></asp:TextBox>
                    <asp:Button ID ="btnSearch" runat ="server" Text ="Search" OnClick="btnSearch_Click" />
                </div>
               
            </div>

            <br />
             <%-- this div  is the internal div--%>
            <div id="SearchDiv" runat="server">
        <div class="block3">
  
                 <div class="tab-content">
                 
<div class="InternalTab">
    <div class="col-md-12 ProgramTitle">
             <br />
			  <div class="ReportTitle text-center">Search Results</div>
			
		</div>
	</div>
                         <br />

              <div class="col-md-12 mx-auto d-flex justify-content-center">
    <br />
     <br />
   
  <asp:GridView runat="server" id="gridSearch" class="table table-bordered table-condensed table-hover" AutoGenerateColumns="False" >
            <Columns>
               <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" >
                   <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" ReadOnly="True" SortExpression="AnimalType" />
                <asp:BoundField DataField="TotalPrograms" HeaderText="Total Programs" ReadOnly="True" SortExpression="TotalPrograms">
                               <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            </Columns>
        </asp:GridView>
          
         
                       <br /><br /><br />
                  </div>
                      </div>
             </div>
            <p></p>
                </div>
                         <%-- this div  is the internal div--%>

        <div class="block3">
  
                 <div class="tab-content">
                 
<div class="InternalTab">
    <div class="col-md-12 ProgramTitle">
             <br />
			  <div class="ReportTitle text-center">Count of Animal Total Program Involvement</div>
			
		</div>
	</div>
                         <br />

              <div class="col-md-12 mx-auto d-flex justify-content-center">
    <br />
     <br />
   

  <asp:GridView runat="server" id="totalAnimalCount" class="table table-bordered table-condensed table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" >

            <Columns>
               <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" >
                   <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" ReadOnly="True" SortExpression="AnimalType" />
                  <asp:BoundField DataField="TotalPrograms" HeaderText="Total Programs" ReadOnly="True" SortExpression="TotalPrograms" >
                               <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            </Columns>
        </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"

            SelectCommand="Select distinct a.AnimalID, a.AnimalName, a.AnimalType, (COUNT(p.AnimalID) + COUNT(o.AnimalID)) AS TotalPrograms From Animal a full join ProgramAnimal p ON a.AnimalID = p.AnimalID 
            full join OnlineAnimal o ON a.AnimalID = o.AnimalID GROUP BY a.AnimalID, a.AnimalName, a.AnimalType order by AnimalType, AnimalName">
            <SelectParameters>
                <asp:ControlParameter ControlID="drpAnimalType" Name="AnimalType" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

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
			  <div class="ReportTitle text-center">Animal Totals Based on Live Programs</div>
			
		</div>
	</div>
                         <br />

              <div class="col-md-12 mx-auto d-flex justify-content-center">
    <br />
     <br />
   

 <asp:GridView ID="AnimalLiveGrid" class="table table-bordered table-condensed table-hover" runat="server"  AutoGenerateColumns="False"     

     EmptyDataText="There are no records to display." >
        <Columns>

            <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" >
                 <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalOnSitePrograms" HeaderText="Total OnSite Programs" ReadOnly="True" SortExpression="TotalOnSitePrograms" >
                 <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalOffSitePrograms" HeaderText="Total OffSite Programs" ReadOnly="True" SortExpression="TotalOffSitePrograms" >
                 <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalLivePrograms" HeaderText="Total Live Programs" ReadOnly="True" SortExpression="TotalLivePrograms" >
                 <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="NumberOfChildren" HeaderText="Number Of Children" SortExpression="NumberOfChildren" >
                 <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="NumberOfAdults" HeaderText="Number Of Adults" SortExpression="NumberOfAdults" >
                 <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
          
        </Columns>
    </asp:GridView>

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
			  <div class="ReportTitle text-center">Animal Totals Based on Online Programs</div>
			
		</div>
	</div>
                         <br />

              <div class="col-md-12 mx-auto d-flex justify-content-center">
    <br />
     <br />
   
 <asp:GridView runat="server" id="gridOnlinePrograms" class="table table-bordered table-condensed table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
        EmptyDataText="There are no records to display.">
            <Columns>
             <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" >
                  <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalOnlinePrograms" HeaderText="Total Online Programs" ReadOnly="True" SortExpression="TotalOnlinePrograms" >
                 <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="NumberOfChildren" HeaderText="Number Of Children" SortExpression="NumberOfChildren">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalParticipants" HeaderText="Total Participants" ReadOnly="True" SortExpression="TotalParticipants" >
                 <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            </Columns>
        </asp:GridView>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"
            SelectCommand="SELECT  Animal.AnimalName, COUNT(Distinct OnlineProgram.OnlineProgramID) as TotalOnlinePrograms, SUM(OnlineProgram.NumberOfKids) AS NumberOfChildren,
                            SUM(NumberOfPeople + OnlineProgram.NumberOfKids) AS TotalParticipants 
                        FROM Animal, OnlineProgram, OnlineAnimal WHERE(Animal.AnimalType = @animalType) AND Animal.AnimalID = OnlineAnimal.AnimalID AND OnlineAnimal.OnlineProgramID = OnlineProgram.OnlineProgramID 
                         GROUP BY Animal.AnimalName, Animal.AnimalType ORDER BY Animal.AnimalName">
            <SelectParameters>
                <asp:ControlParameter ControlID="drpAnimalType" Name="AnimalType" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

          <br />
     <br /><br /><br />
              </div>
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
			  <div class="ReportTitle text-center">Search Results</div>
			
		</div>
	</div>
                         <br />

              <div class="col-md-12 mx-auto d-flex justify-content-center">
    <br />
     <br />
   
<asp:GridView ID="gridSearch"  class="table table-bordered table-condensed table-hover" runat="server" AutoGenerateColumns="False">
                      <Columns>
                          <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" SortExpression="AnimalType" />
                          <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
                  
                          <asp:BoundField DataField="TotalPrograms" HeaderText="Total Programs" ReadOnly="True" SortExpression="TotalPrograms"/>
                          
                      </Columns>
                 </asp:GridView>

          <br />
     <br /><br /><br />
              </div>
    </div>

                 </div>
          <p></p>

   
                   
         </div>--%>
              <asp:GridView runat="server" id="totalAnimalCount" class="table table-borderless table-condensed table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSource2"    
                  EmptyDataText="There are no records to display." >
            <Columns>
               <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName" />
            <asp:BoundField DataField="TotalOnlinePrograms" HeaderText="Total OnlinePrograms" ReadOnly="True" SortExpression="TotalOnlinePrograms" />
                  <asp:BoundField DataField="TotalPrograms" HeaderText="Total Programs" ReadOnly="True" SortExpression="TotalPrograms" />
            </Columns>
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>

          <div class="mx-auto d-flex justify-content-center">

                          <asp:Button ID="btnToExcel" runat="server" OnClick="btnToExcel_Click1" Text="Export to Excel"  class="btn btn-primary btn-inside" />
            <asp:Button ID="btnMonthlyVisualize" runat="server" Text="Visualize" class="btn btn-primary btn-inside" OnClick="btnVisualize_Click"></asp:Button>   
          
                      </div>
          <br />
              </div>

      </div>
    </div>



       
</section>         


</div>



</asp:Content>

