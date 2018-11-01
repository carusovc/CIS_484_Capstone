﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OnlineForm.aspx.cs" Inherits="OnlineForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!DOCTYPE html>


  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>WildTek Online</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

<%--    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">--%>
      
      <!-- Logo FOnt-->
      <link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.15/css/bootstrap-multiselect.css" type ="text/css" />

    
<script src ="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.15/js/bootstrap-multiselect.js"> </script>
    <script type ="text/javascript"> 
        $(function () {
            $('#lstMammals').multiselect({
                includeSelectAllOptions: true
            });
        });


    </script>
<!-- end of do not delete -->

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
        <li class="nav-item active">
          <a class="nav-link" href="OnlineForm.aspx">
            <i class="fas fa-fw fa-wifi"></i>
            <span>Online Program Form</span></a>
        </li>
       
        <li class="nav-item">
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
          <a class="nav-link" href="CreateUser.aspx">
            <i class="fas fa-fw fa-person"></i>
            <span>Create Educator Access</span></a>
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
			<h1 >Online Program Listings</h1>
			
		</div>
	</div>
          
            <div >
  <div class="">
	 
    <form>
 	


       

    


    

         
             <div class="col-lg-8 col-md-12 col-s-12 mx-auto">

<table class="table table-condensed table-borderless table-hover" style="border-collapse:collapse;">
    <thead>
        <tr>
            
            <th>Date</th>
            <th>Organization Name</th>
            <th>Program Type</th>
            <th>educator(s)</th>
            
        </tr>
    </thead>
    <tbody>
        <tr data-toggle="collapse" data-target="#demo1" class="accordion-toggle">
           <td class="ShortOrgTime">11/5/18 3:00 pm</td>
                <td class="ShortOrgName">James Madison University</td>
                <td class="ShortDT">Skype: Turtles</td>
            <td class="ShortEd">Raina, Alex</td>
        </tr>
        <tr >
            <td colspan="6" class="hiddenRow"><div class="accordian-body collapse" id="demo1">
                <div >
  
    <div class="text-center">
            <div class="">
                <br />
                <h5 class=""> Online Program Details</h5>
               
            </div>
            <div class="modal-body p-4" id="resultOnlineProgram">
                    
                  
				<div class="row ">           
	    <div class=" col-md-3 ProgramInfoPop">
	     <h4> Status:</h4> <h6 class="ProgramDescription" id="OnlineProgramStatus"> Completed</h6>
	    
			</div> 
			
			
     <div class=" col-md-3 ProgramInfoPop">
	    <h4>Type </h4> 
    <h6 class="ProgramDescription" id="OnlineType"> Skype: Oppossum</h6>
	    
			</div>
	     


                     <div class="col-md-3 ProgramInfoPop">
     <h4> Date:</h4> <h6 class="ProgramDescription" id="OnlineProgramDate"> 10/14/18</h6></div>
     
     
    <div class="col-md-3 ProgramInfoPop"> <h4> Start Time:</h4> <h6 class="ProgramDescription" id="OnlineProgramTime"> 3:00 pm</h6></div>


			
			<!-- End  Description --> 
	</div><!-- End  row --> 
         

                <div class="row">
   
   
   
    <div class=" col-md-4 ProgramInfoPop">
	    <h4>Teacher Name </h4> 
    <h6 class="ProgramDescription" id="OnlineTeacher"> Mrs. Johnson</h6>
	
			</div>

                    <div class=" col-md-4 ProgramInfoPop">
	    <h4> Grade </h4> 
    <h6 class="ProgramDescription" id="OnlineGrade"> 3rd</h6>
	    
	    
	    
			</div>


                     <div class="col-md-4 ProgramInfoPop"> 
    <h4> Report Month</h4>
	<h6 class="ProgramDescription" id="OnlineProgramMonth"> October</h6> 
   </div>
</div>

         <div class="row ">           
	    
			
	     
			<div class=" col-md-3 ProgramInfoPop">
	    <h4> Children </h4> 
    <h6 class="ProgramDescription" id="OnlineChild"> 25</h6>
	    
	    
	    
			</div>
			
			<div class=" col-md-3 ProgramInfoPop">
	    <h4> People</h4> 
    <h6 class="ProgramDescription" id="OnlinePeople"> 45</h6>
	    
	    
	    
			</div>
			
	 <div class="col-md-3 ProgramInfoPop"><h4> Educators</h4> <h6 class="OnlineEd" id="OrgName"> Raina</h6></div>
			  
 <div class="col-md-3 ProgramInfoPop"><h4> Email</h4> <h6 class="OnlineEmail" id="OnlineEmail"> School@gmail.com</h6></div>
			
			<!-- End  Description --> 
	</div><!-- End  row --> 
          
        
     
	  
	<div class="row">
		<div class="col-md-4 ProgramInfoPop"><h4> City/County:</h4> <h6 class="ProgramDescription" id="OnlineProgramcity"> Harrisonburg</h6>
    </div>
    
    <div class="col-md-4 ProgramInfoPop"><h4> State/Province:</h4> <h6 class="ProgramDescription" id="OnlineProgramState"> Rockingham County</h6></div>
		
		<div class="col-md-4 ProgramInfoPop"><h4> Country:</h4> <h6 class="ProgramDescription" id="OnlineProgramCountry"> Rockingham County</h6></div>

        

</div>		
    
    

 
  
 
 
 
 
 
 
 <div class="row">

 
  
 
  
       <div class="col-md-3 ProgramInfoPop"><h4 class="Animal"> Birds:</h4>
     <h6 class="ProgramDescription" id="OnlineProgramBirds"> Buddy, Edie, Verlon</h6>
</div>
  

 
 
 
	  
  
       <div class="col-md-3 ProgramInfoPop"> <h4 class="Animal"> Reptiles:</h4>
     <h6 class="ProgramDescription" id="OnlineProgramReptiles"> Severus</h6>
  
</div>
	     
	     
	     
  
       <div class="col-md-3 ProgramInfoPop"> <h4 class="Animal"> Mammals:</h4> 
     <h6 class="ProgramDescription" id="OnlineProgramMammals"> Bo</h6>
 
</div>

     <div class="col-md-3 ProgramInfoPop"><h4>Payment Complete?</h4> 
    <h6 class="ProgramDescription" id="OnlineProgramPayment"> Paid</h6>
    
</div>

 </div>
 
 
    
 
  
  
  
  <div class="row">
  <div class="col-md-12 ProgramInfoPop"><div class="form-group">
  <h6 > Comments</h6>
  <p>This is where you would see comments about the program. This is where you would see comments about the program. This is where you would see comments about the program. This is where you would see comments about the program.</p>
</div></div>
</div>
  
  
            
        </div>
    </div>



</div>

                                              </div> </td>
        </tr>
        <tr data-toggle="collapse" data-target="#demo2" class="accordion-toggle">
           <td class="ShortOrgTime">11/5/18 3:00 pm</td>
                <td class="ShortOrgName">James Madison University</td>
                <td class="ShortDT">Skype: Turtles</td>
            <td class="ShortEd">Raina, Alex</td>
        </tr>
        <tr>
            <td colspan="6" class="hiddenRow"><div id="demo2" class="accordian-body collapse">

                <div >
  
    <div class="text-center">
            <div class="">
                <br />
                <h5 class=""> Online Program Details</h5>
               
            </div>
            <div class="modal-body p-4" id="resultOnlineProgram">
                    
                  
				<div class="row ">           
	    <div class=" col-md-3 ProgramInfoPop">
	     <h4> Status:</h4> <h6 class="ProgramDescription" id="OnlineProgramStatus"> Completed</h6>
	    
			</div> 
			
			
     <div class=" col-md-3 ProgramInfoPop">
	    <h4>Type </h4> 
    <h6 class="ProgramDescription" id="OnlineType"> Skype: Oppossum</h6>
	    
			</div>
	     


                     <div class="col-md-3 ProgramInfoPop">
     <h4> Date:</h4> <h6 class="ProgramDescription" id="OnlineProgramDate"> 10/14/18</h6></div>
     
     
    <div class="col-md-3 ProgramInfoPop"> <h4> Start Time:</h4> <h6 class="ProgramDescription" id="OnlineProgramTime"> 3:00 pm</h6></div>


			
			<!-- End  Description --> 
	</div><!-- End  row --> 
         

                <div class="row">
   
   
   
    <div class=" col-md-4 ProgramInfoPop">
	    <h4>Teacher Name </h4> 
    <h6 class="ProgramDescription" id="OnlineTeacher"> Mrs. Johnson</h6>
	
			</div>

                    <div class=" col-md-4 ProgramInfoPop">
	    <h4> Grade </h4> 
    <h6 class="ProgramDescription" id="OnlineGrade"> 3rd</h6>
	    
	    
	    
			</div>


                     <div class="col-md-4 ProgramInfoPop"> 
    <h4> Report Month</h4>
	<h6 class="ProgramDescription" id="OnlineProgramMonth"> October</h6> 
   </div>
