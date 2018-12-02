using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.IO;

public partial class Organizations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



        OrganizationSearchDiv.Visible = false;

        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#EditAnimalModal').modal('show');});</script>", false);

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        SqlConnection connection = new SqlConnection(cs);
        connection.Open();
        DataTable dt1 = new DataTable();
        SqlDataAdapter adapt1 = new SqlDataAdapter(("Select OrgName, StreetAddress, City, County, State, PostalCode From Organization Order by OrgName;"), connection);
        adapt1.Fill(dt1);
        GridView1.DataSource = dt1;
        GridView1.DataBind();

        DataTable dt2 = new DataTable();
        SqlDataAdapter adapt2 = new SqlDataAdapter(("SELECT o.[OrgName] as OrgName, c.[ContactFirstName] as ContactFirstName, c.[ContactLastName] as ContactLastName, c.[ContactEmail] as ContactEmail, c.[PrimaryContact] as PrimaryContact FROM [Organization] as o Right Join [ContactInformation] as c on o.OrgID = c.OrgID ORDER BY [OrgName]"), connection);
        adapt2.Fill(dt2);
        GridView3.DataSource = dt2;
        GridView3.DataBind();

        ContactSearchDiv.Visible = false;


        if (!IsPostBack)
        {

            //call read array
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string read = "Select OrgID, OrgName from Organization";

                SqlCommand cmd = new SqlCommand(read, con);
                SqlDataReader myRead = cmd.ExecuteReader();

                while (myRead.Read())
                {
                    ddlOrg.Items.Add(new ListItem(myRead["OrgName"].ToString(), myRead["OrgID"].ToString()));
                }
                con.Close();
                sc.Close();
            }
        }

        connection.Close();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {

        OrganizationSearchDiv.Visible = true;
        gridSearch.DataBind();
        //gridAnimalMammal.Visible = false;
        //gridBird.Visible = false;
        //gridReptile.Visible = false;
        //gridSearch.Visible = true;



        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand search = new System.Data.SqlClient.SqlCommand();
        search.Connection = sc;
        SqlConnection con = new SqlConnection(cs);
        string searchOrganization = txtSearch.Text;

        DataTable dt = new DataTable();
        SqlDataAdapter adapt = new SqlDataAdapter("Select OrgName, StreetAddress, City, County, State, PostalCode " +
            "from Organization where UPPER(OrgName) like UPPER('%" + searchOrganization + "%') or UPPER(County) like UPPER('%" + searchOrganization + "%') " +
            "or UPPER(City) like UPPER('%" + searchOrganization + "%') or UPPER(State) like UPPER('%" + searchOrganization + "%')", con);

        adapt.Fill(dt);
        gridSearch.DataSource = dt;
        gridSearch.DataBind();

    }





    protected void ddlOrderBy_SelectedIndexChanged(object sender, EventArgs e)
    {
        OrganizationSearchDiv.Visible = false;
        gridSearch.DataBind();

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();
        System.Data.SqlClient.SqlCommand search = new System.Data.SqlClient.SqlCommand();
        search.Connection = sc;
        SqlConnection con = new SqlConnection(cs);


        int orderType = ddlOrderBy.SelectedIndex;
        switch (orderType)
        {

            case 0:
                OrganizationSearchDiv.Visible = false;
                break;
            case 1:

                DataTable dt1 = new DataTable();
                SqlDataAdapter adapt1 = new SqlDataAdapter(("Select OrgName, StreetAddress, City, County, State, PostalCode From Organization Order by OrgName;"), con);
                adapt1.Fill(dt1);
                GridView1.DataSource = dt1;
                GridView1.DataBind();
                break;
            case 2:
                DataTable dt2 = new DataTable();
                SqlDataAdapter adapt2 = new SqlDataAdapter(("Select OrgName, StreetAddress, City, County, State, PostalCode From Organization Order by City;"), con);
                adapt2.Fill(dt2);
                GridView1.DataSource = dt2;
                GridView1.DataBind();
                break;
            case 3:
                DataTable dt3 = new DataTable();
                SqlDataAdapter adapt3 = new SqlDataAdapter(("Select OrgName, StreetAddress, City, County, State, PostalCode From Organization Order by County;"), con);
                adapt3.Fill(dt3);
                GridView1.DataSource = dt3;
                GridView1.DataBind();
                break;


        }
    }
    protected void btnAddContact_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";

        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();


        sc.Open();
        insert.Connection = sc;

        //call read array
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        ddlOrg.Items.Clear();
        if (con.State == System.Data.ConnectionState.Open)
        {
            string read = "Select OrgID, OrgName from Organization";

            SqlCommand cmd = new SqlCommand(read, con);
            SqlDataReader myRead = cmd.ExecuteReader();

            ddlOrg.Items.Add(new ListItem("--Select Organization--", "0"));
            while (myRead.Read())
            {
                ddlOrg.Items.Add(new ListItem(myRead["OrgName"].ToString(), myRead["OrgID"].ToString()));
            }
        }

        String contactFirstName = txtContactFirstName.Text;
        String contactLastName = txtContactLastName.Text;
        String contactEmail = txtContactEmail.Text;

        insert.CommandText = "insert into ContactInformation (contactFirstName, contactLastName, contactEmail, PrimaryContact, OrgID, LastUpdated, LastUpdatedBy) values (@contactFN, @contactLN, @contactEmail, @primaryContact, @OrgID, @LastUpdated, @LastUpdatedBy)";
        insert.Parameters.AddWithValue("@contactFN", contactFirstName);
        insert.Parameters.AddWithValue("@contactLN", contactLastName);
        insert.Parameters.AddWithValue("@contactEmail", contactEmail);
        insert.Parameters.AddWithValue("@PrimaryContact", "N");
        insert.Parameters.AddWithValue("@OrgID", ddlOrg.SelectedValue);
        insert.Parameters.AddWithValue("@LastUpdated", DateTime.Now);
        insert.Parameters.AddWithValue("@LastUpdatedBy", "WildTek Developers");
        insert.ExecuteNonQuery();

        txtContactFirstName.Text = "";
        txtContactLastName.Text = "";
        txtContactEmail.Text = "";
        ddlOrg.ClearSelection();
        con.Close();
        sc.Close();

    }

    protected void btnAllClear_Click(object sender, EventArgs e)
    {
        txtSearch.Text = "";
        ddlOrderBy.SelectedIndex = 0;
        gridSearch.Visible = false;

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        SqlConnection connection = new SqlConnection(cs);
        connection.Open();
        DataTable dt1 = new DataTable();
        SqlDataAdapter adapt1 = new SqlDataAdapter(("Select OrgName, StreetAddress, City, County, State, PostalCode From Organization Order by OrgName;"), connection);
        adapt1.Fill(dt1);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
        connection.Close();
    }

    protected void ddlContactOrderBy_SelectedIndexChanged(object sender, EventArgs e)
    {
        ContactSearchDiv.Visible = false;
        ContactSearchGrid.DataBind();

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();
        System.Data.SqlClient.SqlCommand search = new System.Data.SqlClient.SqlCommand();
        search.Connection = sc;
        SqlConnection con = new SqlConnection(cs);


        int orderType = ddlContactOrderBy.SelectedIndex;
        switch (orderType)
        {

            case 0:
                ContactSearchDiv.Visible = false;
                break;
            case 1:

                DataTable dt1 = new DataTable();
                SqlDataAdapter adapt1 = new SqlDataAdapter(("SELECT o.[OrgName] as OrgName, c.[ContactFirstName] as ContactFirstName, c.[ContactLastName] as ContactLastName, c.[ContactEmail] as ContactEmail, c.[PrimaryContact] as PrimaryContact FROM [Organization] as o Right Join [ContactInformation] as c on o.OrgID = c.OrgID ORDER BY [OrgName];"), con);
                adapt1.Fill(dt1);
                GridView3.DataSource = dt1;
                GridView3.DataBind();
                break;
            case 2:
                DataTable dt2 = new DataTable();
                SqlDataAdapter adapt2 = new SqlDataAdapter(("SELECT o.[OrgName] as OrgName, c.[ContactFirstName] as ContactFirstName, c.[ContactLastName] as ContactLastName, c.[ContactEmail] as ContactEmail, c.[PrimaryContact] as PrimaryContact FROM [Organization] as o Right Join [ContactInformation] as c on o.OrgID = c.OrgID ORDER BY [ContactFirstName];"), con);
                adapt2.Fill(dt2);
                GridView3.DataSource = dt2;
                GridView3.DataBind();
                break;
            case 3:
                DataTable dt3 = new DataTable();
                SqlDataAdapter adapt3 = new SqlDataAdapter(("SELECT o.[OrgName] as OrgName, c.[ContactFirstName] as ContactFirstName, c.[ContactLastName] as ContactLastName, c.[ContactEmail] as ContactEmail, c.[PrimaryContact] as PrimaryContact FROM [Organization] as o Right Join [ContactInformation] as c on o.OrgID = c.OrgID ORDER BY [ContactLastName];"), con);
                adapt3.Fill(dt3);
                GridView3.DataSource = dt3;
                GridView3.DataBind();
                break;


        }
    }

    protected void btnContactSearch_Click(object sender, EventArgs e)
    {
        ContactSearchDiv.Visible = true;
        GridView3.Visible = true;


        //ContactSearchGrid.DataBind();

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand search = new System.Data.SqlClient.SqlCommand();
        search.Connection = sc;
        SqlConnection con = new SqlConnection(cs);
        string searchContacts = txtContactSearch.Text;

        DataTable dt = new DataTable();
        SqlDataAdapter adapt = new SqlDataAdapter("SELECT o.[OrgName] as OrgName, c.[ContactFirstName] as ContactFirstName, c.[ContactLastName] as ContactLastName, c.[ContactEmail] as ContactEmail, c.[PrimaryContact] as PrimaryContact FROM [Organization] as o Right Join [ContactInformation] as c on o.OrgID = c.OrgID where UPPER(OrgName) like UPPER('%" + searchContacts + "%') or UPPER(ContactFirstName) like UPPER('%" + searchContacts + "%') " +
            "or UPPER(ContactLastName) like UPPER('%" + searchContacts + "%') or UPPER(ContactEmail) like UPPER('%" + searchContacts + "%') or UPPER(PrimaryContact) like UPPER('%" + searchContacts + "%')", con);



        adapt.Fill(dt);
        ContactSearchGrid.DataSource = dt;
        ContactSearchGrid.DataBind();


    }


    protected void btnContactClear_Click (object sender, EventArgs e)
    {
        ContactSearchDiv.Visible = false;
        GridView3.Visible = true;
    }



}



