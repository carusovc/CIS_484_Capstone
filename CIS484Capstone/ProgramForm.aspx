<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProgramForm.aspx.cs" Inherits="ProgramForm" %>

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
            <span>Edit Program Content</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right" >
            <a class="dropdown-item" href="#" data-target="#UpdateOrganization" data-toggle="modal">Edit Organizations</a>
            <a class="dropdown-item" href="#" data-target="#UpdateAnimal" data-toggle="modal">Edit Animals</a>
            <a class="dropdown-item" href="#" data-target="#UpdateEducator" data-toggle="modal">Edit Educators</a>
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
			<h1 >Live Program Listings</h1>
			
		</div>
	</div>
       <div class="col-md-12">
        <br>
			</div>
     
     <div class="container1">

      

      <div class="row text-center text-lg-center">

        <div id="Program1" data-toggle="modal" data-target="#ProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail InfoBox" src="images/icons/offsite.png" alt="">
            <br> <h6 class="ProgramCaption">Harrisonburg High School</h6>
          
        </div>
        <div id="Program2" data-toggle="modal" data-target="#ProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail InfoBox" src="images/icons/offsite.png" alt="">
            <br> <h6 class="ProgramCaption">Spotswood High School</h6>
          
        </div>
        <div id="Program3" data-toggle="modal" data-target="#ProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail InfoBox" src="images/icons/offsite.png" alt="">
            <br> <h6 class="ProgramCaption">James Madison University</h6>
          
        </div>
        <div id="Program4" data-toggle="modal" data-target="#ProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail InfoBox"src="images/icons/offsite.png" alt="">
            <br> <h6 class="ProgramCaption">Washington Lee High School</h6>
          
        </div>
        <div id="Program5" data-toggle="modal" data-target="#ProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail InfoBox" src="images/icons/offsite.png" alt="">
            <br> <h6 class="ProgramCaption">Lake Braddock High School</h6>
          
        </div>
        <div id="Program6" data-toggle="modal" data-target="#ProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail InfoBox" src="images/icons/offsite.png" alt="">
            <br> <h6 class="ProgramCaption">Paul VI Catholic High School</h6>
          
        </div>
        <div id="AddProgram" data-toggle="modal" data-target="#AddProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail InfoBox" src="images/icons/Add.png" alt="">
            <br> <h6 class="ProgramCaption">Add Program</h6>
          
        </div>
        
        <div class="row">
        	
        	<br><br>
   
        </div>
        
      </div>
    </div>
     
		 </div>
     
      
     <!-- Pop Up modal to add program --> 
       
       <div class="modal" id="AddProgramModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-full" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"> Add Program Details</h5>
               <%-- <button type="button" class="close" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>--%>
                 <asp:Button ID="btnClose" runat="server" OnClick="btnClose_Click"  class ="close" href="Programs.aspx" Text="X" aria-hidden="true"/>
            </div>
            <div class="modal-body p-4" id="resultAddProgram">
               
                

                  <div class="row  ">           
	    <div class=" col-md-4 ProgramInfoPop">
	    <h4>On-Site/Off-Site </h4> 
    <%--<label class="checkbox-inline "><input type="checkbox" value=""> On</label>
    <br>
<label class="checkbox-inline"><input type="checkbox" value=""> Off</label>--%>

<asp:RadioButtonList ID="rboOnOff" runat="server" CssClass ="checkbox-inline">
    <asp:ListItem Text="On" Value="1" />
    <asp:ListItem Text="Off" Value="0" />
</asp:RadioButtonList>

	    
			</div> 
			
			
			<!-- End  Description --> 
			
			
			
			
			
  <div class="col-md-4 ProgramInfoPop"><h4>Program</h4> 
<%--    <div class="button-group">
    <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Program<span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option0" tabIndex="-1"><input type="radio" value="0" name="alphabet"/>&nbsp;Program 1</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="radio" value="1" name="alphabet"/>&nbsp;Program 2</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="radio" value="2" name="alphabet"/>&nbsp;Program 3</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="radio" value="3" name="alphabet"/>&nbsp;Program 4</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="radio" value="4" name="alphabet"/>&nbsp;Program 5</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="radio" value="5" name="alphabet"/>&nbsp;Program 6</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option6" tabIndex="-1"><input type="radio" value="6" name="alphabet"/>&nbsp;Program 7</a></li>
 

