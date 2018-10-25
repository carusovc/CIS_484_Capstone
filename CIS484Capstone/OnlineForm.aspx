<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeFile="OnlineForm.aspx.cs" Inherits="Online" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    </asp:Label> Month:
    <asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged">
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
        &nbsp;&nbsp; Date:
    <asp:DropDownList ID="ddlDate" runat="server" AutoPostBack="True">
        <asp:ListItem Value="Day"></asp:ListItem>
    </asp:DropDownList>
&nbsp; Year:
    <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged">
        <asp:ListItem Value="Year"></asp:ListItem>
    </asp:DropDownList>
&nbsp; Program Type: 
    <asp:DropDownList ID="ddlProgramType" runat="server" DataSourceID="SqlDataSource1" DataTextField="OnlineProgramTypeName" DataValueField="OnlineProgramTypeID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString6 %>" SelectCommand="SELECT * FROM [OnlineProgramType]"></asp:SqlDataSource>
    <br />
    <br />
<%--    # of Kids in Class:&nbsp;
    <asp:TextBox ID="txtNumOfKids" runat="server"></asp:TextBox>
&nbsp; # of People:
    <asp:TextBox ID="txtNumOfPeople" runat="server"></asp:TextBox>
&nbsp; City/County
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>--%>
    &nbsp; State:
    <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
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
&nbsp;Country:
    <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
        <asp:ListItem Value="Country"></asp:ListItem>
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
        <asp:ListItem>Cabo Verde</asp:ListItem>
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
    <br />
    <br />
    <%--Teacher:
    <asp:TextBox ID="txtTeacher" runat="server"></asp:TextBox>--%>
<%--&nbsp; Email:
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>--%>
&nbsp; Grade:&nbsp;<asp:DropDownList ID="ddlGrade" runat="server" DataSourceID="SqlDataSource2" DataTextField="GradeLevel" DataValueField="GradeID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString7 %>" SelectCommand="SELECT * FROM [Grade]"></asp:SqlDataSource>
&nbsp;<br />
    <br />
    Educator:
    <asp:DropDownList ID="ddlEducator" runat="server" DataSourceID="SqlDataSource4" DataTextField="EducatorFirstName" DataValueField="EducatorID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=WildTek;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Educators]"></asp:SqlDataSource>
&nbsp;Theme:
    <asp:TextBox ID="txtTheme" runat="server"></asp:TextBox>
&nbsp; Animals Type:&nbsp;
    <asp:DropDownList ID="ddlAnimalType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlAnimalType_SelectedIndexChanged">
        <asp:ListItem>Bird</asp:ListItem>
        <asp:ListItem>Mammal</asp:ListItem>
        <asp:ListItem>Reptile</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp; Animal Name:
    <asp:DropDownList ID="ddlAnimalName" runat="server">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=WildTek;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Animal]"></asp:SqlDataSource>
    <br />
    <br />
<%--    Comments:
    <asp:TextBox ID="txtComments" runat="server"></asp:TextBox>--%>
    <br />
    <br />
<%--    <<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />--%>
    &nbsp;
    <asp:Button ID="btnPopulate" runat="server" Text="Populate" OnClick="btnPopulate_Click" />
&nbsp;
    <%--<asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click1" Text="Submit" />--%>

    <%--    << this is the new>>--%>
    <!DOCTYPE html>
