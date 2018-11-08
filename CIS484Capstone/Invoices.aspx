<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Invoices.aspx.cs" Inherits="Invoices" EnableEventValidation="false"%>

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
           <li class="nav-item dropdown no-arrow">
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
          <li class="nav-item dropdown no-arrow active">
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
			<h1 >Invoices</h1>
			
		</div>
	</div>
 <div class="row d-flex justify-content-center">
     <br />
		<div class=" mx-auto ">
            <br />
			<asp:Button class="btn btn-primary btn-inside" ID="Button1" runat="server" OnClick="btnAddPaymentForm" Text="Add Payment" />
            
		
            <br />
		</div>
    
			
			
		
	</div>
          
            
       <div class="row"> 
         <div class="col-12"> <br /></div> 
           <div class="col-md-6 mx-auto d-flex justify-content-center"> <asp:Label ID="lblResponse" runat="server" Text=""/>
        
            <%--<asp:DropDownList ID="drpOrg" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="OrgName" DataValueField="OrgName"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT DISTINCT(Organization.OrgName) from Organization inner join PaymentRecord on Organization.OrgID = PaymentRecord.OrgID ">
            </asp:SqlDataSource>--%>
<br />
             <asp:Label class="TextHeading" Text ="Choose a Month:" runat ="server"></asp:Label>
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


                <asp:Label class="TextHeading" Text ="Choose a Year:" runat ="server"></asp:Label>
            <asp:DropDownList ID="drpYear" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="YEAR" DataValueField="YEAR">
                        <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"
                SelectCommand="SELECT Distinct(YEAR(paymentDate)) AS YEAR FROM PaymentRecord"></asp:SqlDataSource>
   

    </div>
           
       </div>
                       
                            

            

          
   </div>

          
      


          <br />

                             <div class=" col-md-7 blockInvoice  mx-auto ">

                                <div> <h2 class="text-center"> Current Invoices</h2>  <br /></div>
