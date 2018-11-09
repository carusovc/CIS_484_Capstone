<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="YearlyInvoices.aspx.cs" Inherits="YearlyInvoices" EnableEventValidation="false"%>

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

      <a class="navbar-brand mr-1 logo" href="Default.aspx">WildTek</a>
    
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
           <li class="nav-item dropdown no-arrow ">
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
          <li class="nav-item dropdown no-arrow active">
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
        <div class="card-header NewUserTitle text-center">Invoices Based on Year</div>
        <div class="card-body text-center">
           <asp:Label ID="lblResponse" class="NewUserTitle text-center" runat ="server"></asp:Label>
       <div class="mx-auto d-flex justify-content-center">

 <asp:DropDownList ID="drpYear" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="YEAR" DataValueField="YEAR">
                        <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>"
                SelectCommand="SELECT Distinct(YEAR(paymentDate)) AS YEAR FROM PaymentRecord"></asp:SqlDataSource>
            
       </div>
            <br />
                   <%-- this div  is the internal div--%>
        <div class="block3">
  
                 <div class="tab-content">
                 
<div class="InternalTab">
    <div class="col-md-12 ProgramTitle">
             <br />
			  <div class="ReportTitle text-center">Current Invoices</div>
			
		</div>
	
                         <br />
<div class="row table-responsive mx-auto d-flex  justify-content-center">
              <div class="col-md-10 ">
    <br />
     <br />
   
<asp:GridView ID="GridView1" runat="server"  class="table table-bordered table-condensed table-hover" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="PaymentID" ShowFooter="True" onrowdatabound="GridView1_RowDataBound" EmptyDataText="There are no records to display." >
        <Columns>
            <asp:TemplateField HeaderText ="Select" >
            <ItemTemplate>
                <asp:CheckBox id="chkSelect" runat ="server" />
            </ItemTemplate>
                <FooterStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:TemplateField>
              <asp:BoundField DataField="MonthName" HeaderText="Month" SortExpression="Month" ReadOnly="True" FooterText="Total:" >
            <FooterStyle HorizontalAlign="Right" Font-Bold="True" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="PaymentAmount" HeaderText="Payment Amount" SortExpression="PaymentAmount" DataFormatString="{0:c}" ReadOnly="True" >
            <FooterStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
              <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
           <asp:BoundField DataField="CheckNumber" HeaderText="Check Number" SortExpression="CheckNumber" InsertVisible="True" >
             <ItemStyle HorizontalAlign="Center" />
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
                SelectCommand="SELECT CASE { fn MONTH(PaymentRecord.paymentDate) } 
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
           END as MonthName,[PaymentAmount], [CheckNumber],  [PaymentType], [OrgName],[PaymentID],[Invoice],CancelledInvoice FROM [PaymentRecord] left outer join Organization on  PaymentRecord.OrgID = Organization.OrgID WHERE (YEAR(paymentDate)=@Year) AND CancelledInvoice ='N'  ORDER BY MONTH(PaymentRecord.paymentDate)" 

               ProviderName="System.Data.SqlClient">
                <SelectParameters>

             <asp:ControlParameter ControlID="drpYear" Name="Year" PropertyName="SelectedValue" Type="String" />

                </SelectParameters>
            </asp:SqlDataSource>     
                  </div>
                
     </div>
    <div class="mx-auto d-flex justify-content-center">
           <asp:Button ID="Button1" runat="server" Text="Export Invoices to Excel" class="btn btn-primary btn-inside" OnClick="exportBtn_ClickAv" />
     
              </div>

                     <br />
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
			  <div class="ReportTitle text-center">Cancelled Invoices</div>
			
		</div>
	</div>
                         <br />

              <div class="col-md-12 mx-auto d-flex justify-content-center">
    <br />
     <br />
   
<asp:GridView ID="GridView2" runat="server"  class="table table-bordered table-condensed table-hover" DataSourceID="SqlDataSource5" AutoGenerateColumns="False" DataKeyNames="PaymentID" ShowFooter="True" onrowdatabound="GridView2_RowDataBound" AllowSorting="True" EmptyDataText="There are no records to display.">
       <Columns>
            <asp:TemplateField HeaderText ="Select"  >
            <ItemTemplate>
                <asp:CheckBox id="chkSelect" runat ="server" />
            </ItemTemplate>
                <FooterStyle Font-Bold="True" HorizontalAlign="Right" />
            </asp:TemplateField>
            <asp:BoundField DataField="MonthName" HeaderText="Month" SortExpression="Month" ReadOnly="True" FooterText="Total:" >
            <FooterStyle HorizontalAlign="Right" Font-Bold="True" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="PaymentAmount" HeaderText="Payment Amount" SortExpression="PaymentAmount" DataFormatString="{0:c}" ReadOnly="True" >
            <FooterStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
              <asp:BoundField DataField="PaymentType" HeaderText="Payment Type" SortExpression="PaymentType" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
           <asp:BoundField DataField="CheckNumber" HeaderText="Check Number" SortExpression="CheckNumber" InsertVisible="True" >
             <ItemStyle HorizontalAlign="Center" />
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
                SelectCommand="SELECT CASE { fn MONTH(PaymentRecord.paymentDate) } 
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
           END MonthName,[PaymentAmount], [CheckNumber],  [PaymentType], [OrgName],[PaymentID],[Invoice] FROM [PaymentRecord] left outer join Organization on  PaymentRecord.OrgID = Organization.OrgID WHERE (YEAR(paymentDate)=@Year) AND CancelledInvoice ='Y'  ORDER BY MONTH(PaymentRecord.paymentDate) " 
               ProviderName="System.Data.SqlClient">
                <SelectParameters>
                
          
             <asp:ControlParameter ControlID="drpYear" Name="Year" PropertyName="SelectedValue" Type="String" />
                   <%-- <asp:ControlParameter ControlID="drpOrg" Name="OrgName" PropertyName="SelectedValue"  Type="String" />--%>

      
                </SelectParameters>
            </asp:SqlDataSource> 
                  </div>
                  <div class="mx-auto d-flex justify-content-center">

              <asp:Button ID="btnExportGrid2" runat="server" class="btn btn-primary btn-inside" Text="Export Cancelled Invoices to Excel" OnClick="exportBtn2_ClickAv" />

              
              </div>
                     <br />
    </div>
             <p></p>
                 </div>
         

                   
         </div>
          </div>
          <p></p>
        
      </div>
    </div>



       
</section>         

</asp:Content>