</ul></div>--%>

<asp:DropDownList CssClass="form-control" ID="ddlProgram" runat="server" class="dropdown-menu radioButtonList">
       <asp:ListItem Text="--Select Program--" Value="0" />
<%--    <asp:ListItem Text="Display" Value="1" />
    <asp:ListItem Text="Special Request" Value="2" />
    <asp:ListItem Text="Open House" Value="3" />
    <asp:ListItem Text="Tour" Value="4" />
    <asp:ListItem Text="Whoos Awake in the Night" Value="5" />
     <asp:ListItem Text="Wild Winder Worlds" Value="6" />
    <asp:ListItem Text="Home Sweet Habitat" Value="7" />
    <asp:ListItem Text="You Are What You Eat" Value="8" />
    <asp:ListItem Text="Critters Dont Need Litter" Value="9" />  
    <asp:ListItem Text="For Goodness Snakes!" Value="10" /> 
    <asp:ListItem Text="A View from the Top" Value="11" />
    <asp:ListItem Text="Treat to Release" Value="12" /> 
    <asp:ListItem Text="Classroom Visit: Owls" Value="13" />  
    <asp:ListItem Text="Classroom Visit: Turtles" Value="14" />
    <asp:ListItem Text="Classroom Visit: Snakes" Value="15" />  
    <asp:ListItem Text="Classroom Visit: Falcons" Value="16" />  
    <asp:ListItem Text="Classroom Visit: Opossums" Value="17" /> 
    <asp:ListItem Text="Classroom Visit: Special" Value="18" />  --%>
</asp:DropDownList>

</div>
		
			
					
					 <div class=" col-md-4 ProgramInfoPop">
	  <h4> Status:</h4> <%--<input type="text" class="form-control" id="AddStatus" placeholder="Add Status">--%>
                         <%--<asp:TextBox cssclass="form-control" ID="txtStatus" runat="server" placeholder="Add Status" ></asp:TextBox>--%>
                         <asp:DropDownList CssClass="form-control" ID="ddlStatus" runat="server" class="dropdown-menu radioButtonList">
                            <asp:ListItem Text="--Select Status--" Value="0" />
                            <asp:ListItem Text="Completed" Value="1" />
                             <asp:ListItem Text="Not Started" Value="2" />
                        </asp:DropDownList>
                        </div>
	 
			</div>
	<!-- End  row --> 
          
        
          <div class="row">
    <div class="col-md-4 ProgramInfoPop">
        <h4> Organization Name:</h4> <%--<input type="text" class="form-control" id="AddOrg" placeholder="Add Organization Name">--%>
              <asp:TextBox cssclass="form-control" ID="txtOrgName" runat="server" placeholder="Add Organization Name" ></asp:TextBox>

    </div>

