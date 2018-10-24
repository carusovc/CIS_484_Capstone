<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MonthlyWildlifeReport.aspx.cs" Inherits="MonthlyWildlifeReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Monthly Reports for WildTek</h2>
            <asp:Label ID="lblMonth" runat="server" Text="Select a Month:"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="EventMonth" DataValueField="EventMonth">
                        <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT DISTINCT [EventMonth] FROM [Program]"></asp:SqlDataSource>
    
             <asp:Label ID="lblYear" runat="server" Text="Select a Year:"></asp:Label>
            <asp:DropDownList ID="drpYear" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="YEAR" DataValueField="YEAR">
                        <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT Distinct(YEAR(ProgramDate)) AS YEAR FROM Program"></asp:SqlDataSource>
    <br />


    <h4>Total Live Program Based on Month</h4>
        <asp:GridView ID="gridPrograms" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="ProgramID" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="EventMonth" HeaderText="Month" SortExpression="EventMonth" />
            <%--<asp:BoundField DataField="ProgramID" HeaderText="ID" SortExpression="ProgramID" />--%>
            <asp:TemplateField></asp:TemplateField>
            <asp:BoundField DataField="TotalOnSitePrograms" HeaderText="Total OnSite Programs" SortExpression="TotalOnSitePrograms" ReadOnly="True" />
            <asp:BoundField DataField="TotalOffSitePrograms" HeaderText="Total OffSite Programs" SortExpression="TotalOffSitePrograms" ReadOnly="True" />
            <asp:TemplateField></asp:TemplateField>
            <asp:BoundField DataField="NumberOfChildren" HeaderText="Total Number Of Children" SortExpression="NumberOfChildren" />
            <asp:BoundField DataField="NumberOfAdults" HeaderText="Total Number Of Adults" SortExpression="NumberOfAdults" />
            <asp:BoundField DataField="TotalParticipants" HeaderText="Total Attendance" SortExpression="TotalParticipants" ReadOnly="True" />
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

    <h4>Total Online Program Based on Month</h4>
     <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True">
         <Columns>
             <asp:BoundField DataField="Month" HeaderText="Event Month" SortExpression="Month" />
             <asp:BoundField DataField="NumberOfKids" HeaderText="Number Of Kids" SortExpression="NumberOfKids" />
             <asp:BoundField DataField="NumberOfPeople" HeaderText="Number Of Total People" SortExpression="NumberOfPeople" />
         </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [Month], [NumberOfKids], [NumberOfPeople] FROM [OnlineProgram] WHERE (Month = @EventMonth) AND (YEAR(ProgramDate)=@ProgramDate)">
         <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="EventMonth" PropertyName="SelectedValue" Type="String" />
             <asp:ControlParameter ControlID="drpYear" Name="ProgramDate" PropertyName="SelectedValue" Type="String" />
          
        </SelectParameters>
    </asp:SqlDataSource>

    <br />

        <h4>TOTALSSSSS Live Program Counts Based on Month</h4>
     <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True">
         <Columns>
             <asp:BoundField DataField="ProgramDate" HeaderText="ProgramDate" SortExpression="ProgramDate" />
             <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
             <asp:BoundField DataField="NumberOfChildren" HeaderText="NumberOfKids" SortExpression="NumberOfChildren" />
             <asp:BoundField DataField="NumberOfAdults" HeaderText="NumberOfPeople" SortExpression="NumberOfAdults" />
         </Columns>
        
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT SUM(ProgramAnimal.ProgramID) AS TotalPrograms,
        SUM(Program.NumberOfChildren + Program.NumberOfAdults) AS TotalParticipants FROM Animal LEFT OUTER JOIN ProgramAnimal ON Animal.AnimalID = ProgramAnimal.AnimalID LEFT OUTER JOIN Program 
        ON ProgramAnimal.ProgramID = Program.ProgramID WHERE (Animal.AnimalType = @AnimalType) ">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="AnimalType" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>

    </asp:SqlDataSource>


        <h4>TOTALSSSSS Online Program Counts Based on Month</h4>
     <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True">
         <Columns>
             <asp:BoundField DataField="ProgramDate" HeaderText="ProgramDate" SortExpression="ProgramDate" />
             <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
             <asp:BoundField DataField="NumberOfKids" HeaderText="NumberOfKids" SortExpression="NumberOfKids" />
             <asp:BoundField DataField="NumberOfPeople" HeaderText="NumberOfPeople" SortExpression="NumberOfPeople" />
         </Columns>
        
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT SUM(ProgramAnimal.ProgramID) AS TotalPrograms,
        SUM(Program.NumberOfChildren + Program.NumberOfAdults) AS TotalParticipants FROM Animal LEFT OUTER JOIN ProgramAnimal ON Animal.AnimalID = ProgramAnimal.AnimalID LEFT OUTER JOIN Program 
        ON ProgramAnimal.ProgramID = Program.ProgramID WHERE (Animal.AnimalType = @AnimalType) ">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="AnimalType" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>

    </asp:SqlDataSource>
    
</asp:Content>