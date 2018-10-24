<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       
    
    <h4>Total BreakDown of InPerson Programs Based on Month</h4>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="ProgramID" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="EventMonth" HeaderText="EventMonth" SortExpression="EventMonth" />
            <asp:BoundField DataField="TotalOnSitePrograms" HeaderText="TotalOnSitePrograms" SortExpression="TotalOnSitePrograms" ReadOnly="True" />
            <asp:BoundField DataField="TotalOffSitePrograms" HeaderText="TotalOffSitePrograms" SortExpression="TotalOffSitePrograms" ReadOnly="True" />
            <asp:BoundField DataField="NumberOfChildren" HeaderText="NumberOfChildren" SortExpression="NumberOfChildren" />
            <asp:BoundField DataField="NumberOfAdults" HeaderText="NumberOfAdults" SortExpression="NumberOfAdults" />
            <asp:BoundField DataField="TotalParticipants" HeaderText="TotalParticipants" SortExpression="TotalParticipants" ReadOnly="True" />
        </Columns>
    </asp:GridView>

   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT EventMonth, ProgramID, 
        SUM(CASE WHEN onoff = 1 THEN 1 ELSE 0 END) AS TotalOnSitePrograms, SUM(CASE WHEN onoff = 0 THEN 1 ELSE 0 END) AS TotalOffSitePrograms, 
         NumberOfChildren, NumberOfAdults, SUM(NumberOfChildren + NumberOfAdults) AS TotalParticipants FROM Program WHERE (EventMonth = @EventMonth) AND (YEAR(ProgramDate)=@ProgramDate)
        GROUP BY EventMonth, ProgramID, NumberOfChildren, NumberOfAdults">
       
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="EventMonth" PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="drpYear" Name="ProgramDate" PropertyName="SelectedValue" Type="String" />
          
        </SelectParameters>
     </asp:SqlDataSource>

    <br />
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT YEAR(ProgramDate) AS YEAR, ProgramID FROM Program"></asp:SqlDataSource>
  
     <h4>Total BreakDown of InPerson Programs Based on Month</h4>
    <asp:GridView ID="gridPrograms" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="ProgramID" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="EventMonth" HeaderText="Month" SortExpression="EventMonth" />
            <asp:TemplateField></asp:TemplateField>
            <asp:BoundField DataField="TotalOnSitePrograms" HeaderText="Total OnSite Programs" SortExpression="TotalOnSitePrograms" ReadOnly="True" />
            <asp:BoundField DataField="TotalOffSitePrograms" HeaderText="Total OffSite Programs" SortExpression="TotalOffSitePrograms" ReadOnly="True" />
            <asp:TemplateField></asp:TemplateField>
            <asp:BoundField DataField="NumberOfChildren" HeaderText="Total Number Of Children" SortExpression="NumberOfChildren" />
            <asp:BoundField DataField="NumberOfAdults" HeaderText="Total Number Of Adults" SortExpression="NumberOfAdults" />
            <asp:BoundField DataField="TotalParticipants" HeaderText="Total Attendance" SortExpression="TotalParticipants" ReadOnly="True" />
            
        </Columns>
     </asp:GridView>
    <br />
         <h4>Total InPerson Program Counts Based on Month</h4>
     <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True">
         <Columns>
             <asp:BoundField DataField="ProgramDate" HeaderText="ProgramDate" SortExpression="ProgramDate" />
             <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
             <asp:BoundField DataField="NumberOfKids" HeaderText="NumberOfKids" SortExpression="NumberOfKids" />
             <asp:BoundField DataField="NumberOfPeople" HeaderText="NumberOfPeople" SortExpression="NumberOfPeople" />
         </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [Month], [NumberOfKids], [NumberOfPeople] FROM [OnlineProgram] WHERE (Month = @EventMonth) AND (YEAR(ProgramDate)=@ProgramDate)">
         <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="EventMonth" PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="drpYear" Name="ProgramDate" PropertyName="SelectedValue" Type="String" />
          
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
         <h4>Total Online Program Counts Based on Month</h4>
     <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True">
         <Columns>
             <asp:BoundField DataField="ProgramDate" HeaderText="ProgramDate" SortExpression="ProgramDate" />
             <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
             <asp:BoundField DataField="NumberOfKids" HeaderText="NumberOfKids" SortExpression="NumberOfKids" />
             <asp:BoundField DataField="NumberOfPeople" HeaderText="NumberOfPeople" SortExpression="NumberOfPeople" />
         </Columns>
        
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT SUM(ProgramAnimal.ProgramID) AS TotalPrograms,
        SUM(Program.NumberOfChildren + Program.NumberOfAdults) AS TotalParticipants FROM Animal LEFT OUTER JOIN ProgramAnimal ON Animal.AnimalID = ProgramAnimal.AnimalID LEFT OUTER JOIN Program 
        ON ProgramAnimal.ProgramID = Program.ProgramID WHERE (Animal.AnimalType = @AnimalType) ">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="AnimalType" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>

    </asp:SqlDataSource>




































</asp:Content>



