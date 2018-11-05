<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="paymentsCatey.aspx.cs" Inherits="paymentsCatey" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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

      <a class="navbar-brand mr-1" href="Default.html">WildTek</a>

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
			<h1 >Choose an Organization to View Payment</h1>
			
		</div>
	</div>
 

                        <div class="row WildTable">
        <div class="col-md-12 mx-auto d-flex justify-content-center">
            <asp:DropDownList ID="drpOrg" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="OrgName" DataValueField="OrgName"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT DISTINCT(Organization.OrgName) from Organization inner join PaymentRecord on Organization.OrgID = PaymentRecord.OrgID ">
            </asp:SqlDataSource>


                        <asp:DropDownList ID="drpMonth" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="MonthName" DataValueField="MonthName">
                        <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT CASE { fn MONTH(paymentDate) } 
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
           END as MonthName FROM [PaymentRecord] Group by { fn MONTH(paymentDate) } order by { fn MONTH(paymentDate) }"></asp:SqlDataSource>
    

             
            <asp:DropDownList ID="drpYear" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="YEAR" DataValueField="YEAR">
                        <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"
                SelectCommand="SELECT Distinct(YEAR(paymentDate)) AS YEAR FROM PaymentRecord"></asp:SqlDataSource>
    <br />

          
   </div>
                             <asp:Label Text ="Current Invoice" runat ="server"></asp:Label>
                            <br />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="PaymentID" AllowSorting="True" EmptyDataText="There are no records to display." OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="PaymentAmount" HeaderText="PaymentAmount" SortExpression="PaymentAmount" />
           <asp:BoundField DataField="CheckNumber" HeaderText="CheckNumber" SortExpression="CheckNumber" InsertVisible="True" />
            <asp:BoundField DataField="PaymentID" HeaderText="PaymentID" InsertVisible="False" ReadOnly="True" SortExpression="PaymentID" />
            <asp:BoundField DataField="OrgName" HeaderText="OrgName" SortExpression="OrgName" />
           
            <asp:BoundField DataField="PaymentType" HeaderText="PaymentType" SortExpression="PaymentType" />
            <asp:BoundField DataField="Invoice" HeaderText="Invoice" SortExpression="Invoice" />
         </Columns>
      </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"
                SelectCommand="SELECT [PaymentAmount], [CheckNumber],  [PaymentType], [OrgName],[PaymentID],[Invoice] FROM [PaymentRecord] inner join Organization on  PaymentRecord.OrgID = Organization.OrgID WHERE 
                (CASE { fn MONTH(paymentDate) } 
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
           END = @Month)  
             AND (YEAR(paymentDate)=@Year)  AND (OrgName=@OrgName)  AND CancelledInvoice ='Y'" ProviderName="System.Data.SqlClient">
                <SelectParameters>
                
            <asp:ControlParameter ControlID="drpMonth" Name="Month" PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="drpYear" Name="Year" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="drpOrg" Name="OrgName" PropertyName="SelectedValue"  Type="String" />

      
                </SelectParameters>
            </asp:SqlDataSource>
                            <br />
                            <asp:Label Text ="Cancelled Invoice" runat ="server"></asp:Label>
                            <br />
                            <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="PaymentID" AllowSorting="True" EmptyDataText="There are no records to display.">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="PaymentAmount" HeaderText="PaymentAmount" SortExpression="PaymentAmount" />
           <asp:BoundField DataField="CheckNumber" HeaderText="CheckNumber" SortExpression="CheckNumber" InsertVisible="True" />
            <asp:BoundField DataField="PaymentID" HeaderText="PaymentID" InsertVisible="False" ReadOnly="True" SortExpression="PaymentID" />
            <asp:BoundField DataField="OrgName" HeaderText="OrgName" SortExpression="OrgName" />
           
            <asp:BoundField DataField="PaymentType" HeaderText="PaymentType" SortExpression="PaymentType" />
            <asp:BoundField DataField="Invoice" HeaderText="Invoice" SortExpression="Invoice" />
         </Columns>
                             </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"
                SelectCommand="SELECT [PaymentAmount], [CheckNumber],  [PaymentType], [OrgName],[PaymentID],[Invoice] FROM [PaymentRecord] inner join Organization on  PaymentRecord.OrgID = Organization.OrgID WHERE 
                (CASE { fn MONTH(paymentDate) } 
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
           END = @Month)  
             AND (YEAR(paymentDate)=@Year)  AND (OrgName=@OrgName)  AND CancelledInvoice ='N'" ProviderName="System.Data.SqlClient">
                <SelectParameters>
                
            <asp:ControlParameter ControlID="drpMonth" Name="Month" PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="drpYear" Name="Year" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="drpOrg" Name="OrgName" PropertyName="SelectedValue"  Type="String" />

      
                </SelectParameters>
            </asp:SqlDataSource>
    </div>



           <%--  <asp:Button ID="btnExport" runat="server" OnClick="btnExport_Click" Text="Button" />--%>
</asp:Content>