</div>

         <div class="row ">           
	    
			
	     
			<div class=" col-md-3 ProgramInfoPop">
	    <h4> Children </h4> 
    <h6 class="ProgramDescription" id="OnlineChild"> 25</h6>
	    
	    
	    
			</div>
			
			<div class=" col-md-3 ProgramInfoPop">
	    <h4> People</h4> 
    <h6 class="ProgramDescription" id="OnlinePeople"> 45</h6>
	    
	    
	    
			</div>
			
	 <div class="col-md-3 ProgramInfoPop"><h4> Educators</h4> <h6 class="OnlineEd" id="OrgName"> Raina</h6></div>
			  
 <div class="col-md-3 ProgramInfoPop"><h4> Email</h4> <h6 class="OnlineEmail" id="OnlineEmail"> School@gmail.com</h6></div>
			
			<!-- End  Description --> 
	</div><!-- End  row --> 
          
        
     
	  
	<div class="row">
		<div class="col-md-4 ProgramInfoPop"><h4> City/County:</h4> <h6 class="ProgramDescription" id="OnlineProgramcity"> Harrisonburg</h6>
    </div>
    
    <div class="col-md-4 ProgramInfoPop"><h4> State/Province:</h4> <h6 class="ProgramDescription" id="OnlineProgramState"> Rockingham County</h6></div>
		
		<div class="col-md-4 ProgramInfoPop"><h4> Country:</h4> <h6 class="ProgramDescription" id="OnlineProgramCountry"> Rockingham County</h6></div>

        

</div>		
    
    

 
  
 
 
 
 
 
 
 <div class="row">

 
  
 
  
       <div class="col-md-3 ProgramInfoPop"><h4 class="Animal"> Birds:</h4>
     <h6 class="ProgramDescription" id="OnlineProgramBirds"> Buddy, Edie, Verlon</h6>
</div>
  

 
 
 
	  
  
       <div class="col-md-3 ProgramInfoPop"> <h4 class="Animal"> Reptiles:</h4>
     <h6 class="ProgramDescription" id="OnlineProgramReptiles"> Severus</h6>
  
</div>
	     
	     
	     
  
       <div class="col-md-3 ProgramInfoPop"> <h4 class="Animal"> Mammals:</h4> 
     <h6 class="ProgramDescription" id="OnlineProgramMammals"> Bo</h6>
 
</div>

     <div class="col-md-3 ProgramInfoPop"><h4>Payment Complete?</h4> 
    <h6 class="ProgramDescription" id="OnlineProgramPayment"> Paid</h6>
    
</div>

 </div>
 
 
    
 
  
  
  
  <div class="row">
  <div class="col-md-12 ProgramInfoPop"><div class="form-group">
  <h6 > Comments</h6>
  <p>This is where you would see comments about the program. This is where you would see comments about the program. This is where you would see comments about the program. This is where you would see comments about the program.</p>
</div></div>
</div>
  
  
            
        </div>
    </div>



</div>

                                              </div></td>
        </tr>
        <tr data-toggle="collapse" data-target="#demo3" class="accordion-toggle">
           <td class="ShortOrgTime">11/5/18 3:00 pm</td>
                <td class="ShortOrgName">James Madison University</td>
                <td class="ShortDT">Skype: Turtles</td>
            <td class="ShortEd">Raina, Alex</td>
        </tr>
        <tr>
            <td colspan="6"  class="hiddenRow">
                <div id="demo3" class="accordian-body collapse">

               <div >
  
    <div class="text-center">
            <div class="">
                <br />
                <h5 class=""> Online Program Details</h5>
               
            </div>
            <div class="modal-body p-4" id="resultOnlineProgram">
                    
                  
				<div class="row ">           
	    <div class=" col-md-3 ProgramInfoPop">
	     <h4> Status:</h4> <h6 class="ProgramDescription" id="OnlineProgramStatus"> Completed</h6>
	    
			</div> 
			
			
     <div class=" col-md-3 ProgramInfoPop">
	    <h4>Type </h4> 
    <h6 class="ProgramDescription" id="OnlineType"> Skype: Oppossum</h6>
	    
			</div>
	     


                     <div class="col-md-3 ProgramInfoPop">
     <h4> Date:</h4> <h6 class="ProgramDescription" id="OnlineProgramDate"> 10/14/18</h6></div>
     
     
    <div class="col-md-3 ProgramInfoPop"> <h4> Start Time:</h4> <h6 class="ProgramDescription" id="OnlineProgramTime"> 3:00 pm</h6></div>


			
			<!-- End  Description --> 
	</div><!-- End  row --> 
         

                <div class="row">
   
   
   
    <div class=" col-md-4 ProgramInfoPop">
	    <h4>Teacher Name </h4> 
    <h6 class="ProgramDescription" id="OnlineTeacher"> Mrs. Johnson</h6>
	
			</div>

                    <div class=" col-md-4 ProgramInfoPop">
	    <h4> Grade </h4> 
    <h6 class="ProgramDescription" id="OnlineGrade"> 3rd</h6>
	    
	    
	    
			</div>


                     <div class="col-md-4 ProgramInfoPop"> 
    <h4> Report Month</h4>
	<h6 class="ProgramDescription" id="OnlineProgramMonth"> October</h6> 
   </div>
</div>

         <div class="row ">           
	    
			
	     
			<div class=" col-md-3 ProgramInfoPop">
	    <h4> Children </h4> 
    <h6 class="ProgramDescription" id="OnlineChild"> 25</h6>
	    
	    
	    
			</div>
			
			<div class=" col-md-3 ProgramInfoPop">
	    <h4> People</h4> 
    <h6 class="ProgramDescription" id="OnlinePeople"> 45</h6>
	    
	    
	    
			</div>
			
	 <div class="col-md-3 ProgramInfoPop"><h4> Educators</h4> <h6 class="OnlineEd" id="OrgName"> Raina</h6></div>
			  
 <div class="col-md-3 ProgramInfoPop"><h4> Email</h4> <h6 class="OnlineEmail" id="OnlineEmail"> School@gmail.com</h6></div>
			
			<!-- End  Description --> 
	</div><!-- End  row --> 
          
        
     
	  
	<div class="row">
		<div class="col-md-4 ProgramInfoPop"><h4> City/County:</h4> <h6 class="ProgramDescription" id="OnlineProgramcity"> Harrisonburg</h6>
    </div>
    
    <div class="col-md-4 ProgramInfoPop"><h4> State/Province:</h4> <h6 class="ProgramDescription" id="OnlineProgramState"> Rockingham County</h6></div>
		
		<div class="col-md-4 ProgramInfoPop"><h4> Country:</h4> <h6 class="ProgramDescription" id="OnlineProgramCountry"> Rockingham County</h6></div>

        

</div>		
    
    

 
  
 
 
 
 
 
 
 <div class="row">

 
  
 
  
       <div class="col-md-3 ProgramInfoPop"><h4 class="Animal"> Birds:</h4>
     <h6 class="ProgramDescription" id="OnlineProgramBirds"> Buddy, Edie, Verlon</h6>
</div>
  

 
 
 
	  
  
       <div class="col-md-3 ProgramInfoPop"> <h4 class="Animal"> Reptiles:</h4>
     <h6 class="ProgramDescription" id="OnlineProgramReptiles"> Severus</h6>
  
</div>
	     
	     
	     
  
       <div class="col-md-3 ProgramInfoPop"> <h4 class="Animal"> Mammals:</h4> 
     <h6 class="ProgramDescription" id="OnlineProgramMammals"> Bo</h6>
 
</div>

     <div class="col-md-3 ProgramInfoPop"><h4>Payment Complete?</h4> 
    <h6 class="ProgramDescription" id="OnlineProgramPayment"> Paid</h6>
    
</div>

 </div>
 
 
    
 
  
  
  
  <div class="row">
  <div class="col-md-12 ProgramInfoPop"><div class="form-group">
  <h6 > Comments</h6>
  <p>This is where you would see comments about the program. This is where you would see comments about the program. This is where you would see comments about the program. This is where you would see comments about the program.</p>
</div></div>
</div>
  
  
            
        </div>
    </div>



</div>

             </div></td>
        </tr>
    </tbody>
</table>
</div>