<div class="col-md-12 mx-auto d-flex justify-content-center InvoiceGrid">
                            <br />
    <asp:GridView ID="GridView1" runat="server"    gridlines="None" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="PaymentID" AllowSorting="True" ShowFooter="True" onrowdatabound="GridView1_RowDataBound" EmptyDataText="There are no records to display." >
        <Columns>
            <asp:TemplateField  HeaderText ="Select" FooterText="Total:"  > 
            <ItemTemplate>
                <asp:CheckBox id="chkSelect" runat ="server"  Width="110px"/>
            </ItemTemplate>
                <FooterStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:TemplateField>
            <asp:BoundField DataField="PaymentAmount"  HeaderText="Payment Amount" SortExpression="PaymentAmount" DataFormatString="{0:c}" ReadOnly="True" >
            <FooterStyle HorizontalAlign="Center" Width="150px"/>
            <ItemStyle HorizontalAlign="Center" Width="150px"/>
            </asp:BoundField>
              <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" >
            <ItemStyle HorizontalAlign="Center" Width="150px"/>
            </asp:BoundField>
           <asp:BoundField DataField="CheckNumber" HeaderText="Check Number" SortExpression="CheckNumber" InsertVisible="True" >
             <ItemStyle HorizontalAlign="Center" Width="150px"/>
            </asp:BoundField>
           
            <asp:BoundField DataField="PaymentID" HeaderText="Payment ID" InsertVisible="False" ReadOnly="True" SortExpression="PaymentID" Visible="False" />
            <asp:BoundField DataField="OrgName" HeaderText="Organization" SortExpression="OrgName" >

            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
           
           
            <asp:BoundField DataField="Invoice" HeaderText="Invoice" SortExpression="Invoice" >
             <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
         </Columns>

      </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"
                SelectCommand="SELECT [PaymentAmount], [CheckNumber],  [PaymentType], [OrgName],[PaymentID],[Invoice],CancelledInvoice FROM [PaymentRecord] left outer join Organization on  PaymentRecord.OrgID = Organization.OrgID WHERE (CASE { fn MONTH(paymentDate) } 
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
           END = @Month ) AND (YEAR(paymentDate)=@Year) AND CancelledInvoice ='N'" 
               ProviderName="System.Data.SqlClient">
                <SelectParameters>
                
            <asp:ControlParameter ControlID="drpMonth" Name="Month" PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="drpYear" Name="Year" PropertyName="SelectedValue" Type="String" />
                 <%--   <asp:ControlParameter ControlID="drpOrg" Name="OrgName" PropertyName="SelectedValue"  Type="String" />--%>

      
                </SelectParameters>
            </asp:SqlDataSource>
                            <br />
                            <br />
              </div>  
                                 <br />
              </div>


                  
          <div class="row d-flex justify-content-center">
     <br />
		<div class=" mx-auto ">
            <br />
			
            
			<asp:Button class="btn btn-primary btn-inside" ID="btnExportGrid" runat="server" Text="Export Invoices to Excel" OnClick="exportBtn_ClickAv" />
               
			
            <br />
		</div>
    
			
			
		
	</div>
          <br />

          <div class=" col-md-7 blockInvoice  mx-auto ">

                                <div> <h2 class="text-center"> Cancelled Invoices</h2>  <br /></div>

                        <div class="col-md-12 mx-auto d-flex justify-content-center">
                            <br />
                            <asp:GridView ID="GridView2" runat="server"  gridlines="None" DataSourceID="SqlDataSource5" AutoGenerateColumns="False" DataKeyNames="PaymentID" ShowFooter="True" onrowdatabound="GridView2_RowDataBound" AllowSorting="True" EmptyDataText="There are no records to display.">
       <Columns>
            <asp:TemplateField HeaderText ="Select" FooterText="Total:" >
            <ItemTemplate>
                <asp:CheckBox id="chkSelect" runat ="server" Width="110px"/>
            </ItemTemplate>
                <FooterStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:TemplateField>
            <asp:BoundField DataField="PaymentAmount" HeaderText="Payment Amount" SortExpression="PaymentAmount" DataFormatString="{0:c}" ReadOnly="True" >
            <FooterStyle HorizontalAlign="Center" Width="150px"/>
            <ItemStyle HorizontalAlign="Center" Width="150px"/>
            </asp:BoundField>
              <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" >
            <ItemStyle HorizontalAlign="Center" Width="150px"/>
            </asp:BoundField>
           <asp:BoundField DataField="CheckNumber" HeaderText="Check Number" SortExpression="CheckNumber" InsertVisible="True" >
             <ItemStyle HorizontalAlign="Center" Width="150px"/>
            </asp:BoundField>
           
            <asp:BoundField DataField="PaymentID" HeaderText="Payment ID" InsertVisible="False" ReadOnly="True" SortExpression="PaymentID" Visible="False" />
            <asp:BoundField DataField="OrgName" HeaderText="Organization" SortExpression="OrgName" >

            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
           
           
            <asp:BoundField DataField="Invoice" HeaderText="Invoice" SortExpression="Invoice" >
             <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
         </Columns>
                             </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"
                SelectCommand="SELECT [PaymentAmount], [CheckNumber],  [PaymentType], [OrgName],[PaymentID],[Invoice] FROM [PaymentRecord] left outer join Organization on  PaymentRecord.OrgID = Organization.OrgID WHERE (CASE { fn MONTH(paymentDate) } 
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
           END = @Month ) AND (YEAR(paymentDate)=@Year) AND CancelledInvoice ='Y'" 
               ProviderName="System.Data.SqlClient">
                <SelectParameters>
                
            <asp:ControlParameter ControlID="drpMonth" Name="Month" PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="drpYear" Name="Year" PropertyName="SelectedValue" Type="String" />
                   <%-- <asp:ControlParameter ControlID="drpOrg" Name="OrgName" PropertyName="SelectedValue"  Type="String" />--%>

      
                </SelectParameters>
            </asp:SqlDataSource>
 </div>
       <br />
                             
              </div>

          <div class="row d-flex justify-content-center">
     <br />
		<div class=" mx-auto ">
            <br />
			
               
			     <asp:Button class="btn btn-primary btn-inside" ID="btnExportGrid2" runat="server" Text="Export Cancelled Invoices to Excel" OnClick="exportBtn2_ClickAv" />
            <br />
		</div>
 	
	</div>

                          </div>
</asp:Content>