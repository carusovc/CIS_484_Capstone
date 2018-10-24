<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AnimalMonthlyWildlifeReport.aspx.cs" Inherits="AnimalMonthlyWildlifeReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Report Based on Animal Type</h2>
    <asp:Label ID="Label1" runat="server" Text="Animal Type:"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="AnimalType" DataValueField="AnimalType">
     <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT DISTINCT [AnimalType] FROM [Animal]">
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="AnimalName" HeaderText="AnimalName" SortExpression="AnimalName" />
            <asp:BoundField DataField="ProgramID" HeaderText="ProgramID" SortExpression="ProgramID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="TotalOnSitePrograms" HeaderText="TotalOnSitePrograms" ReadOnly="True" SortExpression="TotalOnSitePrograms" />

            <asp:BoundField DataField="TotalOffSitePrograms" HeaderText="TotalOffSitePrograms" ReadOnly="True" SortExpression="TotalOffSitePrograms" />
            <asp:BoundField DataField="NumberOfChildren" HeaderText="NumberOfChildren" SortExpression="NumberOfChildren" />
            <asp:BoundField DataField="NumberOfAdults" HeaderText="NumberOfAdults" SortExpression="NumberOfAdults" />
            <asp:BoundField DataField="TotalParticipants" HeaderText="TotalParticipants" ReadOnly="True" SortExpression="TotalParticipants" />

        </Columns>
    </asp:GridView>
   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT Animal.AnimalType, 
       Program.ProgramID, SUM(CASE WHEN Program.onoff = 1 THEN 1 ELSE 0 END) AS TotalOnSitePrograms, SUM(CASE WHEN Program.onoff = 0 THEN 1 ELSE 0 END) AS TotalOffSitePrograms, 
       Program.NumberOfChildren, Program.NumberOfAdults,SUM(Program.NumberOfChildren + Program.NumberOfAdults) AS TotalParticipants, Animal.AnimalName FROM Animal 
       LEFT OUTER JOIN ProgramAnimal ON Animal.AnimalID = ProgramAnimal.AnimalID LEFT OUTER JOIN Program ON ProgramAnimal.ProgramID = Program.ProgramID 
       WHERE (Animal.AnimalType = @AnimalType) GROUP BY Animal.AnimalType, Animal.AnimalName, ProgramAnimal.AnimalID, Program.ProgramID, Program.NumberOfChildren, 
       Program.NumberOfAdults">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="AnimalType" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
        <asp:Label ID="lblSumTotals" runat="server" Text="Total for this Month:"></asp:Label>
     <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True">
         <Columns>
             <asp:BoundField DataField="TotalPrograms" HeaderText="TotalPrograms" ReadOnly="True" SortExpression="TotalPrograms" />
             <asp:BoundField DataField="TotalParticipants" HeaderText="TotalParticipants" ReadOnly="True" SortExpression="TotalParticipants" />
         </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString %>" SelectCommand="SELECT COUNT(ProgramAnimal.ProgramID) AS TotalPrograms, SUM(Program.NumberOfChildren + Program.NumberOfAdults) AS TotalParticipants FROM Animal LEFT OUTER JOIN ProgramAnimal ON Animal.AnimalID = ProgramAnimal.AnimalID LEFT OUTER JOIN Program ON ProgramAnimal.ProgramID = Program.ProgramID WHERE (Animal.AnimalType = @AnimalType) ">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="AnimalType" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>

    </asp:SqlDataSource>
</asp:Content>