<%--<button type="button" > 
	<div class="table-responsive .d-none">
    <table class="table table-borderless table-hover ProgramBioShort">
        <thead  >
            <tr>
                <th >Date</th>
                 <th>Organization Name</th>
                 <th>Program Type</th>
                  <th>Educator(s)</th>
              
               
            </tr>
        </thead>
      <tbody>
          
           <tr class="accordion">
               
               <td class="ShortOrgTime">11/9/18 3:00 pm</td>
                <td class="ShortOrgName">James Madison University</td>
                <td class="ShortDT">Skype: Owls</td>
            <td class="ShortEd">Raina, Alex</td>
            </tr>
          <div>
              <div class="panel">
  
    <div class="text-center">
            <div class="">
                <br />
                <h5 class=""> Online Program Details</h5>
               
            </div>
            <div class="modal-body p-4" id="resultOnlineProgram">
                    
                  
				<div class="row ">           
	    <div class=" col-md-3 ProgramInfoPop">
	     <h4> Status:</h4> <h6 class="ProgramDescription" id="OnlineProgramStatus"> Completed</h6>
	    
			</div> 
			
			
     <div class=" col-md-3 ProgramInfoPop">
	    <h4>Type </h4> 
    <h6 class="ProgramDescription" id="OnlineType"> Skype: Oppossum</h6>
	    
			</div>
	     


                     <div class="col-md-3 ProgramInfoPop">
     <h4> Date:</h4> <h6 class="ProgramDescription" id="OnlineProgramDate"> 10/14/18</h6></div>
     
     
    <div class="col-md-3 ProgramInfoPop"> <h4> Start Time:</h4> <h6 class="ProgramDescription" id="OnlineProgramTime"> 3:00 pm</h6></div>


			
			<!-- End  Description --> 
	</div><!-- End  row --> 
         

                <div class="row">
   
   
   
    <div class=" col-md-4 ProgramInfoPop">
	    <h4>Teacher Name </h4> 
    <h6 class="ProgramDescription" id="OnlineTeacher"> Mrs. Johnson</h6>
	
			</div>

                    <div class=" col-md-4 ProgramInfoPop">
	    <h4> Grade </h4> 
    <h6 class="ProgramDescription" id="OnlineGrade"> 3rd</h6>
	    
	    
	    
			</div>


                     <div class="col-md-4 ProgramInfoPop"> 
    <h4> Report Month</h4>
	<h6 class="ProgramDescription" id="OnlineProgramMonth"> October</h6> 
   </div>
</div>

         <div class="row ">           
	    
			
	     
			<div class=" col-md-3 ProgramInfoPop">
	    <h4> Children </h4> 
    <h6 class="ProgramDescription" id="OnlineChild"> 25</h6>
	    
	    
	    
			</div>
			
			<div class=" col-md-3 ProgramInfoPop">
	    <h4> People</h4> 
    <h6 class="ProgramDescription" id="OnlinePeople"> 45</h6>
	    
	    
	    
			</div>
			
	 <div class="col-md-3 ProgramInfoPop"><h4> Educators</h4> <h6 class="OnlineEd" id="OrgName"> Raina</h6></div>
			  
 <div class="col-md-3 ProgramInfoPop"><h4> Email</h4> <h6 class="OnlineEmail" id="OnlineEmail"> School@gmail.com</h6></div>
			
			<!-- End  Description --> 
	</div><!-- End  row --> 
          
        
     
	  
	<div class="row">
		<div class="col-md-4 ProgramInfoPop"><h4> City/County:</h4> <h6 class="ProgramDescription" id="OnlineProgramcity"> Harrisonburg</h6>
    </div>
    
    <div class="col-md-4 ProgramInfoPop"><h4> State/Province:</h4> <h6 class="ProgramDescription" id="OnlineProgramState"> Rockingham County</h6></div>
		
		<div class="col-md-4 ProgramInfoPop"><h4> Country:</h4> <h6 class="ProgramDescription" id="OnlineProgramCountry"> Rockingham County</h6></div>

        

</div>		
    
    

 
  
 
 
 
 
 
 
 <div class="row">

 
  
 
  
       <div class="col-md-3 ProgramInfoPop"><h4 class="Animal"> Birds:</h4>
     <h6 class="ProgramDescription" id="OnlineProgramBirds"> Buddy, Edie, Verlon</h6>
</div>
  

 
 
 
	  
  
       <div class="col-md-3 ProgramInfoPop"> <h4 class="Animal"> Reptiles:</h4>
     <h6 class="ProgramDescription" id="OnlineProgramReptiles"> Severus</h6>
  
</div>
	     
	     
	     
  
       <div class="col-md-3 ProgramInfoPop"> <h4 class="Animal"> Mammals:</h4> 
     <h6 class="ProgramDescription" id="OnlineProgramMammals"> Bo</h6>
 
</div>

     <div class="col-md-3 ProgramInfoPop"><h4>Payment Complete?</h4> 
    <h6 class="ProgramDescription" id="OnlineProgramPayment"> Paid</h6>
    
</div>

 </div>
 
 
    
 
  
  
  
  <div class="row">
  <div class="col-md-12 ProgramInfoPop"><div class="form-group">
  <h6 > Comments</h6>
  <p>This is where you would see comments about the program. This is where you would see comments about the program. This is where you would see comments about the program. This is where you would see comments about the program.</p>
</div></div>
</div>
  
  
            
        </div>
    </div>



</div>
           </div>
           <tr class="accordion">
               
               <td class="ShortOrgTime">11/9/18 3:00 pm</td>
                <td class="ShortOrgName">James Madison University</td>
                <td class="ShortDT">Skype: Owls</td>
            <td class="ShortEd">Raina, Alex</td>
            </tr>
           <tr class="accordion">
               
               <td class="ShortOrgTime">11/9/18 3:00 pm</td>
                <td class="ShortOrgName">James Madison University</td>
                <td class="ShortDT">Skype: Owls</td>
            <td class="ShortEd">Raina, Alex</td>
            </tr>


        </tbody>
    </table>
</div></button>
<div class="panel">
  
    <div class="text-center">
            <div class="">
                <br />
                <h5 class=""> Online Program Details</h5>
               
            </div>
            <div class="modal-body p-4" id="resultOnlineProgram">
                    
                  
				<div class="row ">           
	    <div class=" col-md-3 ProgramInfoPop">
	     <h4> Status:</h4> <h6 class="ProgramDescription" id="OnlineProgramStatus"> Completed</h6>
	    
			</div> 
			
			
     <div class=" col-md-3 ProgramInfoPop">
	    <h4>Type </h4> 
    <h6 class="ProgramDescription" id="OnlineType"> Skype: Oppossum</h6>
	    
			</div>
	     


                     <div class="col-md-3 ProgramInfoPop">
     <h4> Date:</h4> <h6 class="ProgramDescription" id="OnlineProgramDate"> 10/14/18</h6></div>
     
     
    <div class="col-md-3 ProgramInfoPop"> <h4> Start Time:</h4> <h6 class="ProgramDescription" id="OnlineProgramTime"> 3:00 pm</h6></div>


			
			<!-- End  Description --> 
	</div><!-- End  row --> 
         

                <div class="row">
   
   
   
    <div class=" col-md-4 ProgramInfoPop">
	    <h4>Teacher Name </h4> 
    <h6 class="ProgramDescription" id="OnlineTeacher"> Mrs. Johnson</h6>
	
			</div>

                    <div class=" col-md-4 ProgramInfoPop">
	    <h4> Grade </h4> 
    <h6 class="ProgramDescription" id="OnlineGrade"> 3rd</h6>
	    
	    
	    
			</div>


                     <div class="col-md-4 ProgramInfoPop"> 
    <h4> Report Month</h4>
	<h6 class="ProgramDescription" id="OnlineProgramMonth"> October</h6> 
   </div>
</div>

         <div class="row ">           
	    
			
	     
			<div class=" col-md-3 ProgramInfoPop">
	    <h4> Children </h4> 
    <h6 class="ProgramDescription" id="OnlineChild"> 25</h6>
	    
	    
	    
			</div>
			
			<div class=" col-md-3 ProgramInfoPop">
	    <h4> People</h4> 
    <h6 class="ProgramDescription" id="OnlinePeople"> 45</h6>
	    
	    
	    
			</div>
			
	 <div class="col-md-3 ProgramInfoPop"><h4> Educators</h4> <h6 class="OnlineEd" id="OrgName"> Raina</h6></div>
			  
 <div class="col-md-3 ProgramInfoPop"><h4> Email</h4> <h6 class="OnlineEmail" id="OnlineEmail"> School@gmail.com</h6></div>
			
			<!-- End  Description --> 
	</div><!-- End  row --> 
          
        
     
	  
	<div class="row">
		<div class="col-md-4 ProgramInfoPop"><h4> City/County:</h4> <h6 class="ProgramDescription" id="OnlineProgramcity"> Harrisonburg</h6>
    </div>
    
    <div class="col-md-4 ProgramInfoPop"><h4> State/Province:</h4> <h6 class="ProgramDescription" id="OnlineProgramState"> Rockingham County</h6></div>
		
		<div class="col-md-4 ProgramInfoPop"><h4> Country:</h4> <h6 class="ProgramDescription" id="OnlineProgramCountry"> Rockingham County</h6></div>

        