<%--              <asp:DropDownList CssClass="form-control" ID="ddlOrg" runat="server" class="dropdown-menu radioButtonList">
                <asp:ListItem Text="" Value="0" />
                <asp:ListItem Text="Library One" Value="1" />
                <asp:ListItem Text="Library Two" Value="2" />
                <asp:ListItem Text="School One" Value="3" />
                <asp:ListItem Text="School Two" Value="4" />
                <asp:ListItem Text="School Three" Value="5" />
                 <asp:ListItem Text="Private Group" Value="6" />
                <asp:ListItem Text="Open House Group" Value="7" />
                  <asp:ListItem Text="Festival One" Value="8" />
                  <asp:ListItem Text="Festival Two" Value="7" />  
            </asp:DropDownList>
            </div>--%>

    
    <div class="col-md-4 ProgramInfoPop"><h4> Program Address:</h4> <%--<input type="Address" class="form-control" id="AddAddress" placeholder="Add Address">--%>
        <asp:TextBox cssclass="form-control" ID="txtAddress" runat="server" placeholder="Add Address" ></asp:TextBox>

    </div>

              <div class="col-md-2 ProgramInfoPop"> <h4> Date:</h4> <%--<input type="date" class="form-control" id="AddDate" placeholder="Add Status">--%><asp:TextBox cssclass="form-control" ID="txtDate" runat="server" placeholder="Add Date" ></asp:TextBox></div>
    <div class="col-md-2 ProgramInfoPop"> <h4> Start Time:</h4> <%--<input type="Time" class="form-control" id="AddTime" placeholder="Add Status">--%><asp:TextBox cssclass="form-control" ID="txtTime" runat="server" placeholder="Add Time" ></asp:TextBox></div>

          </div>

 
  <div class="row">
    <div class="col-md-4 ProgramInfoPop"><h4> City:</h4> <asp:TextBox cssclass="form-control" ID="txtCity" runat="server" placeholder="Add City" ></asp:TextBox></div>
    <div class="col-md-4 ProgramInfoPop"><h4> County:</h4> <asp:TextBox cssclass="form-control" ID="txtCounty" runat="server" placeholder="Add County" ></asp:TextBox></div>

             <div class=" col-md-4 ProgramInfoPop"><h4> State/Province:</h4> 
        <asp:DropDownList ID="ddlState" runat="server" class="form-control" placeholder="Add State/Province">
        <asp:ListItem>State</asp:ListItem>
        <asp:ListItem Value="Non-USA Territory"></asp:ListItem>
        <asp:ListItem Value="AL"></asp:ListItem>
        <asp:ListItem Value="AK"></asp:ListItem>
        <asp:ListItem Value="AZ"></asp:ListItem>
        <asp:ListItem Value="AR"></asp:ListItem>
        <asp:ListItem Value="CA"></asp:ListItem>
        <asp:ListItem Value="CO"></asp:ListItem>
        <asp:ListItem Value="CT"></asp:ListItem>
        <asp:ListItem Value="DE"></asp:ListItem>
        <asp:ListItem Value="FL"></asp:ListItem>
        <asp:ListItem Value="GA"></asp:ListItem>
        <asp:ListItem Value="HI"></asp:ListItem>
        <asp:ListItem Value="ID"></asp:ListItem>
        <asp:ListItem Value="IL"></asp:ListItem>
        <asp:ListItem Value="IN"></asp:ListItem>
        <asp:ListItem Value="IA"></asp:ListItem>
        <asp:ListItem Value="KS"></asp:ListItem>       
        <asp:ListItem Value="KY"></asp:ListItem>
        <asp:ListItem Value="LA"></asp:ListItem>
        <asp:ListItem Value="ME"></asp:ListItem>
        <asp:ListItem Value="MD"></asp:ListItem>
        <asp:ListItem Value="MA"></asp:ListItem>
        <asp:ListItem Value="MI"></asp:ListItem>
        <asp:ListItem Value="MN"></asp:ListItem>
        <asp:ListItem Value="MS"></asp:ListItem>
        <asp:ListItem Value="MO"></asp:ListItem>
        <asp:ListItem Value="MT"></asp:ListItem>
        <asp:ListItem Value="NE"></asp:ListItem>
        <asp:ListItem Value="NV"></asp:ListItem>
        <asp:ListItem Value="NH"></asp:ListItem>
        <asp:ListItem Value="NJ"></asp:ListItem>
        <asp:ListItem Value="NM"></asp:ListItem>
        <asp:ListItem Value="NY"></asp:ListItem>
        <asp:ListItem Value="NC"></asp:ListItem>
        <asp:ListItem Value="ND"></asp:ListItem>
        <asp:ListItem Value="OH"></asp:ListItem>
        <asp:ListItem Value="OK"></asp:ListItem>
        <asp:ListItem Value="OR"></asp:ListItem>
        <asp:ListItem Value="PA"></asp:ListItem>
        <asp:ListItem Value="RI"></asp:ListItem>
        <asp:ListItem Value="SC"></asp:ListItem>
        <asp:ListItem Value="SD"></asp:ListItem>
        <asp:ListItem Value="TN"></asp:ListItem>
        <asp:ListItem Value="TX"></asp:ListItem>
        <asp:ListItem Value="UT"></asp:ListItem>
        <asp:ListItem Value="VT"></asp:ListItem>
        <asp:ListItem Value="VA"></asp:ListItem>
        <asp:ListItem Value="WA"></asp:ListItem>
        <asp:ListItem Value="WV"></asp:ListItem>
        <asp:ListItem Value="WI"></asp:ListItem>
        <asp:ListItem Value="WY"></asp:ListItem>
    </asp:DropDownList>

                 </div>
 
 </div>
 
 <div class="row">
    <div class="col-md-3 ProgramInfoPop"> <h4>Grade</h4><div class="dropdown">
    
 <%-- <button class="btn btn-default btn-sm dropdown-toggle" type="button" id="AddEd" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Grade
    <span class="caret"></span>
  </button>--%>