<html lang="en">

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

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">
    
    
    
    

  </head>

  <body id="page-top">

    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="index.html">WildTek</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
      </button>

      <!-- Navbar Search -->
      <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
          <div class="input-group-append">
            <button class="btn btn-primary" type="button">
              <i class="fas fa-search"></i>
            </button>
          </div>
        </div>
      </form>

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
        <li class="nav-item active">
          <a class="nav-link" href="index.html">
            <i class="fas fa-fw fa-book-open"></i>
            <span>Programs</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Online.html">
            <i class="fas fa-fw fa-wifi"></i>
            <span>Online</span></a>
        </li>
       
        <li class="nav-item">
          <a class="nav-link" href="#">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>Simple Report</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">
            <i class="fas fa-fw fa-address-card"></i>
            <span>Animal</span></a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="#">
            <i class="fas fa-fw fa-dollar-sign"></i>
            <span>Payment</span></a>
        </li>
      </ul>

      <div id="content-wrapper">

        <div class="container-fluid">

          

       <!-- Programs-->
       <div class="row">
		<div class="col-md-12 ProgramTitle">
			<h1 >Online Programs</h1>
			
		</div>
	</div>
       <div class="col-md-12">
        <br>
			</div>
     
     <div class="container">

      

      <div class="row text-center text-lg-center">

        <div id="Program1" data-toggle="modal" data-target="#OnlineProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail" src="images/Wildlife-Pics/colorado_orig.jpg" alt="">
            <br> <h6 class="ProgramCaption">Colorado</h6>
          
        </div>
        <div id="Program2" data-toggle="modal" data-target="#OnlineProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail" src="images/Wildlife-Pics/Ontario.jpg" alt="">
            <br> <h6 class="ProgramCaption">Ontario, Canada</h6>
          
        </div>
        <div id="Program3" data-toggle="modal" data-target="#OnlineProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail" src="images/Wildlife-Pics/CA.jpg" alt="">
            <br> <h6 class="ProgramCaption">California</h6>
          
        </div>
        <div id="Program4" data-toggle="modal" data-target="#OnlineProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail" src="images/Wildlife-Pics/Germany.jpg" alt="">
            <br> <h6 class="ProgramCaption">Germany</h6>
          
        </div>
        <div id="Program5" ddata-toggle="modal" data-target="#OnlineProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail" src="images/Wildlife-Pics/Greece.jpg" alt="">
            <br> <h6 class="ProgramCaption">Greece</h6>
          
        </div>
        <div id="Program6" data-toggle="modal" data-target="#OnlineProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail" src="images/Wildlife-Pics/Tokyo.jpg" alt="">
            <br> <h6 class="ProgramCaption">Tokyo, Japan</h6>
          
        </div>
		  
        <div id="AddProgram" data-toggle="modal" data-target="#AddOnlineProgramModal"  class="col-lg-3 col-md-4 col-xs-4">
          
            <img class="img-fluid img-thumbnail" src="images/Add.png" alt="">
            <br> <h6 class="ProgramCaption">Add Program</h6>
          
        </div>
        
        <div class="row">
        	
        	<br><br>
   
        </div>
        
      </div>
    </div>
     
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
	    <input type="text" class="form-control" id="AddOnlineStatus" placeholder="Add Status">
	     
	    
			</div> 
			
			
     <div class=" col-md-4 ProgramInfoPop">
	    <h4>Add New Type </h4> 
    
	    <input type="text" class="form-control" id="AddOnlineType" placeholder="Add Type">
			</div>
	     
<div class="col-md-4 ProgramInfoPop"><h4>Type</h4> 
    <div class="button-group">
    <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Type <span class="caret"></span></button>
<ul class="dropdown-menu">
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
  <li><a href="#" class="small DropdownAnimal" data-value="option10" tabIndex="-1"><input type="radio" value="10" name="alphabet"/>&nbsp;Skype: Snakes</a></li>
  
  
  
  
</ul>
     
	</div>    
	    
			</div>			
			
			<!-- End  Description --> 
	</div><!-- End  row --> 
         
         <div class="row ">           
	    
			<div class=" col-md-4 ProgramInfoPop">
	    <h4>Teacher Name </h4> 
    
	<input type="text" class="form-control" id="AddOnlineTeacher" placeholder="Add Teacher">
			</div>
	     
			<div class=" col-md-4 ProgramInfoPop">
	    <h4> Children </h4> 
   
	 <input type="number" class="form-control" id="AddOnlineChild" placeholder="Add # of Children">   
	    
	    
			</div>
			 
			 <div class=" col-md-4 ProgramInfoPop">
	    <h4> People </h4> 
   
	 <input type="number" class="form-control" id="AddOnlinePeople" placeholder="Add # of People">   
	    
	    
			</div>
			
			 
			
	
			
			<!-- End  Description --> 
	</div><!-- End  row --> 
          
        
          <div class="row">
			  
			  <div class="col-md-4 ProgramInfoPop"><h4>Grade</h4> 
    <div class="button-group">
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
  
  
  
</ul>
     
	</div>    
	    
			</div>
    <div class="col-md-4 ProgramInfoPop"><h4> Educators</h4> 
    <div class="button-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Educators <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Raina</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Alex</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;IDk</a></li>
  
  
  
</ul>
  </div>
			  </div>
			  
			  <div class=" col-md-4 ProgramInfoPop">
	    <h4> Email </h4> 
   
	 <input type="email" class="form-control" id="AddOnlineEmail" placeholder="Add Email">   
	    
	    
			</div>
			  
</div>
	  
			
    
    <div class="row">
		<div class="col-md-4 ProgramInfoPop"><h4> City/County:</h4> 
	  <input type="city" class="form-control" id="AddOnlineProgramcity" placeholder="Add City/County">
	  
    </div>
    
    <div class="col-md-4 ProgramInfoPop"><h4> State/Province:</h4> 
    <input type="county" class="form-control" id="AddOnlineProgramCountry" placeholder="Add State/Province">
			  </div>
		<div class="col-md-4 ProgramInfoPop"><h4> Country:</h4> 
    <input type="county" class="form-control" id="AddProgramCounty" placeholder="Add Country">
			  </div>
