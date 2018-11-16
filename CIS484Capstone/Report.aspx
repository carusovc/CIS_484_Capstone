﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="AnimalMonthlyWildlifeReport" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

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






   <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand logo" href="Programs.aspx">Wildtek</a>

  <div class="collapse navbar-collapse "  id="navbarTogglerDemo03">
    <ul class="navbar-nav ml-auto mt-2 mt-lg-0 d-md-none">
      <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <%--<a class="nav-link" href="Programs.aspx">--%>

                    <span>Programs</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Programs.aspx">View Programs</a>
                    <a class="dropdown-item" href="#" data-target="#AddProgram" data-toggle="modal">Add New Program Type</a>
                </div>
            </li>
            <%--      <li class="nav-item">
          <a class="nav-link" href="AnimalPage.aspx">
            <i class="fas fa-fw fa-book-open"></i>--%>
            <li class="nav-item dropdown no-arrow ">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">



                    <span>Animals</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="AnimalPage.aspx">View Animals</a>
                    <a class="dropdown-item" href="#" data-target="#AddAnimal" data-toggle="modal">Add New Animal</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateAnimal" data-toggle="modal">Edit Animals</a>
                </div>
            </li>
                         <li class="nav-item active">
                    <a class="nav-link" href="Report.aspx">

                        <span>Reports</span></a>
                </li>
            <li class="nav-item dropdown no-arrow ">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Payment</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Payment.aspx">New Payment Form</a>
                    <a class="dropdown-item" href="Invoices.aspx">Invoices</a>
                    <a class="dropdown-item" href="YearlyInvoices.aspx">Yearly Invoices</a>
                </div>
            </li>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Organizations</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#" data-target="#AddOrganization" data-toggle="modal">Add New Organization</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateOrganization" data-toggle="modal">Edit Organizations</a>
                </div>
            </li>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Educators</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#" data-target="#AddEducator" data-toggle="modal">Add New Educator</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateEducator" data-toggle="modal">Edit Educators</a>
                </div>
            </li>
            <li class="nav-item " style="display: inline-block;
  white-space: nowrap;">
                <a class="nav-link" href="createUser.aspx">

                    <span>Create Outreach Coordinator Access</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Default.aspx">

                    <span>Logout</span></a>
            </li>

    </ul>
   
  </div>
</nav>

    

    <div id="wrapper">

        <!-- Sidebar -->

        <ul class="sidebar navbar-nav d-none d-md-block">
            <li class="nav-item dropdown no-arrow ">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <%--<a class="nav-link" href="Programs.aspx">--%>

                    <span>Programs</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Programs.aspx">View Programs</a>
                    <a class="dropdown-item" href="#" data-target="#AddProgram" data-toggle="modal">Add New Program Type</a>
                </div>
            </li>
            <%--      <li class="nav-item">
          <a class="nav-link" href="AnimalPage.aspx">
            <i class="fas fa-fw fa-book-open"></i>--%>
            <li class="nav-item dropdown no-arrow ">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                     <span>Animals</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="AnimalPage.aspx">View Animals</a>
                    <a class="dropdown-item" href="#" data-target="#AddAnimal" data-toggle="modal">Add New Animal</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateAnimal" data-toggle="modal">Edit Animals</a>
                </div>
            </li>
             <li class="nav-item active">
                    <a class="nav-link" href="Report.aspx">

                        <span>Reports</span></a>
                </li>
            <li class="nav-item ">
                    <a class="nav-link" href="Tableau.aspx">

                        <span>Visualization</span></a>
                </li>
            <li class="nav-item dropdown no-arrow ">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Payment</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Payment.aspx">New Payment Form</a>
                    <a class="dropdown-item" href="Invoices.aspx">Invoices</a>
                    <a class="dropdown-item" href="YearlyInvoices.aspx">Yearly Invoices</a>
                </div>
            </li>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Organizations</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#" data-target="#AddOrganization" data-toggle="modal">Add New Organization</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateOrganization" data-toggle="modal">Edit Organizations</a>
                </div>
            </li>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Educators</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#" data-target="#AddEducator" data-toggle="modal">Add New Educator</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateEducator" data-toggle="modal">Edit Educators</a>
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

        <div id="content-wrapper" class="section">


            <section class="login-block  col-lg-8 col-md-10 col-s-12 mx-auto ">


                <div class="container1 supreme-container">
                    <div class="card  mx-auto mt-5">
                        <div class="card-header NewUserTitle text-center">Reports</div>
                        <div class="card-body">

                          