<%-- <asp:Button ID="btnAddGrade" runat="server" OnClick="btnAddGrade_Click"  class="btn btn-default btn-sm dropdown-toggle" Text="Grade" aria-haspopup="true" aria-expanded="true"/>--%>

<%--  <ul class="dropdown-menu DropdownAnimal" aria-labelledby="dropdownMenu1">--%>
<%--    <ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Pre-K</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;K</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;1st</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;2nd</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;3rd</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;4th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;5th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;6th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;7th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;8th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;9th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;10th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;11th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;12th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;College</a></li>

  </ul>--%>


      <asp:ListBox CssClass="form-control" ID="AddGrade" runat="server" placeholder="Add Grade" SelectionMode="Multiple">
    <asp:ListItem Text="--Select Grades--" Value="0" />
<%--      <asp:ListItem Text="Preschool" Value="1" />
    <asp:ListItem Text="Kindergarten" Value="2" />
    <asp:ListItem Text="1st" Value="3" />
    <asp:ListItem Text="2nd" Value="4" />
    <asp:ListItem Text="3rd" Value="5" />
     <asp:ListItem Text="4th" Value="6" />
    <asp:ListItem Text="5th" Value="7" />
    <asp:ListItem Text="6th" Value="8" />
    <asp:ListItem Text="7th" Value="9" />
    <asp:ListItem Text="8th" Value="10" />
     <asp:ListItem Text="9th" Value="11"/>
       <asp:ListItem Text="10th" Value="12" />
    <asp:ListItem Text="11th" Value="13" />
     <asp:ListItem Text="12th" Value="14"/>
       <asp:ListItem Text="Families" Value="15" />
    <asp:ListItem Text="Adults Only" Value="16" />--%>

</asp:ListBox>

        </div></div>
   
   <div class="col-md-3 ProgramInfoPop"> <h4> Educators</h4> 
      <%-- <div class="button-group">--%>
       <%-- <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Educators <span class="caret"></span></button>--%>
       <%--<asp:Button ID="btnAddEduc" runat="server" OnClick="btnAddEducators_Click"  class="btn btn-default btn-sm dropdown-toggle" Text="Choose Educators"/>--%>

<%--<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Raina</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Alex</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;IDk</a></li>
 
</ul>--%>


        <asp:ListBox CssClass="form-control" ID="drpEducators" runat="server" SelectionMode="Multiple">
     <asp:ListItem Text="--Select Educators--" Value="0" />
<%--    <asp:ListItem Text="Raina" Value="1" />
    <asp:ListItem Text="Alex" Value="2" />
    <asp:ListItem Text="Ed" Value="3" />
    <asp:ListItem Text="Amanda" Value="4" />
    <asp:ListItem Text="Shelly" Value="5" />
    <asp:ListItem Text="Peg" Value="6" />
    <asp:ListItem Text="Lydia" Value="7" />
    <asp:ListItem Text="Doug" Value="8" />--%>
   

</asp:ListBox>
  <%--</div>--%>

   </div>
    <div class="col-md-3 ProgramInfoPop"> <h4> # of Adults:</h4> 
