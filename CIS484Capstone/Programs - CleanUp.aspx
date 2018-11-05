<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Programs - CleanUp.aspx.cs" Inherits="Programs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    
<meta charset="UTF-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="">
        <meta name="author" content="">
  

        
        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

   <%--         <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">--%>

        <!-- Logo FOnt-->
        <link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet">

        <%--<script src ="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.15/js/bootstrap-multiselect.js"> </script>--%>
        <script type="text/javascript"> 
            $(function () {
                $('#lstMammals').multiselect({
                    includeSelectAllOptions: true
                });
            });
        </script>


    <body>
        <%-- Needed - Coverage Check CVC 11/5/18 --%>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/sunny/jquery-ui.css" />
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
        <script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
        <script type="text/javascript">
            $(function () {
                var icons = {
                    header: "ui-icon-circle-arrow-e",
                    activeHeader: "ui-icon-circle-arrow-s"
                };
                $("#accordion").accordion({
                    icons: icons
                });
                $("#toggle").button().click(function () {
                    if ($("#accordion").accordion("option", "icons")) {
                        $("#accordion").accordion("option", "icons", null);
                    } else {
                        $("#accordion").accordion("option", "icons", icons);
                    }
                });
            });
        </script>


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
      <ul class="sidebar navbar-nav active">
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
            <span>Add New Program Content</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" >
            <a class="dropdown-item" href="#" data-target="#AddProgram" data-toggle="modal" >Add New Program Type</a>
            <a class="dropdown-item" href="#" data-target="#AddOrganization" data-toggle="modal">Add New Organization</a>
            <a class="dropdown-item" href="#" data-target="#AddAnimal" data-toggle="modal">Add New Animal</a>
            <a class="dropdown-item" href="#" data-target="#AddEducator" data-toggle="modal">Add New Educator</a>
          </div>
        </li>

           <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown" >
            <i class="fas fa-envelope fa-fw"></i>
            <span>Update Program Content</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" >
            <a class="dropdown-item" href="#" data-target="#UpdateOrganization" data-toggle="modal">Update Organizations</a>
            <a class="dropdown-item" href="#" data-target="#UpdateAnimal" data-toggle="modal">Update Animals</a>
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

                    <div class="row">
                        <div class="col-md-12 ProgramTitle">
                            <h1>Program Listings</h1>

                        </div>
                    </div>
                    <div class="row">
                          </div>
            <br /> 
                    </div>
            
<%--            <div class ="modifyOptions mx-auto">--%>
         
                <%--<div class="btn btn-primary btn-inside" data-target="#" data-toggle="modal">Add Program</div>
      <div class="btn btn-primary btn-inside" data-target="#EditProgramModal" data-toggle="modal">Edit Program</div>--%>
     <%--<asp:Button ID="Button3" runat="server" Text="View Animal" class="btn btn-primary btn-inside" OnClick="btnViewAnimal_Click"></asp:Button>--%>

       <%--</div>--%>
              


                      <%--  <div class="row ProgramSearch">
                            <div class="col-md-2 ml-auto">
                                <div id="search">
                                    <asp:TextBox ID="txtSearchMaster" class="rounded" runat="server"></asp:TextBox>
                                    <asp:Button ID="btnSearch" class="rounded" runat="server" Text="Search"></asp:Button>

                                </div>
                            </div>
                            <div class="col-md-2">
                            </div>
                        </div>--%>
                      
                       <%-- <div class="">
                </div>--%>


 


                                <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
                                <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
                                <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
                                <!------ Include the above in your HEAD tag ---------->



                            
  

<%--                                <script>
                                    $('body').on('click.collapse-next.data-api', '[data-toggle=collapse-next]', function (e) {
                                        var $target = $(this).parent().next()
                                        $target.data('collapse') ? $target.collapse('toggle') : $target.collapse()
                                    });
                                </script>--%>