</div>

                          <div class="mx-auto d-flex justify-content-center">

<%--                                <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT Distinct YEAR(ProgramDate) AS YEAR FROM Program Order By YEAR(ProgramDate)"></asp:SqlDataSource>--%>

                            </div>


                        <ul class="nav nav-tabs block4" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active TabStyle" data-toggle="tab" href="#AnimalTab" style="color:black;">Animal</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link TabStyle" data-toggle="tab" href="#MonthlyTab" style="color:black;">Monthly</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link TabStyle" data-toggle="tab" href="#YearlyTab" style="color:black;">Yearly</a>
                </li>
                
            </ul>
            <div class="tab-content">
                <div id="AnimalTab" class="container1 block3 tab-pane  WildTable active">
                    <div class="InternalAnimalTab">
                        <%--<p>  Hello</p>
                        <br />
                        <br /><br /><br />--%>




                        
                              <div class="mx-auto d-flex justify-content-center">

                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT Distinct YEAR(ProgramDate) AS YEAR FROM Program Order By YEAR(ProgramDate)"></asp:SqlDataSource>

                            </div>



                            <div class="mx-auto d-flex justify-content-center">
                                <asp:DropDownList ID="drpAnimalType" class="InternalAnimalForm btn btn-secondary btn-sm dropdown-toggle" style="background-color: #FFFfff !important; color: #732700 !important; border-color:grey;"  runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>
                            </div>
                        

                         <div class="row">
                <div class=" col-md-4 InternalAnimalForm">
                    </div>
                <div class=" col-md-8 text-right InternalAnimalForm">
                    <asp:TextBox  class="InternalAnimalForm" ID="txtSearch" runat="server"></asp:TextBox>
                    <asp:Button ID ="btnSearch" class="btn" runat ="server" Text ="Search" OnClick="btnSearch_Click" />
                    &nbsp;&nbsp;&nbsp;
                    
                </div>
            
            </div>





                         <div id="SearchDiv" runat="server">
                            <div class="block3">
                                </div> 
                        <div class="tab-content">

                                    <div class="InternalTab">
                                        <div class="col-md-12 ProgramTitle">
                                            <br />
                                            <div class="ReportTitle text-center">Search Results</div>

                                        </div>
                                    </div>
                                    <br />
                            </div> 
                                    <div class="row table-responsive mx-auto d-flex justify-content-center">
                                        <br />
                                        <br />
                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <asp:GridView HeaderStyle-Backcolor="#FFBC7C"
    HeaderStyle-Forecolor="#732700" runat="server" ID="gridSearch" class="table table-bordered table-condensed table-hover" AutoGenerateColumns="False">
                                            <Columns>
                                                <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName">
                                                    <ItemStyle HorizontalAlign="Left" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="AnimalType" HeaderText="Animal Type" ReadOnly="True" SortExpression="AnimalType" />
                                                <asp:BoundField DataField="TotalPrograms" HeaderText="Total Programs" ReadOnly="True" SortExpression="TotalPrograms">
                                                    <ItemStyle HorizontalAlign="Center" />
                                                </asp:BoundField>
                                            </Columns>
                                        </asp:GridView>

                                            </div>
                                        <br />
                                        <br />
                                        <br />
                                    </div>
                                </div>
  
      
                        
                        <div class="block3">

                            <div class="tab-content">

                                <div class="InternalTab">
                                    <div class="col-md-12 ProgramTitle">
                                        <br />
                                        <div class="ReportTitle text-center">Count of Animal Total Program Involvement</div>

                                    </div>
                                </div>
                                <br />

                                     <div class=" row  table-responsive mx-auto d-flex justify-content-center">
                                    <br />
                                    <br />

