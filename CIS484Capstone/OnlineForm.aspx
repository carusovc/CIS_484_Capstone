﻿<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeFile="OnlineForm.aspx.cs" Inherits="Online" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
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
    # of Kids in Class:&nbsp;
    <asp:TextBox ID="txtNumOfKids" runat="server"></asp:TextBox>
&nbsp; # of People:
    <asp:TextBox ID="txtNumOfPeople" runat="server"></asp:TextBox>
&nbsp; City/County
    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
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
    Teacher:
    <asp:TextBox ID="txtTeacher" runat="server"></asp:TextBox>
&nbsp; Email:
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
&nbsp; Grade:&nbsp;<asp:DropDownList ID="ddlGrade" runat="server" DataSourceID="SqlDataSource2" DataTextField="GradeLevel" DataValueField="GradeID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WildTekConnectionString7 %>" SelectCommand="SELECT * FROM [Grade]"></asp:SqlDataSource>
&nbsp;<br />
    <br />
    Educator:
    <asp:TextBox ID="txtEducator" runat="server"></asp:TextBox>
&nbsp;Theme:
    <asp:TextBox ID="txtTheme" runat="server"></asp:TextBox>
&nbsp; Animals Used:&nbsp;
    <asp:TextBox ID="txtAnimalsUsed" runat="server"></asp:TextBox>
    <br />
    <br />
    Comments:
    <asp:TextBox ID="txtComments" runat="server"></asp:TextBox>
    <br />
    <br />
<%--    <<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />--%>
    &nbsp;
    <asp:Button ID="btnPopulate" runat="server" Text="Populate" OnClick="btnPopulate_Click" />
&nbsp;
    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click1" Text="Submit" />
</asp:Content>