<div class="container1 block">
  <ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#Program">Program</a></li>
  <li><a data-toggle="tab" href="#OnlineProgram">OnlineProgram</a></li>
</ul>

<div class="tab-content">
  <div id="Program" class="tab-pane fade in active">
     <%--VERSION 1 Live--%>
                                <div class="row mx-auto">
                                <div class="block col-md-8 mx-auto d-flex justify-content-center">
                                    <asp:Repeater ID="rptProgramHLLive" runat="server" OnItemDataBound="OnItemDataBoundLive">
                                        <HeaderTemplate>
                                            <table class="Grid table table-borderless table-hover table-condensed WideTable" border="1">
                                                <tr >
                                                    <th  class="col-md-1"scope="col">&nbsp
                                                    </th>
                                                   
                                                    <th  class="col-md-4" scope="col">Program Date
                                                    </th>
                                                    <th class="col-md-4" scope="col">Program Type
                                                    </th>
                                                     <th class="col-md-4" scope="col">Organization
                                                    </th>

                                                </tr>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td>

                                                    <img alt="" style="cursor: pointer; padding-left: -50%;" src="images/plus.png" />
                                                    <asp:Panel ID="pnlProgramLive" runat="server" Style="display: none">
                                                        <asp:Repeater ID="rptProgramLLLive" runat="server">

                                                            <HeaderTemplate>

                                                                <table class="ChildGrid col-md-12" border="0">

                                                                    <tr>
                                                                         <th  class="col-md-4" scope="col" <%--style="width: 250px"--%>>Status
                                                                        </th>
                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>Number of Children
                                                                        </th>
                                                                        <th  class="col-md-4" scope="col" <%--style="width: 250px"--%>>Number of Adults
                                                                        </th>
                                                                       
                                                                    </tr>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                              <td class="col-md-3">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Status") %>' />
                                                                </td>
                                                                <td class="col-md-3">
                                                                    <asp:Label ID="lblNumOfChildren" runat="server" Text='<%# Eval("NumberOfChildren") %>' />
                                                                </td>
                                                                <td class="col-md-3">
                                                                    <asp:Label ID="lblNumOfAdults" runat="server" Text='<%# Eval("NumberOfAdults") %>' />
                                                                </td>
                                                                 
                                                                </tr>
                                                            </ItemTemplate>



                                                            <FooterTemplate>
                                                                </table>
                                                            </FooterTemplate>

                                                        </asp:Repeater>      
                                                         <asp:Repeater ID="rptProgramLL2Live" runat="server">

                                                            <HeaderTemplate>

                                                                <table class="ChildGrid col-md-12" border="0">

                                                                    <tr>
                                                                        
                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>Street Addess
                                                                        </th>
                                                                          <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>City County
                                                                        </th>
                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>State
                                                                        </th>
                                                                        
                                                                    </tr>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                              <td class="col-md-4" >
                                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProgramAddress") %>' />
                                                                </td>
                                                                <td class="col-md-4" >
                                                                    <asp:Label ID="lblCity" runat="server" Text='<%# Eval("City") %>' />
                                                                </td>
                                                                <td class="col-md-4" >
                                                                    <asp:Label ID="lblState" runat="server" Text='<%# Eval("State") %>' />
                                                                </td>
                                                                  
                                                                </tr>
                                                            </ItemTemplate>



                                                            <FooterTemplate>
                                                                </table>
                                                            </FooterTemplate>

                                                        </asp:Repeater>
                                                         <asp:Repeater ID="rptProgramLL3Live" runat="server">

                                                            <HeaderTemplate>

                                                                <table class="ChildGrid col-md-12" border="0">

                                                                    <tr>
                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>On/Off Site
                                                                        </th>
                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>Payment Satus
                                                                        </th>
                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>Comments
                                                                        </th>
                                                                     
                                                                    </tr>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                              <td class="col-md-4" >
                                                                    <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("OnOff") %>' />
                                                                </td>
                                                                <td class="col-md-4" >
                                                                    <asp:Label ID="lblCity" runat="server" Text='<%# Eval("PaymentNeeded") %>' />
                                                                </td>
                                                                <td class="col-md-8" >
                                                                    <asp:Label ID="lblState" runat="server" Text='<%# Eval("Comments") %>' />
                                                                </td>

                                                                 
                                                                </tr>
                                                            </ItemTemplate>



                                                            <FooterTemplate>
                                                                </table>
                                                            </FooterTemplate>

                                                        </asp:Repeater>
                                                    </asp:Panel>
                                                      <asp:HiddenField ID="hfProgramIDLive" runat="server" Value='<%# Eval("ProgramID") %>' />
                                                     <td>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProgramDate") %>' />
                                                  
                                                </td>
                                                </td> 
                                                <td>
                                                    <asp:Label ID="lblProgramDate" runat="server" Text='<%# Eval("ProgramType") %>' />
                                                   
                                                </td>
                                                    </td> 
                                                <td>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Organization") %>' />
                                                  
                                                </td>
                                                    <td>
                                                    </td>
                                                
                                              
                                            </tr>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            </table>
                                        </FooterTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>



  </div>
  <div id="OnlineProgram" class="tab-pane fade">
 <%--VERSION 1 Online--%>
                                <div class="row mx-auto">
                                <div class="block col-md-8 mx-auto d-flex justify-content-center">
                                    <asp:Repeater ID="rptProgramHLOnline" runat="server" OnItemDataBound="OnItemDataBoundOnline">
                                        <HeaderTemplate>
                                            <table class="Grid table table-borderless table-hover table-condensed WideTable" border="1">
                                                <tr >
                                                    <th  class="col-md-1"scope="col">
                                                    </th>
                                                    
                                                    <th  class="col-md-5" scope="col" <%--style="width: 150px--%>">Program Date
                                                    
                                                    <th class="col-md-5" scope="col" <%--style="width: 150px--%>">Program Type
                                                    </th>
                                                </tr>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td>

                                                    <img alt="" style="cursor: pointer; padding-left: -50%;" src="images/plus.png" />
                                                    <asp:Panel ID="pnlProgramOnline" runat="server" Style="display: none">
                                                        <asp:Repeater ID="rptProgramLLOnline" runat="server">

                                                            <HeaderTemplate>

                                                                <table class="ChildGrid col-md-12" border="0">

                                                                    <tr>
                                                                        
                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>Number of Children
                                                                        </th>
                                                                        <th  class="col-md-4" scope="col" <%--style="width: 250px"--%>>Number of Adults
                                                                        </th>
                                                                        <th  class="col-md-4" scope="col" <%--style="width: 250px"--%>>Educator Name
                                                                        </th>
                                                                    </tr>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                              
                                                                <td class="col-md-4">
                                                                    <asp:Label ID="lblNumOfChildren" runat="server" Text='<%# Eval("NumberOfKids") %>' />
                                                                </td>
                                                                <td class="col-md-4">
                                                                    <asp:Label ID="lblNumOfAdults" runat="server" Text='<%# Eval("NumberOfPeople") %>' />
                                                                </td>
                                                                  <td class="col-md-4">
                                                                    <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("TeacherName") %>' />
                                                                </td>
                                                                </tr>
                                                            </ItemTemplate>



                                                            <FooterTemplate>
                                                                </table>
                                                            </FooterTemplate>

                                                        </asp:Repeater>      
                                                         <asp:Repeater ID="rptProgramLL2Online" runat="server">

                                                            <HeaderTemplate>

                                                                <table class="ChildGrid col-md-12" border="0">

                                                                    <tr>
                                                                        
                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>City
                                                                        </th>
                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>State
                                                                        </th>
                                                                        <th  class="col-md-4" scope="col" <%--style="width: 250px"--%>>Country
                                                                        </th>
                                                                    </tr>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                              
                                                                <td class="col-md-4" >
                                                                    <asp:Label ID="lblCity" runat="server" Text='<%# Eval("City") %>' />
                                                                </td>
                                                                <td class="col-md-4" >
                                                                    <asp:Label ID="lblState" runat="server" Text='<%# Eval("State") %>' />
                                                                </td>
                                                                  <td class="col-md-4" >
                                                                    <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("Country") %>' />
                                                                </td>
                                                                </tr>
                                                            </ItemTemplate>



                                                            <FooterTemplate>
                                                                </table>
                                                            </FooterTemplate>

                                                        </asp:Repeater>
                                                         <asp:Repeater ID="rptProgramLL3Online" runat="server">

                                                            <HeaderTemplate>

                                                                <table class="ChildGrid col-md-12" border="0">

                                                                    <tr>
                                                                        
                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>Contact Email
                                                                        </th>
                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>Comments
                                                                        </th>
                                                                     
                                                                    </tr>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                              
                                                                <td class="col-md-4" >
                                                                    <asp:Label ID="lblCity" runat="server" Text='<%# Eval("ContactEmail") %>' />
                                                                </td>
                                                                <td class="col-md-8" >
                                                                    <asp:Label ID="lblState" runat="server" Text='<%# Eval("Comments") %>' />
                                                                </td>

                                                                 
                                                                </tr>
                                                            </ItemTemplate>



                                                            <FooterTemplate>
                                                                </table>
                                                            </FooterTemplate>

                                                        </asp:Repeater>
                                                    </asp:Panel>
                                                    <asp:HiddenField ID="hfProgramIDOnline" runat="server" Value='<%# Eval("OnlineProgramID") %>' />
                                                     <td>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProgramDate") %>' />
                                                    <%--to be program date--%>
                                                </td
                                                </td> 
                                                <td>
                                                    <asp:Label ID="lblProgramDate" runat="server" Text='<%# Eval("ProgramType") %>' />
                                                    <%--to be program date--%>
                                                </td
                                                    <td>
                                                    </td>
                                              
                                            </tr>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            </table>
                                        </FooterTemplate>
                                    </asp:Repeater>
                                </div>