<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <asp:GridView  HeaderStyle-Backcolor="#FFBC7C"
                                    HeaderStyle-Forecolor="#732700" runat="server" ID="GridView1" class=" table table-bordered table-condensed table-hover" 
                                        AutoGenerateColumns="False"  DataSourceID="SqlDataSource3">

                                        <Columns>
                                            <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName">
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                           <asp:BoundField DataField="TotalLivePrograms" HeaderText="Total Live Programs" ReadOnly="True" SortExpression="TotalLivePrograms">
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="TotalOnLinePrograms" HeaderText="Total Online Programs" ReadOnly="True" SortExpression="TotalOnlinePrograms">
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                        </Columns>
                                    </asp:GridView>

                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"
                                        SelectCommand="SELECT  a.AnimalName, Count(pa.ProgramID) AS TotalLivePrograms, COUNT(oa.OnlineProgramID) as TotalOnlinePrograms 
                                        FROM ProgramAnimal pa full join Animal a on pa.animalId = a.animalID full join OnlineAnimal oa on a.AnimalID = oa.AnimalID 
                                        WHERE(a.AnimalType = @animalType) GROUP BY a.AnimalName ORDER BY a.AnimalName">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="drpAnimalType" Name="AnimalType" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
    </div>
                                    <br />
                                    <br />
                                    <br />
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

                                <div class="row table-responsive mx-auto d-flex justify-content-center">
                                    <br />
                                    <br />
<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <asp:GridView  HeaderStyle-Backcolor="#FFBC7C"
    HeaderStyle-Forecolor="#732700" ID="AnimalLiveGrid" class="table table-bordered table-condensed table-hover" runat="server" AutoGenerateColumns="False"
                                        EmptyDataText="There are no records to display.">
                                        <Columns>

                                            <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName">
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="TotalOnSitePrograms" HeaderText="OnSite Programs" ReadOnly="True" SortExpression="TotalOnSitePrograms">
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="TotalOffSitePrograms" HeaderText="OffSite Programs" ReadOnly="True" SortExpression="TotalOffSitePrograms">
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="TotalLivePrograms" HeaderText="Total Live Programs" ReadOnly="True" SortExpression="TotalLivePrograms">
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="NumberOfChildren" HeaderText="Number Of Children" SortExpression="NumberOfChildren">
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="NumberOfAdults" HeaderText="Number Of Adults" SortExpression="NumberOfAdults">
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>

                                        </Columns>
                                    </asp:GridView>
                                    <br />
                                  
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
                                        <div class="ReportTitle text-center">Animal Totals Based on Online Programs</div>

                                    </div>
                                </div>
                                <br />
                                <div class="row table-responsive mx-auto d-flex justify-content-center">
                                    <br />
                                    <br />

<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <asp:GridView HeaderStyle-Backcolor="#FFBC7C"
    HeaderStyle-Forecolor="#732700" runat="server" ID="gridOnlinePrograms" class="table table-bordered table-condensed table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                                        EmptyDataText="There are no records to display.">
                                        <Columns>
                                            <asp:BoundField DataField="AnimalName" HeaderText="Animal Name" SortExpression="AnimalName">
                                                <ItemStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="TotalOnlinePrograms" HeaderText="Total Online Programs" ReadOnly="True" SortExpression="TotalOnlinePrograms">
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="NumberOfChildren" HeaderText="Number Of Children" SortExpression="NumberOfChildren">
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="TotalParticipants" HeaderText="Total Participants" ReadOnly="True" SortExpression="TotalParticipants">
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                        </Columns>
                                    </asp:GridView>

                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"
                                        SelectCommand="SELECT  Animal.AnimalName, COUNT(Distinct OnlineProgram.OnlineProgramID) as TotalOnlinePrograms, SUM(OnlineProgram.NumberOfKids) AS NumberOfChildren,
                            SUM(NumberOfPeople + OnlineProgram.NumberOfKids) AS TotalParticipants 
                        FROM Animal, OnlineProgram, OnlineAnimal WHERE(Animal.AnimalType = @animalType) AND Animal.AnimalID = OnlineAnimal.AnimalID AND OnlineAnimal.OnlineProgramID = OnlineProgram.OnlineProgramID 
                         GROUP BY Animal.AnimalName, Animal.AnimalType ORDER BY Animal.AnimalName">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="drpAnimalType" Name="AnimalType" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <br />

                                </div>
                                      </div>

                            </div>
                        </div>




                    <br />
                    <div class="mx-auto d-flex justify-content-center">
                        <asp:Button ID="btnToExcel" runat="server" OnClick="btnToExcel_Click1" Text="Export to Excel" class="btn btn-primary btn-inside" />
                        <asp:Button ID="btnMonthlyVisualize" runat="server" Text="Visualize" class="btn btn-primary btn-inside" OnClick="btnVisualize_Click"></asp:Button>

                    </div>

                </div>

                    </div>
                <div id="MonthlyTab" class="container1 block3 tab-pane text-center WildTable">
                    
    
        <div class="card-body">
          
       <div class="mx-auto d-flex justify-content-center">
  

      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"  class="InternalAnimalForm btn btn-secondary btn-sm dropdown-toggle" style="background-color: #FFFfff !important; color: #732700 !important; border-color:grey;" DataSourceID="SqlDataSource6" DataTextField="MonthName" DataValueField="MonthName">
                        <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>&nbsp&nbsp&nbsp&nbsp
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT CASE { fn MONTH(Program.ProgramDate) } 
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
           END as MonthName FROM [Program] Group by { fn MONTH(Program.ProgramDate) } order by { fn MONTH(Program.ProgramDate) }"></asp:SqlDataSource>
    
         
             
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True"  class="InternalAnimalForm btn btn-secondary btn-sm dropdown-toggle" style="background-color: #FFFfff !important; color: #732700 !important; border-color:grey;" DataSourceID="SqlDataSource7" DataTextField="YEAR" DataValueField="YEAR">
                        <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT Distinct(YEAR(ProgramDate)) AS YEAR FROM Program"></asp:SqlDataSource>
    
    <br />
            </div>
            <br />
                   <%-- this div  is the internal div--%>
        <div class="block3">
  
                 <div class="tab-content">
                 