</div>		
    
    

 
  
 
 
 
 
 
 
 <div class="row">

 
  
 
  
       <div class="col-md-3 ProgramInfoPop"><h4 class="Animal"> Birds:</h4>
     <h6 class="ProgramDescription" id="OnlineProgramBirds"> Buddy, Edie, Verlon</h6>
</div>
  

 
 
 
	  
  
       <div class="col-md-3 ProgramInfoPop"> <h4 class="Animal"> Reptiles:</h4>
     <h6 class="ProgramDescription" id="OnlineProgramReptiles"> Severus</h6>
  
</div>
	     
	     
	     
  
       <div class="col-md-3 ProgramInfoPop"> <h4 class="Animal"> Mammals:</h4> 
     <h6 class="ProgramDescription" id="OnlineProgramMammals"> Bo</h6>
 
</div>

     <div class="col-md-3 ProgramInfoPop"><h4>Payment Complete?</h4> 
    <h6 class="ProgramDescription" id="OnlineProgramPayment"> Paid</h6>
    
</div>

 </div>
 
 
    
 
  
  
  
  <div class="row">
  <div class="col-md-12 ProgramInfoPop"><div class="form-group">
  <h6 > Comments</h6>
  <p>This is where you would see comments about the program. This is where you would see comments about the program. This is where you would see comments about the program. This is where you would see comments about the program.</p>
</div></div>
</div>
  
  
            
        </div>
    </div>



</div>--%>
                

<%--<div class="row">
        <div class="col-md-6 mx-auto">
<button type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
    
	<div class="table-responsive">
    <table class="table table-borderless  table-hover ProgramBioShort">
        <thead>
            <tr>
               <th>Date</th>
                <th>Organization Name</th>
                <th>Program Type</th>
                <th>Educator(s)</th>
              
               
            </tr>
        </thead>
      <tbody>
            <tr>
               
               <td class="ShortOrgTime">11/5/18 3:00 pm</td>
                <td class="ShortOrgName">James Madison University</td>
                <td class="ShortDT">Skype: Turtles</td>
            <td class="ShortEd">Raina, Alex</td>
            </tr>
           
        </tbody>
    </table>
</div></button>
            </div>
    <div class="col-md-6 mx-auto">
<div class="panel collapse multi-collapse collapsed" id="collapseExample">
  
    <div class="">
            <div class="">
                <br />
                <h5 class=""> Online Program Details</h5>
               
            </div>
            <div class="modal-body p-4" id="resultOnlineProgram">
                    
                  
				<div class="row ">           
	    <div class=" col-md-3 ProgramInfoPop">
	     <h4> Status:</h4> <h6 class="ProgramDescription" id="OnlineProgramStatus"> Completed</h6>
	    
			</div> 
			
			
     <div class=" col-md-3 ProgramInfoPop">
	    <h4>Type </h4> 
    <h6 class="ProgramDescription" id="OnlineType"> Skype: Oppossum</h6>
	    
			</div>
	     


                     <div class="col-md-3 ProgramInfoPop">
     <h4> Date:</h4> <h6 class="ProgramDescription" id="OnlineProgramDate"> 10/14/18</h6></div>
     
     
    <div class="col-md-3 ProgramInfoPop"> <h4> Start Time:</h4> <h6 class="ProgramDescription" id="OnlineProgramTime"> 3:00 pm</h6></div>


			
			<!-- End  Description --> 
	</div><!-- End  row --> 
         

                <div class="row">
   
   
   
    <div class=" col-md-3 ProgramInfoPop">
	    <h4>Teacher Name </h4> 
    <h6 class="ProgramDescription" id="OnlineTeacher"> Mrs. Johnson</h6>
	
			</div>

                    <div class=" col-md-3 ProgramInfoPop">
	    <h4> Grade </h4> 
    <h6 class="ProgramDescription" id="OnlineGrade"> 3rd</h6>
	    
	    
	    
			</div>


                     <div class="col-md-3 ProgramInfoPop"> 
    <h4> Report Month</h4>
	<h6 class="ProgramDescription" id="OnlineProgramMonth"> October</h6> 
   </div>
</div>

         <div class="row ">           
	    
			
	     
			<div class=" col-md-3 ProgramInfoPop">
	    <h4> Children </h4> 
    <h6 class="ProgramDescription" id="OnlineChild"> 25</h6>
	    
	    
	    
			</div>
			
			<div class=" col-md-3 ProgramInfoPop">
	    <h4> People</h4> 
    <h6 class="ProgramDescription" id="OnlinePeople"> 45</h6>
	    
	    
	    
			</div>
			
	 <div class="col-md-3 ProgramInfoPop"><h4> Educators</h4> <h6 class="OnlineEd" id="OrgName"> Raina</h6></div>
			  
 <div class="col-md-3 ProgramInfoPop"><h4> Email</h4> <h6 class="OnlineEmail" id="OnlineEmail"> School@gmail.com</h6></div>
			
			<!-- End  Description --> 
	</div><!-- End  row --> 
          
        
     
	  
	<div class="row">
		<div class="col-md-3 ProgramInfoPop"><h4> City/County:</h4> <h6 class="ProgramDescription" id="OnlineProgramcity"> Harrisonburg</h6>
    </div>
    
    <div class="col-md-3 ProgramInfoPop"><h4> State/Province:</h4> <h6 class="ProgramDescription" id="OnlineProgramState"> Rockingham County</h6></div>
		
		<div class="col-md-3 ProgramInfoPop"><h4> Country:</h4> <h6 class="ProgramDescription" id="OnlineProgramCountry"> Rockingham County</h6></div>

        

</div>		
    
    

 
  
 
 
 
 
 
 
 <div class="row">

 
  
 
  
       <div class="col-md-3 ProgramInfoPop"><h4 class="Animal"> Birds:</h4>
     <h6 class="ProgramDescription" id="OnlineProgramBirds"> Buddy, Edie, Verlon</h6>
</div>
  

 
 
 
	  
  
       <div class="col-md-3 ProgramInfoPop"> <h4 class="Animal"> Reptiles:</h4>
     <h6 class="ProgramDescription" id="OnlineProgramReptiles"> Severus</h6>
  
</div>
	     
	     
	     
  
       <div class="col-md-3 ProgramInfoPop"> <h4 class="Animal"> Mammals:</h4> 
     <h6 class="ProgramDescription" id="OnlineProgramMammals"> Bo</h6>
 
</div>

     <div class="col-md-3 ProgramInfoPop"><h4>Payment Complete?</h4> 
    <h6 class="ProgramDescription" id="OnlineProgramPayment"> Paid</h6>
    
</div>

 </div>
 
 
    
 
  
  
  
  <div class="row">
  <div class="col-md-12 ProgramInfoPop"><div class="form-group">
  <h6 > Comments</h6>
  <p>This is where you would see comments about the program. This is where you would see comments about the program. This is where you would see comments about the program. This is where you would see comments about the program.</p>
</div></div>
</div>
  
  
            
        </div>
    </div>



</div>
             </div>
        </div>--%>





<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var panel = this.nextElementSibling;
        if (panel.style.display === "block") {
            panel.style.display = "none";
        } else {
            panel.style.display = "block";
        }
    });
}
</script>
		
		
		
		
		
		
</form>
  </div>