<%--        <input type="number" class="form-control" id="Add#Adult" placeholder="# of Adults">--%>
     <asp:TextBox cssclass="form-control" ID="AddNumAdult" runat="server" placeholder="Add # of Adults" ></asp:TextBox>
        </div>
    
     <div class="col-md-3 ProgramInfoPop"> <h4> # of Children:</h4> 
      <%--  <input type="Number" class="form-control" id="Add#Kidss" placeholder="# of Children"> --%>
     <asp:TextBox cssclass="form-control" ID="AddNumChildren" runat="server" placeholder="Add # of Children" ></asp:TextBox>
    </div>
    
 </div>
 
 
 <div class="row">

  
       <div class="col-lg-4 ProgramInfoPop"><h4 class="Animal"> Birds:</h4>
<%--     <div class="button-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Birds <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Buddy</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Verlon</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;Edie</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;Maggie</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;Grayson</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Keeya</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Ruby</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;Rosalie</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;Athena</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;Gus</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Papa G'Ho</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Quin</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;Alex</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;Buttercup</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;Jaz</a></li>
  
</ul>
  </div>--%>
             <asp:ListBox ID="ddlBirds"  CssClass="form-control" runat="server" SelectionMode="Multiple" class="dropdown-menu" Placeholder ="Select Birds">
       <asp:ListItem Text="--Select Birds--" Value="0" />

</asp:ListBox>

</div>
  

 
 
 
	  
  
       <div class="col-lg-4 ProgramInfoPop"> <h4 class="Animal"> Reptiles:</h4>
     <div class="button-group">
<%--        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Reptiles <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Malcom</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Albus</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;Severus</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;Oscar</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;Emma</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Wilson</a></li>
</ul>
  
</div>--%>

           <asp:ListBox CssClass="form-control" ID="ddlReptiles" runat="server" SelectionMode="Multiple" class="dropdown-menu">
     <asp:ListItem Text="--Select Reptiles--" Value="0" />


</asp:ListBox>
  
</div>
	     
	   </div>  
	     
  
       <div class="col-lg-4 ProgramInfoPop"> <h4 class="Animal"> Mammals:</h4> 
   <%--  <div class="button-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Mammals <span class="caret"></span></button>
<ul id="listChoice" class="dropdown-menu">
  <li id="listBo"><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Bo</a></li>
  <li id="listPosie"><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Posie</a></li>
  <li id="listWillow"><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Willow</a></li>

  
</ul>
 
</div>--%>
 <asp:ListBox ID="ddlMammals" CssClass="form-control" runat="server" SelectionMode="Multiple" class="dropdown-menu">
    <asp:ListItem Text="--Select Mammals--" Value="0" />

</asp:ListBox>
</div>
  </div>
 
 <div class="row">
    <div class="col-md-3 ProgramInfoPop"><h4>Payment Complete?</h4> 
<%--   <label class="checkbox-inline "><input type="checkbox" value=""> Yes</label>
    <br>
<label ><input type="checkbox" value=""> No</label></div>--%>

<asp:RadioButtonList ID="paymentCompleteAdd" runat="server" CssClass ="checkbox-inline">
    <asp:ListItem Text="Yes" Value="1" />
    <asp:ListItem Text="No" Value="0" />
</asp:RadioButtonList>
        </div>
        <div class="col-md-9 ProgramInfoPop"><div class="form-group">
        <asp:label for="comment" runat ="server">Comment:</asp:label>
  <asp:textbox runat="server" class="form-control" cols= "12" rows="5" id="comment"></asp:textbox>
</div></div>

 
 
 
 
 
 
 
 
  </div>
  
            <div class="modal-footer">
                <div class="row">
    <div class="col-md-4"> 
        <%--<button class="btn btn-primary LoginButton" type="submit">Add</button>--%>
                      <asp:Button ID="btnSubmitForm" runat="server" OnClick="btnSubmitForm_Click"  class ="btn btn-primary LoginButton" href="Programs.aspx" Text="Add" aria-hidden="true"/>
   </div>
</div>
<%--                <button type="button" class="btn btn-secondary" >Close</button>--%>
                  <asp:Button ID="btnClose2" runat="server" OnClick="btnClose_Click"  class ="btn btn-secondary" href="Programs.aspx" Text="Close" aria-hidden="true"/>
            </div>
       
    




      <!-- /.content-wrapper -->
 </div> 
   
   
    