<div class="InternalTab">
    <div class="col-md-12 ProgramTitle">
             <br />
			  <div class="ReportTitle text-center">Monthly Totals Based on Live Programs</div>
			
		</div>
	</div>
                         <br />

              <div class="row table-responsive mx-auto d-flex justify-content-center">
    <br />
     <br />
   <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
<asp:GridView ID="gridLivePrograms" HeaderStyle-Backcolor="#FFBC7C"
    HeaderStyle-Forecolor="#732700" runat="server" class="table table-bordered table-condensed table-hover" 
    AutoGenerateColumns="False" DataSourceID="SqlDataSource9" EmptyDataText="There are no records to display.">
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
            <asp:BoundField DataField="TotalLivePrograms" HeaderText="Total Live Programs" SortExpression="TotalLivePrograms" ReadOnly="True" >
                 <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="NumberOfChildren" HeaderText="Number Of Children" SortExpression="NumberOfChildren" ReadOnly="True" >
                 <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="NumberOfAdults" HeaderText="Number Of Adults" SortExpression="NumberOfAdults" ReadOnly="True" >
                 <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
                  </Columns>
     </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT CASE { fn MONTH(Program.ProgramDate) } 
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
      AS MonthName, SUM(CASE WHEN onoff = 1 THEN 1 ELSE 0 END) AS TotalOnSitePrograms, SUM(CASE WHEN onoff = 0 THEN 1 ELSE 0 END) AS TotalOffSitePrograms, count(Program.ProgramID) as TotalLivePrograms,
         SUM(NumberOfChildren) as NumberOfChildren, SUM(NumberOfAdults) AS NumberOfAdults, SUM(NumberOfChildren + NumberOfAdults) AS TotalParticipants 
		 FROM Program WHERE (CASE { fn MONTH(Program.ProgramDate) } 
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
           END = @Month) AND (YEAR(ProgramDate)=@Year) GROUP BY { fn MONTH(Program.ProgramDate) } ORDER BY { fn MONTH(Program.ProgramDate) }">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Month" PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="drpYear" Name="Year" PropertyName="SelectedValue" Type="String" />

        </SelectParameters>
     </asp:SqlDataSource>
         <br />
              </div>
    </div>
                 </div> </div>
          <p></p>
     <%-- this div  is the internal div--%>
        <div class="block3">
  
                 <div class="tab-content">
                 
