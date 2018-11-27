<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payments" %>

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
  <a class="navbar-brand logo" href="Programs.aspx">Wildlife Center</a>

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
             <li class="nav-item ">
                    <a class="nav-link" href="Report.aspx">

                        <span>Reports</span></a>
                </li>
            <li class="nav-item dropdown no-arrow active">
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

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Volunteers</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#" data-target="#AddVolunteer" data-toggle="modal">Add New Volunteer</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateVolunteer" data-toggle="modal">Edit Volunteers</a>
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
             <li class="nav-item ">
                    <a class="nav-link" href="Report.aspx">

                        <span>Reports</span></a>
                </li>
            <li class="nav-item ">
                    <a class="nav-link" href="Tableau.aspx">

                        <span>Visualization</span></a>
                </li>
            <li class="nav-item dropdown no-arrow active">
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

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Volunteers</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#" data-target="#AddVolunteer" data-toggle="modal">Add New Volunteer</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateVolunteer" data-toggle="modal">Edit Volunteers</a>
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


        <div class="container-fluid block ">
     
  





  <%--  <div id="wrapper">

        <!-- Sidebar -->
        <ul class="sidebar navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="Programs.aspx">
                    <i class="fas fa-fw fa-book-open"></i>
                    <span>Programs</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="AnimalPage.aspx">
                    <i class="fas fa-fw fa-book-open"></i>
                    <span>Animal</span>
                </a>
            </li>
            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                    <i class="fas fa-envelope fa-fw"></i>
                    <span>Reports</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Report.aspx">Reports</a>
                  <%-- --%>
                   <%-- --%>
                <%--    <a class="dropdown-item" href="TabLiveReports.aspx">Live Program</a>
                    <a class="dropdown-item" href="TabOnlineProgramReports.aspx">Online Program</a>
                    <a class="dropdown-item" href="TabGradeReport.aspx">Grade</a>--%> 
               <%-- </div>
            </li>
           <%-- <li class="nav-item dropdown no-arrow active">--%>
<%--                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                    <i class="fas fa-envelope fa-fw"></i>
                    <span>Payment</span>
                </a>--%>
<%--                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Payment.aspx">New Payment Form</a>
                    <a class="dropdown-item" href="Invoices.aspx">Invoices</a>
                    <a class="dropdown-item" href="YearlyInvoices.aspx">Yearly Invoices</a>--%>
                
          

<%--            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                    <i class="fas fa-envelope fa-fw"></i>
                    <span>Add New Program Content</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#" data-target="#AddProgram" data-toggle="modal">Add New Program Type</a>
                    <a class="dropdown-item" href="#" data-target="#AddOrganization" data-toggle="modal">Add New Organization</a>
                    <a class="dropdown-item" href="#" data-target="#AddAnimal" data-toggle="modal">Add New Animal</a>
                    <a class="dropdown-item" href="#" data-target="#AddEducator" data-toggle="modal">Add New Educator</a>
                </div>
            </li>--%>

<%--            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                    <i class="fas fa-envelope fa-fw"></i>
                    <span>Update Program Content</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#" data-target="#UpdateOrganization" data-toggle="modal">Update Organizations</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateAnimal" data-toggle="modal">Update Animals</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateEducator" data-toggle="modal">Update Educators</a>
                </div>
            </li>--%>



        





        <div >
            <div class="container-fluid">
                
    <div class="container1">
      <div class="card card-register mx-auto mt-5">
                        <div class="card-header NewUserTitle">Add New Payment</div>
                        <div class="card-body">
                            <div class="form-group">

                                 <div class="form-group row">
                                  <div class="col-sm-12 col-md-6">
                                    <h6>Invoice Number</h6>
                                
                                <asp:TextBox ID="txtInvoiceNum" runat="server" class="form-control" placeholder ="Enter Invoice Number"></asp:TextBox>
                                   
                                     </div>
                                <%--<asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server" ControlToValidate="txtInvoiceNum" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                     
                                  <div class="col-sm-12 col-md-6">   
                                      <h6>Date of Payment</h6>
                                <asp:Label runat="server" id="lblDate"></asp:Label>
                                </div>
                                     </div>
                                 <p></p>


                                <div class="form-group row">
                             <div class="col-sm-12 col-md-6">
                                 <h6>Program</h6>
                                    <asp:DropDownList ID="ddlProgramType" runat="server" class="form-control" AppendDataBoundItems="false" AutoPostBack="true" DataTextField="OrgName" DataValueField="OrgID" OnSelectedIndexChange="ddlProgramType_SelectedIndexChanged">                                  
                                        <asp:ListItem Value ="0">--Select Program--</asp:ListItem> </asp:DropDownList>
                                  <%--<asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="ddlOrganization" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                </div>
                                    <div class="col-sm-12 col-md-6">
                               <h6>Organization</h6>
                                    <asp:DropDownList ID="ddlOrganization" runat="server" class="form-control" AppendDataBoundItems="false" AutoPostBack="false" DataTextField="OrgName" DataValueField="OrgID" >                                  
                                        <asp:ListItem Value ="0">--Select Organization--</asp:ListItem> </asp:DropDownList>
