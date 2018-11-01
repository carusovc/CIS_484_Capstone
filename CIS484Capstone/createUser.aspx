<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="createUser.aspx.cs" Inherits="createUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<meta charset="UTF-8">
<section class="login-block">
    

<div class="container1">
      <div class="card card-register mx-auto mt-5">
        <div class="card-header NewUserTitle">Add Outreach Coordinator</div>
        <div class="card-body">
          
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                      
                      <label for="firstName">FIRST NAME</label>
                      <br />
                      <asp:TextBox ID="txtFirstName" runat="server" class="form-control" placeholder="First name" required="required"></asp:TextBox>
                    
                  </div>
                </div>
                <div class="col-md-6">

                  <div class="form-label-group">
                     
                      <label for="lastName">LAST NAME</label>
                      <br />
                      <asp:TextBox ID="txtLastName" class="form-control" placeholder="Last name" required="required" runat="server"></asp:TextBox>
                    
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                
                <label for="inputEmail">USERNAME</label>
                  <br />
                <asp:TextBox ID="txtUsername" class="form-control" placeholder="Pick a username" required="required" runat="server"></asp:TextBox>
              </div>
            </div>
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                    
                    <label for="inputPassword">PASSWORD</label>
                      <br />
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" class="form-control" placeholder="Password" required="required"></asp:TextBox>
                    <asp:Label ID="lblReminder" runat="server" Text="Password must include: 1 Number, 1 Special Character, 1 Capital letter, and at least 8 characters long."></asp:Label>
                  </div>
                </div>
                <%--<div class="col-md-6">
                  <div class="form-label-group">
                    <input type="password" id="confirmPassword" class="form-control" placeholder="Confirm password" required="required">
                    <label for="confirmPassword">Confirm password</label>
                  </div>
                </div>--%>
              </div>
            </div>
            
            <asp:CheckBox ID="chkShowPassword" runat="server" Text="Show Password"  AutoPostback ="True" OnCheckedChanged ="chkShowPassword_CheckedChanged"/>
            <asp:Button ID="btnSubmit" class="btn btn-primary btn-login btn-block" href="ProgramForm.aspx" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            <br />
            <asp:Label ID="lblStatus" runat="server"></asp:Label>
            <br />
          
          <div class="text-center">
            <%--<a class="d-block small mt-3" href="Default.aspx">Login Page</a>--%>
            <%--<a class="d-block small" href="forgot-password.html">Forgot Password?</a>--%>
          </div>
        </div>
      </div>
    </div>



       
</section>


<!-- jQuery and Bootstrap links - do not delete! -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
<!-- end of do not delete -->


</asp:Content>