<div class="InternalTab">
    <div class="col-md-12 ProgramTitle">
        <br />
			<div class="ReportTitle text-center">Monthly Totals Based on Online Programs</div>
			
		</div>
	</div>
                     <br />
              <div class="row table-responsive mx-auto d-flex justify-content-center">
    <br />
     <br />
   
 <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <asp:GridView runat="server" HeaderStyle-Backcolor="#FFBC7C"
    HeaderStyle-Forecolor="#732700" id= "gridOnlineAnimalsTotals" class="table table-bordered table-condensed table-hover" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource11" EmptyDataText="There are no records to display.">
        <Columns>
             <asp:BoundField DataField="MonthName" HeaderText="Month" SortExpression="Month Name" ReadOnly="True" >
                 <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
             <asp:BoundField DataField="TotalOnlinePrograms" HeaderText="Total Online Programs" SortExpression="TotalOnlinePrograms" ReadOnly="True" >
                  <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
             <asp:BoundField DataField="NumberOfKids" HeaderText="Number Of Kids" SortExpression="NumberOfKids" ReadOnly="True" >
                  <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
             <asp:BoundField DataField="NumberOfPeople" HeaderText="Number Of People" SortExpression="NumberOfPeople" ReadOnly="True" >
                  <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
         </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT CASE { fn MONTH(OnlineProgram.ProgramDate) } 
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
      AS MonthName, Count(OnlineProgram.OnlineProgramID) as TotalOnlinePrograms,
	   SUM(NumberOfKids) as NumberOfKids, SUM(NumberOfPeople) as NumberOfPeople FROM [OnlineProgram] WHERE (CASE { fn MONTH(OnlineProgram.ProgramDate) } 
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
           END = @Month) AND (YEAR(OnlineProgram.ProgramDate)=@Year) GROUP BY { fn MONTH(OnlineProgram.ProgramDate) } ORDER BY { fn MONTH(OnlineProgram.ProgramDate) }">
         <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Month" PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="drpYear" Name="Year" PropertyName="SelectedValue" Type="String" />
          
        </SelectParameters>
    </asp:SqlDataSource>
          <br />
    
              </div>
                   </div>

    


     
                   
         </div>
            <br />
          <div class="mx-auto d-flex justify-content-center">
<asp:Button ID="btnMonthToExcel" runat="server" OnClick="btnMonthsToExcel_Click" Text="Export to Excel"  class="btn btn-primary btn-inside" />
           
    <asp:Button ID="btnVisualizeMonthly" runat="server" Text="Visualize" class="btn btn-primary btn-inside" OnClick="btnVisualizeMonthly_Click"></asp:Button>   
            
              </div>
          <br />
        </div>

                </div>

                </div>



                <div id="YearlyTab" class="container1 block3 tab-pane  text-center WildTable">
                    <div class="InternalAnimalTab">
    <div class="col-md-12 ProgramTitle">
             <br />
         <asp:DropDownList ID="drpYear" class="InternalAnimalForm btn btn-secondary btn-sm dropdown-toggle" style="background-color: #FFFfff !important; color: #732700 !important; border-color:grey;" runat="server" AutoPostBack="True"   DataSourceID="SqlDataSource4" DataTextField="YEAR" DataValueField="YEAR">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
			  <div class="ReportTitle text-center">Totals Based on Live Programs</div>
			
		</div>
	
                         <br />

              <div class="row table-responsive mx-auto d-flex justify-content-center">
    <br />
     <br />
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
<asp:GridView ID="gridPrograms"  HeaderStyle-Backcolor="#FFBC7C"
    HeaderStyle-Forecolor="#732700" class="table table-bordered table-condensed table-hover"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" HorizontalAlign="Center">
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
      AS MonthName, SUM(CASE WHEN onoff = 1 THEN 1 ELSE 0 END) AS TotalOnSitePrograms, SUM(CASE WHEN onoff = 0 THEN 1 ELSE 0 END) AS TotalOffSitePrograms, Count(Program.ProgramID) as TotalLivePrograms,
        SUM(NumberOfChildren) as NumberOfChildren,
		SUM(NumberOfAdults) AS NumberOFAdults, 
        SUM(NumberOfChildren + NumberOfAdults) AS TotalParticipants FROM Program WHERE (YEAR(ProgramDate) = @Year) GROUP BY { fn MONTH(Program.ProgramDate) } ORDER BY { fn MONTH(Program.ProgramDate) }">
        <SelectParameters>
            <asp:ControlParameter ControlID="drpYear" Name="YEAR" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
         <br />
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
              <div class="row table-responsive mx-auto d-flex justify-content-center">
    <br />
     <br />
   
 <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <asp:GridView ID="GridView2" HeaderStyle-Backcolor="#FFBC7C"
    HeaderStyle-Forecolor="#732700"  class="table table-bordered table-condensed table-hover"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" HorizontalAlign="Center">
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
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT CASE { fn MONTH(OnlineProgram.ProgramDate) } 
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
              </div>
                  </div>

    </div>
                 </div>

           <br />
          <div class="mx-auto d-flex justify-content-center">
              
              <asp:Button ID="btnExportYearlyInformation" runat="server" Text="Export to Excel" class="btn btn-primary btn-inside" OnClick="btnExportLiveYearlyInformation_Click"></asp:Button>

              </div>
         </div>
        </div>
              </div>
        </div>
      
                




                





    </section>      

    </div>
    </div>
</div>





    </div>
</asp:Content>