</div>

 
  
 
 <div class="row">
    <div class="col-md-4 ProgramInfoPop"> 
    <h4> Report Month</h4>
     <input type="month" class="form-control" id="AddProgramMonth" placeholder="Add Month">
	
   </div>
   
   
    <div class="col-md-4 ProgramInfoPop">
     <h4> Date:</h4> 
     <input type="date" class="form-control" id="AddProgramDate" placeholder="Add Date">
     
     </div>
     
    <div class="col-md-4 ProgramInfoPop"> 
    
    <h4> Start Time:</h4> 
    <input type="time" class="form-control" id="AddProgramTime" placeholder="Add Time">
   </div> 
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
    <label class="checkbox-inline "><input type="radio" value="1" name="alphabet" > Paid</label>
    <br>
<label class="checkbox-inline"><input type="radio" value="2" name="alphabet" > Not Paid</label></div>
    <div class="col-md-9 ProgramInfoPop"><div class="form-group">
  <label for="comment">Comment:</label>
  <textarea class="form-control" rows="5" id="AddOnlineComment"></textarea>
</div></div>
</div>
  
  
            <div class="modal-footer">
         <button type="button" class="btn btn-primary LoginButton" data-toggle="modal" data-target="#OnlineProgramModal" data-dismiss="modal">Add</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
    </div>




      <!-- /.content-wrapper -->
 </div>

 
   
    <!-- Pop Up modal to Editprogram --> 
   
   <div class="modal" id="EditOnlineProgramModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-full" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"> Edit Online Program Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body p-4" id="resultEditOnlineProgram">
                    
                  
				<div class="row ">           
	    <div class=" col-md-4 ProgramInfoPop">
	     <h4> Status:</h4> 
	    <input type="text" class="form-control" id="EditOnlineStatus" placeholder="Edit Status">
	     
	    
			</div> 
			
			
     <div class=" col-md-4 ProgramInfoPop">
	    <h4>Add New Type </h4> 
    
	    <input type="text" class="form-control" id="EditOnlineType" placeholder="Edit Type">
			</div>
	     
<div class="col-md-4 ProgramInfoPop"><h4>Type</h4> 
    <div class="button-group">
    <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Type <span class="caret"></span></button>
<ul class="dropdown-menu">
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
  <li><a href="#" class="small DropdownAnimal" data-value="option10" tabIndex="-1"><input type="radio" value="10" name="alphabet"/>&nbsp;Skype: Snakes</a></li>
  
  
  
  
</ul>
     
	</div>    
	    
			</div>			
			
			<!-- End  Description --> 
	</div><!-- End  row --> 
         
         <div class="row ">           
	    
			<div class=" col-md-4 ProgramInfoPop">
	    <h4>Teacher Name </h4> 
    
	<%--<input class="form-control" id="txtTeacher" runat="server" placeholder="Edit Teacher">--%>
                 <asp:TextBox class="form-control" id="txtTeacher" runat="server" placeholder="Edit Teacher"></asp:TextBox>
			</div>
	     
			<div class=" col-md-4 ProgramInfoPop">
	    <h4> Children </h4> 
   
	 <asp:TextBox cssclass="form-control" ID="txtNumOfKids" runat="server" placeholder="Edit # of Children" ></asp:TextBox>   
	      <%--csstype="number"--%>
	    
			</div>
			 
			 <div class=" col-md-4 ProgramInfoPop">
	    <h4> People </h4> 
   
	 <asp:TextBox  cssclass="form-control" id="txtNumOfPeople" runat="server" placeholder="Edit # of People"></asp:TextBox>    
	     <%--csstype="number"--%>
	    
			</div>

			<!-- End  Description --> 
	</div><!-- End  row --> 
          
        
          <div class="row">
			  
			  <div class="col-md-4 ProgramInfoPop"><h4>Grade</h4> 
    <div class="button-group">
    <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Grade <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option0" tabIndex="-1"><input type="checkbox"/>&nbsp;Pre-K</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;K</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;1st</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;2nd</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option4" tabIndex="-1"><input type="checkbox"/>&nbsp;3rd</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option5" tabIndex="-1"><input type="checkbox"/>&nbsp;4th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option6" tabIndex="-1"><input type="checkbox"/>&nbsp;5th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option7" tabIndex="-1"><input type="checkbox"/>&nbsp;6th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option8" tabIndex="-1"><input type="checkbox"/>&nbsp;7th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option9" tabIndex="-1"><input type="checkbox"/>&nbsp;8th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option10" tabIndex="-1"><input type="checkbox"/>&nbsp;9th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option11" tabIndex="-1"><input type="checkbox"/>&nbsp;10th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option12" tabIndex="-1"><input type="checkbox"/>&nbsp;11th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option13" tabIndex="-1"><input type="checkbox"/>&nbsp;12th</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option14" tabIndex="-1"><input type="checkbox"/>&nbsp;Familes</a></li>
	<li><a href="#" class="small DropdownAnimal" data-value="option14" tabIndex="-1"><input type="checkbox"/>&nbsp;Adults Only</a></li>
  
  
  
