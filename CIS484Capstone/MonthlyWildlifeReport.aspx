<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MonthlyWildlifeReport.aspx.cs" Inherits="MonthlyWildlifeReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Monthly Reports for WildTek</h2>
      <asp:Label ID="lblMonth" runat="server" Text="Select a Month:"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="EventMonth" DataValueField="EventMonth">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
  <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT DISTINCT[EventMonth], [ProgramID] FROM [Program]"></asp:SqlDataSource>
    
    <asp:Label ID="lblYear" runat="server" Text="Select a Year:"></asp:Label>
    <asp:DropDownList ID="drpYear" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="ProgramDate" DataValueField="ProgramDate">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>

    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT [ProgramDate], [ProgramID] FROM [Program]"></asp:SqlDataSource>
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="ProgramID" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="ProgramDate" HeaderText="YEAR" SortExpression="ProgramDate" />
            <asp:BoundField DataField="EventMonth" HeaderText="EventMonth" SortExpression="EventMonth" />
            <asp:BoundField DataField="ProgramID" HeaderText="ProgramID" SortExpression="ProgramID" ReadOnly="True" InsertVisible="False" />
            <asp:BoundField DataField="TotalOnSitePrograms" HeaderText="TotalOnSitePrograms" SortExpression="TotalOnSitePrograms" ReadOnly="True" />
            <asp:BoundField DataField="TotalOffSitePrograms" HeaderText="TotalOffSitePrograms" ReadOnly="True" SortExpression="TotalOffSitePrograms" />
            <asp:BoundField DataField="NumberOfChildren" HeaderText="NumberOfChildren" SortExpression="NumberOfChildren" />
            <asp:BoundField DataField="NumberOfAdults" HeaderText="NumberOfAdults" SortExpression="NumberOfAdults" />
            <asp:BoundField DataField="TotalParticipants" HeaderText="TotalParticipants" ReadOnly="True" SortExpression="TotalParticipants" />
            
        </Columns>
    </asp:GridView>--%>
   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT ProgramDate, EventMonth, ProgramID, 
        SUM(CASE WHEN onoff = 1 THEN 1 ELSE 0 END) AS TotalOnSitePrograms, SUM(CASE WHEN onoff = 0 THEN 1 ELSE 0 END) AS TotalOffSitePrograms, 
        NumberOfChildren, NumberOfAdults, SUM(NumberOfChildren + NumberOfAdults) AS TotalParticipants FROM Program WHERE (EventMonth = @EventMonth) AND (ProgramDate = @ProgramDate)
        GROUP BY ProgramDate, EventMonth, ProgramID, NumberOfChildren, NumberOfAdults">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="EventMonth" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="drpYear" Name="ProgramDate" PropertyName="SelectedValue" Type="datetime"/>
        </SelectParameters>

    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <asp:Label ID="lblSumTotals" runat="server" Text="Total for this Month:"></asp:Label>
     <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True">
         <Columns>
             <asp:BoundField DataField="TotalPrograms" HeaderText="TotalPrograms" ReadOnly="True" SortExpression="TotalPrograms" />
             <asp:BoundField DataField="TotalParticipants" HeaderText="TotalParticipants" ReadOnly="True" SortExpression="TotalParticipants" />
         </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT COUNT(*) AS TotalPrograms, SUM(NumberOfChildren + NumberOfAdults) AS TotalParticipants FROM Program WHERE (EventMonth = @EventMonth)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="EventMonth" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>

    </asp:SqlDataSource>
</asp:Content>