</div>






















       <!-- Programs-->
    
       <%--<div class="col-md-12">
        <br>
			</div>--%>
     
     <%--<div class="container1">

      

      <div class="row text-center text-lg-center">

        <div id="Program1" data-toggle="modal" data-target="#OnlineProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail  InfoBox" src="images/icons/owl.png" alt="">
            <br> <h6 class="ProgramCaption">Skype Program: Owls</h6>
          
        </div>
        <div id="Program2" data-toggle="modal" data-target="#OnlineProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail  InfoBox" src="images/icons/camera.png" alt="">
            <br> <h6 class="ProgramCaption">Cam in the Classroom</h6>
          
        </div>
        <div id="Program3" data-toggle="modal" data-target="#OnlineProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail  InfoBox" src="images/icons/snake.png" alt="">
            <br> <h6 class="ProgramCaption">Skype Program: Snakes</h6>
          
        </div>
        <div id="Program4" data-toggle="modal" data-target="#OnlineProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail  InfoBox" src="images/icons/book.png" alt="">
            <br> <h6 class="ProgramCaption">Book Club</h6>
          
        </div>
        <div id="Program5" data-toggle="modal" data-target="#OnlineProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail  InfoBox" src="images/icons/turtle.png" alt="">
            <br> <h6 class="ProgramCaption">Skype Program: Turtles</h6>
          
        </div>
        <div id="Program6" data-toggle="modal" data-target="#OnlineProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail  InfoBox" src="images/icons/camera.png" alt="">
            <br> <h6 class="ProgramCaption">Hospital Cam</h6>
          
        </div>
		  
        <div id="AddProgram" data-toggle="modal" data-target="#AddOnlineProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail  InfoBox" src="images/icons/Add.png" alt="">
            <br> <h6 class="ProgramCaption">Add Program</h6>
          
        </div>
        
        <div class="row">
        	
        	<br><br>
   
        </div>
        
      </div>
    </div>--%>
     
		 </div>
     
      
     <!-- Pop Up modal to add program --> 
       
       <div class="modal" id="AddOnlineProgramModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-full" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"> Add Online Program Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body p-4" id="resultAddOnlineProgram">
                    
                  
				<div class="row ">           
	    <div class=" col-md-4 ProgramInfoPop">
	     <h4> Status:</h4> 
	    <%--<input type="text" class="form-control" id="AddOnlineStatus" placeholder="Add Status">--%>
            <asp:DropDownList CssClass="form-control" ID="listAddOnlineStatus" runat="server" placeholder="Add Status" SelectionMode="Multiple" class="dropdown-menu">
                <asp:ListItem Text="" Value="0" />
                <asp:ListItem Text="Completed" Value="1" />
                 <asp:ListItem Text="Not Started" Value="2" />
             </asp:DropDownList>
			</div> 
			
			

	     
<div class="col-md-4 ProgramInfoPop"><h4>Type</h4> 
   <%-- <div class="button-group">--%>
   <%-- <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Type <span class="caret"></span></button>--%>
<%--<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option0" tabIndex="-1"><input type="radio" value="0" name="alphabet"/>&nbsp;Book Club</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="radio" value="1" name="alphabet"/>&nbsp;Field Trip</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="radio" value="2" name="alphabet"/>&nbsp;Cam in the Classroom</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="radio" value="3" name="alphabet"/>&nbsp;Hospital Cam</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="radio" value="4" name="alphabet"/>&nbsp;Classroom Series</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="radio" value="5" name="alphabet"/>&nbsp;Special Guest</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option6" tabIndex="-1"><input type="radio" value="6" name="alphabet"/>&nbsp;Special Event</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option7" tabIndex="-1"><input type="radio" value="7" name="alphabet"/>&nbsp;Skype: Owls</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option8" tabIndex="-1"><input type="radio" value="8" name="alphabet"/>&nbsp;Skype: Turtles</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option9" tabIndex="-1"><input type="radio" value="9" name="alphabet"/>&nbsp;Skype: Opossum</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option10" tabIndex="-1"><input type="radio" value="10" name="alphabet"/>&nbsp;Skype: Snakes</a></li>--%>
  
  
<asp:DropDownList CssClass="form-control" ID="ddlProgramType" runat="server" SelectionMode="Multiple" class="dropdown-menu">
  
    <asp:ListItem Text="" Value="0" />
    <asp:ListItem Text="Book Club" Value="1" />
    <asp:ListItem Text="Field Trip" Value="2" />
    <asp:ListItem Text="Cam in the Classroom" Value="3" />
    <asp:ListItem Text="Hospital Cam" Value="4" />
    <asp:ListItem Text="Classroom Series" Value="5" />
     <asp:ListItem Text="Special Guest" Value="6" />
    <asp:ListItem Text="Special Event" Value="7" />
    <asp:ListItem Text="Skype: Owls" Value="8" />
    <asp:ListItem Text="Skype: Turtles" Value="9" />
    <asp:ListItem Text="Skype: Opossum" Value="10" />
     <asp:ListItem Text="Skype: Snakes" Value="11"/>
      
</asp:DropDownList>

  <%--  might need to use this List<ListItem> selected = new List<ListItem>();
foreach (ListItem item in CBLGold.Items)
    if (item.Selected) selected.Add(item);--%>
  
  
<%--</ul>--%>
     
	<%--</div> --%>   

         
	    
			</div>			
			
                    <div class=" col-md-4 ProgramInfoPop">
	    <h4>Add New Program </h4> 
    
	    <%--<input type="text" class="form-control" id="txtOnlineType" placeholder="Add Program Type">--%>
             <asp:TextBox cssclass="form-control" ID="txtOnlineType" runat="server" placeholder="Add Program Type" ></asp:TextBox>   
			</div>

			<!-- End  Description --> 
	</div><!-- End  row --> 
         
         <div class="row ">           
	    
			<div class=" col-md-4 ProgramInfoPop">
	    <h4>Teacher Name </h4> 
    
	<%--<input type="text" class="form-control" id="AddOnlineTeacher" placeholder="Add Teacher">--%>
                <asp:TextBox cssclass="form-control" ID="AddOnlineTeacher" runat="server" placeholder="Add Teacher" ></asp:TextBox>   
			</div>
	     
			<div class=" col-md-4 ProgramInfoPop">
	    <h4> Children </h4> 
     
	 <asp:TextBox cssclass="form-control" ID="txtNumOfKids" runat="server" placeholder="Add # of Children" ></asp:TextBox>   
	        
	    
	    
			</div>
			 
			 <div class=" col-md-4 ProgramInfoPop">
	    <h4> People </h4>  
	 <asp:TextBox cssclass="form-control" ID="txtNumOfPeople" runat="server" placeholder="Add # of People" ></asp:TextBox>   
	       
	    
	    
			</div>

			<!-- End  Description --> 
	</div><!-- End  row --> 
          
        
          <div class="row">
			  
			  <div class="col-md-4 ProgramInfoPop"><h4>Grade</h4> 
   <%-- <div class="button-group">
    <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Grade <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option0" tabIndex="-1"><input type="radio" value="0" name="alphabet"/>&nbsp;Pre-K</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="radio" value="1" name="alphabet"/>&nbsp;K</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="radio" value="2" name="alphabet"/>&nbsp;1st</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="radio" value="3" name="alphabet"/>&nbsp;2nd</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="radio" value="4" name="alphabet"/>&nbsp;3rd</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="radio" value="5" name="alphabet"/>&nbsp;4th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option6" tabIndex="-1"><input type="radio" value="6" name="alphabet"/>&nbsp;5th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option7" tabIndex="-1"><input type="radio" value="7" name="alphabet"/>&nbsp;6th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option8" tabIndex="-1"><input type="radio" value="8" name="alphabet"/>&nbsp;7th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option9" tabIndex="-1"><input type="radio" value="9" name="alphabet"/>&nbsp;8th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option10" tabIndex="-1"><input type="radio" value="10" name="alphabet"/>&nbsp;9th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option11" tabIndex="-1"><input type="radio" value="11" name="alphabet"/>&nbsp;10th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option12" tabIndex="-1"><input type="radio" value="12" name="alphabet"/>&nbsp;11th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option13" tabIndex="-1"><input type="radio" value="13" name="alphabet"/>&nbsp;12th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option14" tabIndex="-1"><input type="radio" value="14" name="alphabet"/>&nbsp;Familes</a></li>
	<li><a href="#" class="small DropdownAnimal" data-value="option14" tabIndex="-1"><input type="radio" value="14" name="alphabet"/>&nbsp;Adults Only</a></li>
  --%>
  <asp:ListBox CssClass="form-control" ID="AddGrade" runat="server" placeholder="Add Grade" SelectionMode="Multiple" class="dropdown-menu">
    <asp:ListItem Text="" Value="0" />
      <asp:ListItem Text="Pre-K" Value="1" />
    <asp:ListItem Text="K" Value="2" />
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
    <asp:ListItem Text="Adults" Value="16" />

</asp:ListBox>


  
<%--</ul>--%>
     
<%--	</div> --%>   
	    
			</div>
    <div class="col-md-4 ProgramInfoPop"><h4> Educators</h4> 
   <%--  <div class="button-group">
       <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Educators <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Raina</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Alex</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;IDk</a></li>
  
  
  