</div>

   
     

   </div> </div>

          <!-- Pop Up modal to Edit program --> 
  <%-- <div class="modal" id="EditProgramModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-full" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"> Edit Program Details</h5>
                <button type="button" class="close" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body p-4" id="resultEditProgram">
                    
                  <div class="row  ">           
	    <div class=" col-md-4 ProgramInfoPop">
	    <h4>On-Site/Off-Site </h4> 
    <label class="checkbox-inline "><input type="checkbox" value=""> On</label>
    <br>
<label class="checkbox-inline"><input type="checkbox" value=""> Off</label>
	    
			</div> 
			
			
			<!-- End  Description --> 
			
			
			
			
			
  <div class="col-md-2 ProgramInfoPop"><h4>Program</h4> 
    <div class="button-group">
    <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Program<span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option0" tabIndex="-1"><input type="radio" value="0" name="alphabet"/>&nbsp;Program 1</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="radio" value="1" name="alphabet"/>&nbsp;Program 2</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="radio" value="2" name="alphabet"/>&nbsp;Program 3</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="radio" value="3" name="alphabet"/>&nbsp;Program 4</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="radio" value="4" name="alphabet"/>&nbsp;Program 5</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="radio" value="5" name="alphabet"/>&nbsp;Program 6</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option6" tabIndex="-1"><input type="radio" value="6" name="alphabet"/>&nbsp;Program 7</a></li>
 

</ul></div>



</div>
		
			
					
					 <div class=" col-md-6 ProgramInfoPop">
	  <h4> Status:</h4> <input type="text" class="form-control" id="EditStatus" placeholder="Edit Status">
	 
			</div>
	</div><!-- End  row --> 
          
        
          <div class="row">
    <div class="col-md-6 ProgramInfoPop"><h4> Organization Name:</h4> <input type="text" class="form-control" id="EditOrg" placeholder="Edit Organization Name"></div>
    
    <div class="col-md-6 ProgramInfoPop"><h4> Program Address:</h4> <input type="Address" class="form-control" id="EditAddress" placeholder="Edit Address"></div></div>

 
  <div class="row">
    <div class="col-md-6 ProgramInfoPop"><h4> City:</h4> <input type="City" class="form-control" id="EditCity" placeholder="Edit City"></div>
    <div class="col-md-6 ProgramInfoPop"><h4> County:</h4> <input type="County" class="form-control" id="EditCounty" placeholder="Edit County"></div>
</div>
 
 <div class="row">
    <div class="col-md-4 ProgramInfoPop"> <h4> Report Month</h4><input type="month" class="form-control" id="EditReportMonth" placeholder="Edit Month"></div>

    
    <div class="col-md-4 ProgramInfoPop"> <h4> Date:</h4> <input type="date" class="form-control" id="EditDate" placeholder="Edit Status"></div>
    <div class="col-md-4 ProgramInfoPop"> <h4> Start Time:</h4> <input type="Time" class="form-control" id="EditTime" placeholder="Edit Status"></div>
</div>
 

    <div class="col-lg-4 ProgramInfoPop"><h4 class="Animal"> Grade:</h4>
     <div class="button-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Grade <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Pre-K</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;K</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;1st</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;2nd</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;3rd</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;4th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;5th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;6th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;7th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;8th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;9th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;10th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;11th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;12th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;College</a></li>
  
</ul>
  </div>
</div>
  
   <div class="col-md-3 ProgramInfoPop"> <h4> Educators</h4> <div class="button-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Educators <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Raina</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Alex</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;IDk</a></li>
  
  
  
</ul>
  </div></div>
    <div class="col-md-3 ProgramInfoPop"> <h4> # of Adults:</h4> <input type="number" class="form-control" id="Edit#Adult" placeholder="# of Adults"></div>
    <div class="col-md-4 ProgramInfoPop"> <h4> # of Children:</h4> <input type="Number" class="form-control" id="Edit#Kidss" placeholder="# of Children"></div>
        
 </div>

 <div class="row">

 
  
 
  
       <div class="col-lg-4 ProgramInfoPop"><h4 class="Animal"> Birds:</h4>
     <div class="button-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Birds <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Buddy</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Verlon</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;Edie</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;Maggie</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;Grayson</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Keeya</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Ruby</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;Rosalie</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;Athena</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;Gus</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Papa G'Ho</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Quin</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;Alex</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;Buttercup</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;Jaz</a></li>
  
