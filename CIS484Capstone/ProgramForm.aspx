<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ProgramForm.aspx.cs" Inherits="ProgramForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <form>
  <div class="form-row">
    <div class="form-group col-md-6">
        
        
        <br />
        <br />
        
        
        <asp:Label ID="lblOrganizationName" runat="server" Text="Organization Name"></asp:Label>
        <br />
        <asp:TextBox ID="txtOrganizationName" runat="server" Width="365px" Height="30px"></asp:TextBox>
      
    </div>
    <div class="form-group col-md-6">
        <asp:Label ID="lblProgramAddress" runat="server" Text="Program Address"></asp:Label>
        <br />
        <asp:TextBox ID="txtProgramAddress" runat="server" Height="27px" Width="363px"></asp:TextBox>
      
    </div>
  </div>
  <div class="form-group">
      &nbsp;&nbsp;&nbsp;
      <asp:Label ID="lblReportMonth" runat="server" Text="Report Month"></asp:Label>
      :
      <asp:DropDownList ID="ddlReportMonth" runat="server">
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
          <asp:ListItem></asp:ListItem>
      </asp:DropDownList>
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <select id="inputState" class="form-control">
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" class="form-control" id="inputZip">
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Sign in</button>
</form>
</asp:Content>