</ul>--%>

        <asp:ListBox CssClass="form-control" ID="drpEducators" runat="server" SelectionMode="Multiple" class="dropdown-menu">
     <asp:ListItem Text="" Value="0" />
    <asp:ListItem Text="Raina" Value="1" />
    <asp:ListItem Text="Alex" Value="2" />
   <asp:ListItem Text="Ed" Value="3" />
    <asp:ListItem Text="Amanda" Value="4" />
    <asp:ListItem Text="Shelly" Value="5" />
    <asp:ListItem Text="Peg" Value="6" />
    <asp:ListItem Text="Lydia" Value="7" />
    <asp:ListItem Text="Doug" Value="8" />

</asp:ListBox>

  </div>
			  </div>

               
			  
			  <div class=" col-md-4 ProgramInfoPop">
	    <h4> Email </h4> 
   
	<%-- <input type="email" class="form-control" id="AddOnlineEmail" placeholder="Add Email">--%>
                   <asp:TextBox cssclass="form-control" ID="AddOnlineEmail" runat="server" placeholder="Add Email" ></asp:TextBox> 
	    
	    
			</div>
			  

	  
			
    
    <div class="row">
		<div class="col-md-4 ProgramInfoPop"><h4> City/County:</h4> 
	<%--  <input type="city" class="form-control" id="AddOnlineProgramcity" placeholder="Add City/County">--%>
             <asp:TextBox cssclass="form-control" ID="AddOnlineProgramcity" runat="server" placeholder="Add City/County" ></asp:TextBox> 

	  
    </div>
    
    <div class="col-md-4 ProgramInfoPop"><h4> State/Province:</h4> 
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
		<div class="col-md-4 ProgramInfoPop"><h4> Country:</h4> 
      <asp:DropDownList ID="ddlCountry" runat="server" class="form-control" placeholder="Add Country" >
        <asp:ListItem Value=""></asp:ListItem>
        <asp:ListItem Value="Afghanistan"></asp:ListItem>
        <asp:ListItem Value="Albania"></asp:ListItem>
        <asp:ListItem Value="Algeria"></asp:ListItem>
        <asp:ListItem Value="Andorra"></asp:ListItem>
        <asp:ListItem Value="Angola"></asp:ListItem>
        <asp:ListItem Value="Antigua and Barbuda"></asp:ListItem>
        <asp:ListItem Value="Argentina"></asp:ListItem>
        <asp:ListItem Value="Armenia"></asp:ListItem>
        <asp:ListItem Value="Australia"></asp:ListItem>
        <asp:ListItem Value="Austria"></asp:ListItem>
        <asp:ListItem Value="Azerbaijan"></asp:ListItem>
        <asp:ListItem Value="Bahamas"></asp:ListItem>
        <asp:ListItem Value="Bahrain"></asp:ListItem>
        <asp:ListItem Value="Bangladesh"></asp:ListItem>
        <asp:ListItem Value="Barbados"></asp:ListItem>
        <asp:ListItem Value="Belarus"></asp:ListItem>
        <asp:ListItem Value="Belgium"></asp:ListItem>
        <asp:ListItem Value="Belize"></asp:ListItem>
        <asp:ListItem Value="Benin"></asp:ListItem>
        <asp:ListItem Value="Bhutan"></asp:ListItem>
        <asp:ListItem Value="Bolivia"></asp:ListItem>
        <asp:ListItem Value="Bosnia and Herzegovina"></asp:ListItem>
        <asp:ListItem Value="Botswana"></asp:ListItem>
        <asp:ListItem Value="Brazil"></asp:ListItem>
        <asp:ListItem Value="Brunei"></asp:ListItem>
        <asp:ListItem Value="Bulgaria"></asp:ListItem>
        <asp:ListItem Value="Burkina Faso"></asp:ListItem>
        <asp:ListItem Value="Burundi"></asp:ListItem>
        <asp:ListItem Value="Côte d'Ivoire"></asp:ListItem>
        <asp:ListItem> Cabo Verde</asp:ListItem>
        <asp:ListItem Value="Cambodia"></asp:ListItem>
        <asp:ListItem Value="Cameroon"></asp:ListItem>
        <asp:ListItem Value="Canada"></asp:ListItem>
        <asp:ListItem Value="Central African Republic"></asp:ListItem>
        <asp:ListItem Value="Chad"></asp:ListItem>
        <asp:ListItem Value="Chile"></asp:ListItem>
        <asp:ListItem Value="China"></asp:ListItem>
        <asp:ListItem Value="Colombia"></asp:ListItem>
        <asp:ListItem Value="Comoros"></asp:ListItem>
        <asp:ListItem Value="Congo"></asp:ListItem>
        <asp:ListItem Value="Costa Rica"></asp:ListItem>
        <asp:ListItem Value="Croatia">Croatia</asp:ListItem>
        <asp:ListItem Value="Cuba"></asp:ListItem>
        <asp:ListItem Value="Cyprus"></asp:ListItem>
        <asp:ListItem Value="Czech Republic"></asp:ListItem>
        <asp:ListItem Value="Democratic Republic of the Congo"></asp:ListItem>
        <asp:ListItem Value="Denmark"></asp:ListItem>
        <asp:ListItem Value="Djibouti"></asp:ListItem>
        <asp:ListItem Value="Dominica"></asp:ListItem>
        <asp:ListItem Value="Dominican Republic"></asp:ListItem>
        <asp:ListItem Value="Ecuador"></asp:ListItem>
        <asp:ListItem Value="Egypt"></asp:ListItem>
        <asp:ListItem Value="El Salvador"></asp:ListItem>
        <asp:ListItem Value="Equatorial Guinea"></asp:ListItem>
        <asp:ListItem Value="Eritrea"></asp:ListItem>
        <asp:ListItem Value="Estonia"></asp:ListItem>
        <asp:ListItem Value="Ethiopia"></asp:ListItem>
        <asp:ListItem Value="Fiji"></asp:ListItem>
        <asp:ListItem Value="Finland"></asp:ListItem>
        <asp:ListItem Value="France"></asp:ListItem>
        <asp:ListItem Value="Gabon"></asp:ListItem>
        <asp:ListItem Value="Gambia"></asp:ListItem>
        <asp:ListItem Value="Georgia"></asp:ListItem>
        <asp:ListItem Value="Germany"></asp:ListItem>
        <asp:ListItem Value="Ghana"></asp:ListItem>
        <asp:ListItem Value="Greece"></asp:ListItem>
        <asp:ListItem Value="Grenada"></asp:ListItem>
        <asp:ListItem Value="Guatemala"></asp:ListItem>
        <asp:ListItem Value="Guinea"></asp:ListItem>
        <asp:ListItem Value="Guinea-Bissau"></asp:ListItem>
        <asp:ListItem Value="Guyana"></asp:ListItem>
        <asp:ListItem Value="Haiti"></asp:ListItem>
        <asp:ListItem Value="Holy See"></asp:ListItem>
        <asp:ListItem Value="Honduras"></asp:ListItem>
        <asp:ListItem Value="Hungary"></asp:ListItem>
        <asp:ListItem Value="Iceland"></asp:ListItem>
        <asp:ListItem Value="India"></asp:ListItem>
        <asp:ListItem Value="Indonesia"></asp:ListItem>
        <asp:ListItem Value="Iran"></asp:ListItem>
        <asp:ListItem Value="Iraq"></asp:ListItem>
        <asp:ListItem Value="Ireland"></asp:ListItem>
        <asp:ListItem Value="Israel"></asp:ListItem>
        <asp:ListItem Value="Italy"></asp:ListItem>
        <asp:ListItem Value="Jamaica"></asp:ListItem>
        <asp:ListItem Value="Japan"></asp:ListItem>
        <asp:ListItem Value="Jordan"></asp:ListItem>
        <asp:ListItem Value="Kazakhstan"></asp:ListItem>
        <asp:ListItem Value="Kenya"></asp:ListItem>
        <asp:ListItem Value="Kiribati"></asp:ListItem>
        <asp:ListItem Value="Kuwait"></asp:ListItem>
        <asp:ListItem Value="Kyrgyzstan"></asp:ListItem>
        <asp:ListItem Value="Laos"></asp:ListItem>
        <asp:ListItem Value="Latvia"></asp:ListItem>
        <asp:ListItem Value="Lebanon"></asp:ListItem>
        <asp:ListItem Value="Lesotho"></asp:ListItem>
        <asp:ListItem Value="Liberia"></asp:ListItem>
        <asp:ListItem Value="Libya"></asp:ListItem>
        <asp:ListItem Value="Liechtenstein"></asp:ListItem>
        <asp:ListItem Value="Lithuania"></asp:ListItem>
        <asp:ListItem Value="Luxembourg"></asp:ListItem>
        <asp:ListItem Value="Macedonia">Macedonia</asp:ListItem>
        <asp:ListItem Value="Madagascar"></asp:ListItem>
        <asp:ListItem Value="Malawi"></asp:ListItem>
        <asp:ListItem Value="Malaysia"></asp:ListItem>
        <asp:ListItem Value="Maldives"></asp:ListItem>
        <asp:ListItem Value="Mali"></asp:ListItem>
        <asp:ListItem Value="Malta"></asp:ListItem>
        <asp:ListItem Value="Marshall Islands"></asp:ListItem>
        <asp:ListItem Value="Mauritania"></asp:ListItem>
        <asp:ListItem Value="Mauritius"></asp:ListItem>
        <asp:ListItem Value="Mexico"></asp:ListItem>
        <asp:ListItem Value="Micronesia"></asp:ListItem>
        <asp:ListItem Value="Moldova"></asp:ListItem>
        <asp:ListItem Value="Monaco"></asp:ListItem>
        <asp:ListItem Value="Mongolia"></asp:ListItem>
        <asp:ListItem Value="Montenegro"></asp:ListItem>
        <asp:ListItem Value="Morocco"></asp:ListItem>
        <asp:ListItem Value="Mozambique"></asp:ListItem>
        <asp:ListItem Value="Myanmar (formerly Burma)"></asp:ListItem>
        <asp:ListItem Value="Namibia"></asp:ListItem>
        <asp:ListItem Value="Nauru"></asp:ListItem>
        <asp:ListItem Value="Nepal"></asp:ListItem>
        <asp:ListItem Value="Netherlands"></asp:ListItem>
        <asp:ListItem Value="New Zealand"></asp:ListItem>
        <asp:ListItem Value="Nicaragua"></asp:ListItem>
        <asp:ListItem Value="Nicaragua"></asp:ListItem>
        <asp:ListItem Value="Nigeria"></asp:ListItem>
        <asp:ListItem Value="North Korea"></asp:ListItem>
        <asp:ListItem Value="Norway"></asp:ListItem>
        <asp:ListItem Value="Oman"></asp:ListItem>
        <asp:ListItem Value="Pakistan"></asp:ListItem>
        <asp:ListItem Value="Palau"></asp:ListItem>
        <asp:ListItem Value="Palestine State"></asp:ListItem>
        <asp:ListItem Value="Panama"></asp:ListItem>
        <asp:ListItem Value="Papua New Guinea"></asp:ListItem>
        <asp:ListItem Value="Paraguay"></asp:ListItem>
        <asp:ListItem Value="Peru"></asp:ListItem>
        <asp:ListItem Value="Philippines"></asp:ListItem>
        <asp:ListItem Value="Poland"></asp:ListItem>
        <asp:ListItem Value="Portugal"></asp:ListItem>
        <asp:ListItem Value="Qatar"></asp:ListItem>
        <asp:ListItem Value="Romania"></asp:ListItem>
        <asp:ListItem Value="Russia"></asp:ListItem>
        <asp:ListItem Value="Rwanda"></asp:ListItem>
        <asp:ListItem Value="Saint Kitts and Nevis"></asp:ListItem>
        <asp:ListItem Value="Saint Lucia"></asp:ListItem>
        <asp:ListItem Value="Saint Vincent and the Grenadines"></asp:ListItem>
        <asp:ListItem Value="Samoa"></asp:ListItem>
        <asp:ListItem Value="San Marino"></asp:ListItem>
        <asp:ListItem Value="Sao Tome and Principe"></asp:ListItem>
        <asp:ListItem Value="Saudi Arabia"></asp:ListItem>
        <asp:ListItem Value="Senegal"></asp:ListItem>
        <asp:ListItem Value="Serbia"></asp:ListItem>
        <asp:ListItem Value="Seychelles"></asp:ListItem>
        <asp:ListItem Value="Sierra Leone"></asp:ListItem>
        <asp:ListItem Value="Singapore"></asp:ListItem>
        <asp:ListItem Value="Slovakia"></asp:ListItem>
        <asp:ListItem Value="Slovenia"></asp:ListItem>
        <asp:ListItem Value="Solomon Islands"></asp:ListItem>
        <asp:ListItem Value="Somalia	"></asp:ListItem>
        <asp:ListItem Value="South Africa"></asp:ListItem>
        <asp:ListItem Value="South Korea"></asp:ListItem>
        <asp:ListItem Value="South Sudan"></asp:ListItem>
        <asp:ListItem Value="Spain"></asp:ListItem>
        <asp:ListItem Value="Sri Lanka"></asp:ListItem>
        <asp:ListItem Value="Sudan"></asp:ListItem>
        <asp:ListItem Value="Suriname"></asp:ListItem>
        <asp:ListItem Value="Swaziland"></asp:ListItem>
        <asp:ListItem Value="Sweden"></asp:ListItem>
        <asp:ListItem Value="Switzerland"></asp:ListItem>
        <asp:ListItem Value="Syria"></asp:ListItem>
        <asp:ListItem Value="Tajikistan"></asp:ListItem>
        <asp:ListItem Value="Tanzania"></asp:ListItem>
        <asp:ListItem Value="Thailand"></asp:ListItem>
        <asp:ListItem Value="Timor-Leste"></asp:ListItem>
        <asp:ListItem Value="Togo"></asp:ListItem>
        <asp:ListItem Value="Tonga"></asp:ListItem>
        <asp:ListItem Value="Trinidad and Tobago"></asp:ListItem>
        <asp:ListItem Value="Tunisia"></asp:ListItem>
        <asp:ListItem Value="Turkey"></asp:ListItem>
        <asp:ListItem Value="Turkmenistan"></asp:ListItem>
        <asp:ListItem Value="Tuvalu"></asp:ListItem>
        <asp:ListItem Value="Uganda"></asp:ListItem>
        <asp:ListItem Value="Ukraine"></asp:ListItem>
        <asp:ListItem Value="United Arab Emirates"></asp:ListItem>
        <asp:ListItem Value="United Kingdom"></asp:ListItem>
        <asp:ListItem Value="United States of America"></asp:ListItem>
        <asp:ListItem Value="Uruguay"></asp:ListItem>
        <asp:ListItem Value="Uzbekistan"></asp:ListItem>
        <asp:ListItem Value="Vanuatu"></asp:ListItem>
        <asp:ListItem Value="Venezuela"></asp:ListItem>
        <asp:ListItem Value="Viet Nam"></asp:ListItem>
        <asp:ListItem Value="Yemen"></asp:ListItem>
        <asp:ListItem Value="Zambia"></asp:ListItem>
        <asp:ListItem Value="Zimbabwe"></asp:ListItem>
    </asp:DropDownList>
			  </div>