</ul>
     
	</div>    
			</div>
<%--<asp:DropDownList ID="ddlGrade" runat="server" DataSourceID="SqlDataSource2" DataTextField="GradeLevel" DataValueField="GradeID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString7 %>" SelectCommand="SELECT * FROM [Grade]"></asp:SqlDataSource>--%>



    <div class="col-md-4 ProgramInfoPop"><h4> Educators</h4> 
    <div class="button-group">
        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Choose Educators <span class="caret"></span></button>
<ul class="dropdown-menu">
  <li><a href="#" class="small DropdownAnimal" data-value="option1" tabIndex="-1"><input type="checkbox"/>&nbsp;Raina</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option2" tabIndex="-1"><input type="checkbox"/>&nbsp;Alex</a></li>
  <li><a href="#" class="small DropdownAnimal" data-value="option3" tabIndex="-1"><input type="checkbox"/>&nbsp;IDk</a></li>

</ul>
  </div>
</div>

<%--<asp:DropDownList ID="ddlEducator" runat="server" DataSourceID="SqlDataSource4" DataTextField="EducatorFirstName" DataValueField="EducatorID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=WildTek;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Educators]"></asp:SqlDataSource>--%>

			  
			  <div class=" col-md-4 ProgramInfoPop">
	    <h4> Email </h4> 
   
	 <input type="email" class="form-control" id="EditOnlineEmail" placeholder="Edit Email">   
                    <asp:TextBox ID="txtEmail" runat="server" type="email" class="form-control" placeholder="Edit Email"></asp:TextBox>

			</div>
			  
</div>
	  
			
    
    <div class="row">
		<div class="col-md-4 ProgramInfoPop"><h4> City/County:</h4> 
	  <asp:TextBox class="form-control" id="txtCity" runat="server" placeholder="Edit City/County"></asp:TextBox>
	  
    </div>
    
    <div class="col-md-4 ProgramInfoPop"><h4> State/Province:</h4> 
    <asp:TextBox type="state" CssClass="form-control" id="txtState" runat="server" placeholder="Edit State/Province"></asp:TextBox>
			  </div>
		<div class="col-md-4 ProgramInfoPop"><h4> Country:</h4> 
    <asp:TextBox class="form-control" id="txtCountry" runat="server" placeholder="Edit Country"></asp:TextBox>
			  </div>
</div>

 
  
 
 <div class="row">
    <div class="col-md-4 ProgramInfoPop"> 
    <h4> Report Month</h4>
     <input type="month" class="form-control" id="EditProgramMonth" placeholder="Edit Month">
	
   </div>
   
   
    <div class="col-md-4 ProgramInfoPop">
     <h4> Date:</h4> 
     <input type="date" class="form-control" id="EditProgramDate" placeholder="Edit Date">
     
     </div>
     
    <div class="col-md-4 ProgramInfoPop"> 
    
    <h4> Start Time:</h4> 
    <input type="time" class="form-control" id="EditProgramTime" placeholder="Edit Time">
   </div> 
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
    <label class="checkbox-inline "><input type="radio" value="1" name="alphabet" > Paid</label>
    <br>
<label class="checkbox-inline"><input type="radio" value="2" name="alphabet" > Not Paid</label></div>
    <div class="col-md-9 ProgramInfoPop"><div class="form-group">
  <label for="comment">Comment:</label>
  <asp:TextBox cssclass="form-control" rows="5" id="txtComments" runat="server" TextMode="multiline" ></asp:TextBox>
</div></div>
</div>
  
  
            <div class="modal-footer">
                <asp:Button ID="Button1" runat="server" OnClick="btnSubmit_Click1" Text="Save" type="button" class="btn btn-primary LoginButton" data-toggle="modal" data-target="#OnlineProgramModal" data-dismiss="modal"/>
    <%--     <button type="button" class="btn btn-primary LoginButton" data-toggle="modal" data-target="#OnlineProgramModal" data-dismiss="modal">Save</button>--%>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
    </div>




      <!-- /.content-wrapper -->
 </div>

   
   
   
   
   
   
       <!-- Pop Up modal to View program --> 
       
       <div class="modal" id="OnlineProgramModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-full" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"> Online Program Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
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
  
  
            <div class="modal-footer">
         <button type="button" class="btn btn-primary LoginButton"  data-toggle="modal" data-target="#EditOnlineProgramModal" data-dismiss="modal">Edit</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
    </div>




      <!-- /.content-wrapper -->
 </div>
 
   
   
   
   
   
   
   
   
   </div> </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
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
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
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
	 

  </body>

</html>




</asp:Content>

