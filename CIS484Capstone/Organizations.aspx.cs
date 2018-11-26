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
            SqlDataAdapter adapt = new SqlDataAdapter("Select OrgName, StreetAddress, City, County, State, PostalCode, ContactFirstName, ContactLastName, PhoneNumber, Email, SecondaryEmail " +
                "from Organization where UPPER(OrgName) like UPPER('" + searchOrganization + "%') or UPPER(County) like UPPER('" + searchOrganization + "%') " +
                "or UPPER(City) like UPPER('" + searchOrganization + "%') or UPPER(State) like UPPER('" + searchOrganization + "%') or UPPER(ContactFirstName) like UPPER('" + searchOrganization + "%') " +
                "or UPPER(ContactLastName) like UPPER('" + searchOrganization + "%')", con);

        adapt.Fill(dt);
        gridSearch.DataSource = dt;
        gridSearch.DataBind();

    }

     

            
        
protected void ddlOrderBy_SelectedIndexChanged(object sender, EventArgs e)
    {
        OrganizationSearchDiv.Visible = true;
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
                SqlDataAdapter adapt1 = new SqlDataAdapter(("Select OrgName, StreetAddress, City, County, State, PostalCode, ContactFirstName, ContactLastName, PhoneNumber, Email, SecondaryEmail  From Organization Order by OrgName;"), con);
                adapt1.Fill(dt1);
                gridSearch.DataSource = dt1;
                gridSearch.DataBind();
                break;
            case 2:
                DataTable dt2 = new DataTable();
                SqlDataAdapter adapt2 = new SqlDataAdapter(("Select OrgName, StreetAddress, City, County, State, PostalCode, ContactFirstName, ContactLastName, PhoneNumber, Email, SecondaryEmail  From Organization Order by City;"), con);
                adapt2.Fill(dt2);
                gridSearch.DataSource = dt2;
                gridSearch.DataBind();
                break;
            case 3:
                DataTable dt3 = new DataTable();
                SqlDataAdapter adapt3 = new SqlDataAdapter(("Select OrgName, StreetAddress, City, County, State, PostalCode, ContactFirstName, ContactLastName, PhoneNumber, Email, SecondaryEmail  From Organization Order by County;"), con);
                adapt3.Fill(dt3);
                gridSearch.DataSource = dt3;
                gridSearch.DataBind();
                break;


        }
    }
}