</ul>
  </div>
</div>
  


 
 
 
	  
  
       <div class="col-lg-4 ProgramInfoPop"> <h4 class="Animal"> Reptiles:</h4>
     <div class="button-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Reptiles <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Malcom</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Albus</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;Severus</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;Oscar</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;Emma</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Wilson</a></li>
</ul>
  
</div>
  
</div>
	     
	     
	     
  
       <div class="col-lg-4 ProgramInfoPop"> <h4 class="Animal"> Mammals:</h4> 
     <div class="button-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Mammals <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Bo</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Posie</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Willow</a></li>

  
</ul>
 
</div>
 
</div>
 </div>
 
 <div class="row">
    <div class="col-md-3 ProgramInfoPop"><h4>Payment Complete?</h4> 
    <%--<label class="checkbox-inline "><input type="radio" value="1" name="alphabet" > Paid</label>
    <br>
<label class="checkbox-inline"><input type="radio" value="2" name="alphabet" > Not Paid</label>

     <asp:RadioButtonList ID="paymentComplete" runat="server" CssClass ="checkbox-inline">
    <asp:ListItem Text="Paid" Value="1" />
    <asp:ListItem Text="Not Paid" Value="0" />
</asp:RadioButtonList>
        </div>

    <div class="col-md-9 ProgramInfoPop"><div class="form-group">




        
  <label for="comment">Comment:</label>
  <textarea class="form-control" rows="5" id="EditComment"></textarea>
</div></div>
</div>
 
 
  </div>
  
            <div class="modal-footer">
                <div class="row">
    <div class="col-md-4"> <button data-toggle="modal" data-target="#ProgramModal" class="btn btn-primary LoginButton" type="submit">Save</button></div>
   
</div>
                <button type="button" class="btn btn-secondary">Close</button>
            </div>
        </div>
    </div>



      <!-- /.content-wrapper -->
 </div>--%>

            <!-- Pop Up modal to View program --> 
       
       <div class="modal" id="ProgramModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-full" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"> Program Details</h5>
               <%-- <button type="button" class="close" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>--%>
                <asp:Button ID="btnClose3" runat="server" OnClick="btnClose_Click"  class ="close" href="Programs.aspx" aria-label="Close" Text="X" aria-hidden="true"/>
            
            </div>
            <div class="modal-body p-4" id="resultProgram">
                    
                  <div class="row  ">           
	    <div class=" col-md-6 ProgramInfoPop">
	    <h4>On-Site/Off-Site </h4> 
    <h6 class="ProgramDescription" id="ProgramSite"> On</h6>
	    
			</div> 
			<div class=" col-md-6 ProgramInfoPop">
	    <h4>Program </h4> 
    <h6 class="ProgramDescription" id="ProgramName"> Intro</h6>
	    
			</div>
			
	
			
			<!-- End  Description --> 
	</div><!-- End  row --> 
          
        
          <div class="row">
    <div class="col-md-6 ProgramInfoPop"><h4> Organization Name:</h4> <h6 class="ProgramDescription" id="OrgName"> James Madison University</h6></div>
    
    <div class=" col-md-6 ProgramInfoPop">
	  <h4> Status:</h4> <h6 class="ProgramDescription" id="ProgramStatus"> Completed</h6>
	  
			</div> 
    
    </div>

 
  <div class="row">
   <div class="col-md-5 ProgramInfoPop"><h4> Program Address:</h4> <h6 class="ProgramDescription" id="ProgramAddress"> 800 S Main, Harrisonburg, VA, 22801</h6></div>
    <div class="col-md-3 ProgramInfoPop"><h4> City:</h4> <h6 class="ProgramDescription" id="Programcity"> Harrisonburg</h6>
    </div>
    
    <div class="col-md-4 ProgramInfoPop"><h4> County:</h4> <h6 class="ProgramDescription" id="ProgramCounty"> Rockingham County</h6></div>