<%--                                  <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server" ControlToValidate="ddlOrganization" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                </div>
                                 
                                </div>
                                <p></p>
                                

                               <div class="form-group row">
                        
                            
                               
                              <%--  <asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged" Style="text-align: left;" class="form-control">
                                                <asp:ListItem>Month</asp:ListItem>
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
                                    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="ddlMonth" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>
                                
                                   </div>
                                 <div class="col-sm-12 col-md-6">
                                <h6>Date</h6>
                               
                                <asp:DropDownList ID="ddlDate" runat="server" AutoPostBack="True" Style="text-align: left;" class="form-control">

                                            <asp:ListItem Value="Day"></asp:ListItem>
                                        </asp:DropDownList>
                        <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="ddlDate" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>

                                </div>
                                   </div>
                                <p></p>

                                
                                <p></p>

                                <div class="form-group row">
                              <div class="col-sm-12 col-md-6">
                                <h6>Year</h6>
                                
                                <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged" class="form-control">
                                <asp:ListItem Value="Year"></asp:ListItem>
                                </asp:DropDownList>
                                    <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="ddlYear" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>
                                  --%>

                                 <div class="col-sm-12 col-md-6">
                                <h6>Amount</h6>
                              
                                <asp:TextBox ID="txtAmount" runat="server" class="form-control" placeholder ="Enter Amount"></asp:TextBox>
                            <%--         <asp:CompareValidator ID="AmountValidator" runat="server" ControlToValidate="txtAmount" Type="Integer"
                                        Operator="DataTypeCheck" ErrorMessage="Value must be a money" />--%>
<%--                                <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="txtAmount" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                     
                                
                                </div>
                              <%--     <div class="col-sm-12 col-md-6">
                                       <h6>Select</h6>
                                       <p></p>
                                    <asp:RadioButtonList ID="rdbPaid" runat="server"> 
                                        <asp:ListItem Text="Paid" Value ="Y"/>
                                        <asp:ListItem  Text="Not Paid" Value ="N"/>
                                      
                                 </asp:RadioButtonList>
                                       </div>--%>
                                </div>
                                <p></p>

                                
                                <p></p>
                                   <p></p>

                                <div class="form-group row">
                               <div class="col-sm-12 col-md-6">
                                <h6> Payment Type</h6>
                               <asp:DropDownList ID="ddlPaymentType" runat="server"  class="form-control" AppendDataBoundItems="false" AutoPostBack="true" OnSelectedIndexChanged="ddlPaymentType_SelectedIndexChanged">
                                    <asp:ListItem Value ="0">--Payment Type--</asp:ListItem>
                                    <asp:ListItem>Check</asp:ListItem>
                                    <asp:ListItem>Credit</asp:ListItem>
                                    <asp:ListItem>Debit</asp:ListItem>
                               </asp:DropDownList>
                             
                                </div>
                              <%--<asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="ddlPaymentType" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                 <div class="col-sm-12 col-md-6">
                               <h6>Check Number</h6>
                             
                               
                                <asp:TextBox ID="txtCheckNum" runat="server" class="form-control" ReadOnly="true" placeholder ="Enter Check Number"></asp:TextBox>
                                    <%-- <asp:CompareValidator ID="CheckNumberValidator" runat="server" ControlToValidate="txtCheckNum" Type="Integer"
                                        Operator="DataTypeCheck" ErrorMessage="Value must be a number." />--%>
                               <%-- <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ControlToValidate="txtCheckNum" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                </div>
                                </div>
                                <p></p>

                                <div class="form-group row">
                                <div class="col-sm-12 col-md-6">
                                   
                                <%--<asp:TextBox ID="txtCancelledChar" runat="server" MaxLength="1" Width="70px" class="form-control" placeholder ="(Y/N)"></asp:TextBox>
                                <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server" ControlToValidate="txtCancelledChar" ErrorMessage="Required field." ForeColor="Red"></asp:RequiredFieldValidator>--%>

                                </div>
                        </div>
                        </div>
                        <div class="mx-auto d-flex justify-content-center">
                            <%--<asp:Button ID="btnPopulate" runat="server" Text="Populate" OnClick="btnPopulate_Click" class="btn btn-primary btn-inside" />--%>
                            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click1" class="btn btn-primary btn-inside" Text="Submit" />
                               <asp:Button ID="btnInvoices" runat="server" OnClick="btnInvoices_Click" class="btn btn-primary btn-inside" Text="View Invoices" />
                        </div>
                        <p></p>
                        <asp:Label ID="lblStatus" ForeColor="red" runat="server"></asp:Label>
                    </div>
                </div>
         
            </div>
                   </div>
                </div>
            </div>
           
            </div>
        </div>
         
</asp:Content>