</div>

 
  
 
 <div class="row">
<%--    <div class="col-md-4 ProgramInfoPop"> 
    <h4> Report Month</h4>
     <input type="month" class="form-control" id="AddProgramMonth" placeholder="Add Month">
	
   </div>
   --%>
   
    <div class="col-md-4 ProgramInfoPop">
     <h4> Date:</h4> 
<%--     <input type="date" class="form-control" id="AddProgramDate" placeholder="Add Date">--%>
        <asp:TextBox CssClass="form-control" ID="txtDate" runat="server" placeholder="Add Date"></asp:TextBox>
     
     </div>
     
    <div class="col-md-4 ProgramInfoPop"> 
    
    <h4> Start Time:</h4> 
<%--    <input type="time" class="form-control" id="AddProgramTime" placeholder="Add Time">--%>
        <asp:TextBox CssClass="form-control" ID="txtTime" runat="server" placeholder="Add Time"></asp:TextBox>
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
       <asp:ListItem Text="" Value="0" />
       <asp:ListItem Text="Buddy" Value="1" />
    <asp:ListItem Text="Verlon" Value="2" />
    <asp:ListItem Text="Edie" Value="3" />
    <asp:ListItem Text="Maggie" Value="4" />
    <asp:ListItem Text="Grayson" Value="5" />
     <asp:ListItem Text="Keeya" Value="6" />
    <asp:ListItem Text="Ruby" Value="7" />
    <asp:ListItem Text="Rosalie" Value="8" />
    <asp:ListItem Text="Athena" Value="9" />
    <asp:ListItem Text="Gus" Value="20" />
     <asp:ListItem Text="Papa G'Ho" Value="11" />
    <asp:ListItem Text="Quin" Value="12" />
    <asp:ListItem Text="Alex" Value="13" />
    <asp:ListItem Text="Buttercup" Value="14" />
    <asp:ListItem Text="Jaz" Value="15" />