</div>
 
 <div class="row">
    <div class="col-md-5 ProgramInfoPop"> 
    <h4> Report Month</h4>
	<h6 class="ProgramDescription" id="ProgramMonth"> October</h6> 
   </div>
   
   
    <div class="col-md-3 ProgramInfoPop">
     <h4> Date:</h4> <h6 class="ProgramDescription" id="ProgramDate"> 10/14/18</h6></div>
     
     
    <div class="col-md-4 ProgramInfoPop"> <h4> Start Time:</h4> <h6 class="ProgramDescription" id="ProgramTime"> 3:00 pm</h6></div>
</div>
 
 <div class="row">
    
  
    
    <div class="col-md-2 ProgramInfoPop"> 
    <h4>Grade</h4>
    <h6 class="ProgramDescription" id="ProgramGrade"> 3rd</h6></div>
   
   <div class="col-md-3 ProgramInfoPop"> 
   <h4> Educators</h4>
   <h6 class="ProgramDescription" id="ProgramEd"> Raina, Alex</h6></div>
   
   
     <div class="col-md-3 ProgramInfoPop"> <h4> # of Adults:</h4> <h6 class="ProgramDescription" id="ProgramAdults"> 4</h6></div>
    
    
    <div class="col-md-3 ProgramInfoPop"> <h4> # of Children:</h4> <h6 class="ProgramDescription" id="ProgramChild"> 26</h6></div>
    
    
 </div>
 
 
 <div class="row">

 
  
 
  
       <div class="col-lg-4 ProgramInfoPop"><h4 class="Animal"> Birds:</h4>
     <h6 class="ProgramDescription" id="ProgramBirds"> Buddy, Edie, Verlon</h6>
</div>
  

 
 
 
	  
  
       <div class="col-lg-4 ProgramInfoPop"> <h4 class="Animal"> Reptiles:</h4>
     <h6 class="ProgramDescription" id="ProgramReptiles"> Severus</h6>
  
</div>
	     
	     
	     
  
       <div class="col-lg-4 ProgramInfoPop"> <h4 class="Animal"> Mammals:</h4> 
     <h6 class="ProgramDescription" id="ProgramMammals"> Bo</h6>
 
</div>
 </div>
 
 <div class="row">
    <div class="col-md-12 ProgramInfoPop"><h4>Payment Complete?</h4> 
    <h6 class="ProgramDescription" id="ProgramPayment"> Paid</h6>
    
</div>
 
  </div>
  
  
  <div class="row">
  <div class="col-md-12 ProgramInfoPop"><div class="form-group">
  <h6 > Comments</h6>
  <p>This is where you would see comments about the program. This is where you would see comments about the program. This is where you would see comments about the program. This is where you would see comments about the program.</p>
</div></div>
</div>
  
  
            <div class="modal-footer">
        <%-- <button type="button" class="btn btn-primary LoginButton"  data-toggle="modal" data-target="#EditProgramModal">Edit</button>
                <button type="button" class="btn btn-secondary" >Close</button>--%>

                 <%--<asp:Button ID="btnEdit" runat="server" OnClick="btnClose_Click"  class="btn btn-primary LoginButton" data-toggle="modal" data-target="#EditProgramModal" href="Programs.aspx" aria-label="Close" Text="Edit" aria-hidden="true"/>--%>
                 <asp:Button ID="btnClose4" runat="server" OnClick="btnClose_Click"  class="btn btn-secondary"  href="Programs.aspx" aria-label="Close" Text="Close" aria-hidden="true"/>
            
            </div>

        </div>
    </div>
    </div>




      <!-- /.content-wrapper -->
 </div> 

    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <%--<button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>--%>
               <asp:Button ID="btnClose5" runat="server" OnClick="btnClose_Click"  class="close"  href="Programs.aspx" aria-label="Close" Text="X" aria-hidden="true"/>
            
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
           <%-- <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>--%>
               <asp:Button ID="btnCancel" runat="server" OnClick="btnClose_Click"  class="btn btn-secondary"  href="Programs.aspx" Text="Cancel"/>
            
            <a class="btn btn-primary" href="Login-2.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
   

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


</asp:Content>

