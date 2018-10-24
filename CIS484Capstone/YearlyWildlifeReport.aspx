<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="YearlyWildlifeReport.aspx.cs" Inherits="YearlyWildlifeReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h2>Yearly Reports for WildTek</h2>

 

     <asp:Label ID="lblYear" runat="server" Text="Select a Year:"></asp:Label>
    <asp:DropDownList ID="drpYear" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="YEAR" DataValueField="YEAR">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT YEAR(ProgramDate) AS YEAR, ProgramID FROM Program"></asp:SqlDataSource>
  
     <h4>Totals Based on InPerson Programs</h4>
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
    <br />
     <h4>Totals Based on Online Programs</h4>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT EventMonth, ProgramID, 
        SUM(CASE WHEN onoff = 1 THEN 1 ELSE 0 END) AS TotalOnSitePrograms, SUM(CASE WHEN onoff = 0 THEN 1 ELSE 0 END) AS TotalOffSitePrograms, NumberOfChildren, NumberOfAdults, 
        SUM(NumberOfChildren + NumberOfAdults) AS TotalParticipants FROM Program AS p GROUP BY EventMonth, ProgramID, NumberOfChildren, NumberOfAdults"></asp:SqlDataSource>

    <asp:GridView ID="gridOnlinePrograms" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="OnlineProgramID" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
            <asp:BoundField DataField="TotalOnlinePrograms" HeaderText="TotalOnlinePrograms" SortExpression="TotalOnlinePrograms" ReadOnly="True" />
            <asp:BoundField DataField="NumberOfKids" HeaderText="NumberOfKids" SortExpression="NumberOfKids" />
            
            <asp:BoundField DataField="NumberOfPeople" HeaderText="NumberOfPeople" SortExpression="NumberOfPeople" />
            
        </Columns>
        
     </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT Distinct(Month), 
        OnlineProgramID, COUNT(*) AS TotalOnlinePrograms, NumberOfKids, NumberOfPeople FROM OnlineProgram GROUP BY Month, OnlineProgramID, NumberOfKids, NumberOfPeople"></asp:SqlDataSource>


</asp:Content>