</asp:ListBox>

</div>
  

 
 
 
	  
  
       <div class="col-lg-4 ProgramInfoPop"> <h4 class="Animal"> Reptiles:</h4>
<%--     <div class="button-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Reptiles <span class="caret"></span></button>
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
     <asp:ListItem Text="" Value="0" />
    <asp:ListItem Text="Malcom" Value="1" />
    <asp:ListItem Text="Albus" Value="2" />
    <asp:ListItem Text="Severus" Value="3" />
    <asp:ListItem Text="Oscar" Value="4" />
    <asp:ListItem Text="Emma" Value="5" />
    <asp:ListItem Text="Wilson" Value="6" />

</asp:ListBox>
  
</div>
	     
	     
	     
  
       <div class="col-lg-4 ProgramInfoPop"> <h4 class="Animal"> Mammals:</h4> 
<%--     <div class="button-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Mammals <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Bo</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Posie</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Willow</a></li>

  
</ul>
 
</div>--%>

<asp:ListBox ID="lstMammals" CssClass="form-control" runat="server" SelectionMode="Multiple" class="dropdown-menu">
    <asp:ListItem Text="" Value="0" />
    <asp:ListItem Text="Bo" Value="1" />
    <asp:ListItem Text="Posie" Value="2" />
    <asp:ListItem Text="Willow" Value="3" />
</asp:ListBox>
 
</div>
 </div>
 
 <div class="row">
    <div class="col-md-3 ProgramInfoPop"><h4>Payment Complete?</h4> 
    <asp:label  runat="server" class="checkbox-inline "><input type="radio" value="1" name="alphabet" > Paid</asp:label>
    <br>
<asp:label runat="server" CssClass="checkbox-inline"><input type="radio" value="2" name="alphabet" > Not Paid</asp:label></div>
    <div class="col-md-9 ProgramInfoPop"><div class="form-group">
  <label for="comment">Comment:</label>
  <asp:TextBox  runat="server" class="form-control" rows="5" cols = "20" id="AddOnlineComment"></asp:TextBox>
</div></div>
</div>
  </div>
  
            <div class="modal-footer">
        <%-- <button type="button" class="btn btn-primary LoginButton" data-toggle="modal" data-target="#OnlineProgramModal" data-dismiss="modal">Add</button>--%>
                  <asp:Button ID="btnSubmitForm" runat="server" OnClick="btnSubmit_Click1"  class ="btn btn-primary LoginButton" href="ProgramForm.aspx" Text="Add" aria-hidden="true"/>
                <asp:button runat ="server" type="button" class="btn btn-secondary" data-dismiss="modal" Text ="Close"></asp:button>
            </div>
        </div>
    </div>
    </div>




      <!-- /.content-wrapper -->
 </div>

       <!-- Pop Up modal to View program --> 
       
       <%--<div class="modal" id="OnlineProgramModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-full" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"> Online Program Details</h5>
                <asp:button type="button" runat="server" class="close" data-dismiss="modal" aria-label="Close" Text ="X ">
                   <%-- <span aria-hidden="true">×</span>
                </asp:button>
            </div>
            <div class="modal-body p-4" id="resultOnlineProgram">
                    
                  
				<div class="row ">           
	    <div class=" col-md-4 ProgramInfoPop">
	     <h4> Status:</h4> <h6 class="ProgramDescription" id="OnlineProgramStatus"> Completed</h6>
	    
			</div> 
			
			
     <div class=" col-md-4 ProgramInfoPop">
	    <h4>Type </h4> 
    <h6 class="ProgramDescription" id="OnlineType"> Cam in the Classroom</h6>
	    
			</div>
	     
			
			
			<!-- End  Description --> 
	</div><!-- End  row --> 
         
         <div class="row ">           
	    
			<div class=" col-md-4 ProgramInfoPop">
	    <h4>Teacher Name </h4> 
    <h6 class="ProgramDescription" id="OnlineTeacher"> Mrs. Johnson</h6>
	
			</div>
	     
			<div class=" col-md-4 ProgramInfoPop">
	    <h4> Children </h4> 
    <h6 class="ProgramDescription" id="OnlineChild"> 25</h6>
	    
	    
	    
			</div>
			
			<div class=" col-md-4 ProgramInfoPop">
	    <h4> People</h4> 
    <h6 class="ProgramDescription" id="OnlinePeople"> 45</h6>
	    
	    
	    
			</div>
			
	
			
			<!-- End  Description --> 
	</div><!-- End  row --> 
          
        
          <div class="row">
			  <div class=" col-md-4 ProgramInfoPop">
	    <h4> Grade </h4> 
    <h6 class="ProgramDescription" id="OnlineGrade"> 3rd</h6>
	    
	    
	    
			</div>
    <div class="col-md-4 ProgramInfoPop"><h4> Educators</h4> <h6 class="OnlineEd" id="OrgName"> Raina</h6></div>
			  
 <div class="col-md-4 ProgramInfoPop"><h4> Email</h4> <h6 class="OnlineEmail" id="OnlineEmail"> School@gmail.com</h6></div>
   
    
    
</div>
	  
	<div class="row">
		<div class="col-md-4 ProgramInfoPop"><h4> City/County:</h4> <h6 class="ProgramDescription" id="OnlineProgramcity"> Harrisonburg</h6>
    </div>
    
    <div class="col-md-4 ProgramInfoPop"><h4> State/Province:</h4> <h6 class="ProgramDescription" id="OnlineProgramState"> Rockingham County</h6></div>
		
		<div class="col-md-4 ProgramInfoPop"><h4> Country:</h4> <h6 class="ProgramDescription" id="OnlineProgramCountry"> Rockingham County</h6></div>
</div>		
    
    

 
  
 
 <div class="row">
    <div class="col-md-4 ProgramInfoPop"> 
    <h4> Report Month</h4>
	<h6 class="ProgramDescription" id="OnlineProgramMonth"> October</h6> 
   </div>
   
   
    <div class="col-md-4 ProgramInfoPop">
     <h4> Date:</h4> <h6 class="ProgramDescription" id="OnlineProgramDate"> 10/14/18</h6></div>
     
     
    <div class="col-md-4 ProgramInfoPop"> <h4> Start Time:</h4> <h6 class="ProgramDescription" id="OnlineProgramTime"> 3:00 pm</h6></div>
</div>
 
 
 
 
 <div class="row">

 
  
 
  
       <div class="col-lg-4 ProgramInfoPop"><h4 class="Animal"> Birds:</h4>
     <h6 class="ProgramDescription" id="OnlineProgramBirds"> Buddy, Edie, Verlon</h6>
</div>
  

 
 
 
	  
  
       <div class="col-lg-4 ProgramInfoPop"> <h4 class="Animal"> Reptiles:</h4>
     <h6 class="ProgramDescription" id="OnlineProgramReptiles"> Severus</h6>
  
</div>
	     
	     
	     
  
       <div class="col-lg-4 ProgramInfoPop"> <h4 class="Animal"> Mammals:</h4> 
     <h6 class="ProgramDescription" id="OnlineProgramMammals"> Bo</h6>
 
</div>
 </div>
 
 <div class="row">
    <div class="col-md-12 ProgramInfoPop"><h4>Payment Complete?</h4> 
    <h6 class="ProgramDescription" id="OnlineProgramPayment"> Paid</h6>
    
</div>
 
  </div>
  
  
  <div class="row">
  <div class="col-md-12 ProgramInfoPop"><div class="form-group">
  <h6 > Comments</h6>
  <p>This is where you would see comments about the program. This is where you would see comments about the program. This is where you would see comments about the program. This is where you would see comments about the program.</p>
</div></div>
</div>
  
  --%>
        <%--    <div class="modal-footer">
<%--         <button type="button" class="btn btn-primary LoginButton"  data-toggle="modal" data-target="#EditOnlineProgramModal" data-dismiss="modal">Edit</button>--%>
              <%--  <asp:button runat="server" type="button" class="btn btn-secondary" data-dismiss="modal" Text ="Close"></asp:button>
            </div>
        </div>
    </div>
    </div>

      <!-- /.content-wrapper -->
 </div>

   
   </div> --%>
    

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
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <asp:button runat="server" class="btn btn-secondary" type="button" Text ="Cancel" data-dismiss="modal"></asp:button>
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
	 





       
</div>





</body>

</asp:Content>