</div>      

  </div>

</div>
     </div>



                                <%-- Needed Coverage Check 11/5/18 CVC --%>
                                <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
                                <script type="text/javascript">
                                    $("body").on("click", "[src*=plus]", function () {
                                        $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>");
                                        $(this).attr("src", "images/minus.png");
                                    });
                                    $("body").on("click", "[src*=minus]", function () {
                                        $(this).attr("src", "images/plus.png");
                                        $(this).closest("tr").next().remove();
                                    });
                                </script>


                        <!-- /#wrapper -->

                        <!-- Scroll to Top Button-->
                     <%--   <a class="scroll-to-top rounded" href="#page-top">
                            <i class="fas fa-angle-up"></i>
                        </a>--%>

                        <!-- Logout Modal-->
                       <%-- <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">×</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                                    <div class="modal-footer">
                                        <asp:Button runat="server" class="btn btn-secondary" type="button" Text="Cancel" data-dismiss="modal"></asp:Button>
                                        <a class="btn btn-primary" href="Login-2.html">Logout</a>
                                    </div>
                                </div>
                            </div>
                        </div>--%>


                        <!-- Bootstrap core JavaScript-->
                        <script src="vendor/jquery/jquery.min.js"></script>
                        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

                        <!-- Core plugin JavaScript-->
                        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

                        <!-- Page level plugin JavaScript-->
                        <script src="vendor/chart.js/Chart.min.js"></script>
                        <script src="vendor/datatables/jquery.dataTables.js"></script>
                        <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

                        <!-- Custom scripts for all pages-->
                        <script src="js/sb-admin.min.js"></script>
                    </div>

    </body>


</asp:Content>