using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class UpdateOrganization : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;


        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);
        if (!IsPostBack)
        {
            

            //call read array
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {

                string read = "Select * from Organization";
                SqlCommand cmd = new SqlCommand(read, con);
                SqlDataReader myRead = cmd.ExecuteReader();

                while (myRead.Read())
                {

                    ddlOrganization.Items.Add(new ListItem(myRead["OrgName"].ToString(), myRead["OrgID"].ToString()));
                }
                ddlOrganization.DataBind();

            }
        }


        //if (!IsPostBack)
        //{
            
        //    try
        //    {

        //        //ddlOrganization.DataSource = insert.ExecuteReader();
        //        //ddlOrganization.DataTextField = "OrgName";
        //        //ddlOrganization.DataValueField = "OrgID";
        //        ddlOrganization.DataBind();
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}




    }
    protected void ddlOrganization_SelectedIndexChanged1(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;


        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);

        //call read array
        SqlConnection con = new SqlConnection(cs);

        insert.CommandText = "select OrgID, OrgName, City, County, LastUpdated, LastUpdatedBy from Organization where" +
                          " OrgID = @OrgID";

        insert.Parameters.AddWithValue("@OrgID", ddlOrganization.SelectedItem.Value);

        try
        {
            con.Open();
            SqlDataReader sdr = insert.ExecuteReader();
            while (sdr.Read())
            {
                txtOrgName.Text = sdr[1].ToString();
                txtCity.Text = sdr[2].ToString();
                txtCounty.Text = sdr[3].ToString();
                lblLastUpdated.Text = "Last Updated: " + sdr["LastUpdated"].ToString();
                lblLastUpdatedBy.Text = "Last Updated By: " + sdr["LastUpdatedBy"].ToString();
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand update = new System.Data.SqlClient.SqlCommand();
        update.Connection = sc;
        SqlConnection con = new SqlConnection(cs);

        update.CommandText = "update organization set orgName = @orgName, city = @city, county = @county, lastUpdated = @lastUpdated, lastUpdatedBy = @lastUpdatedBy where orgID = @orgID";
        update.Parameters.AddWithValue("@orgName", txtOrgName.Text);
        update.Parameters.AddWithValue("@city", txtCity.Text);
        update.Parameters.AddWithValue("@county", txtCounty.Text);
        update.Parameters.AddWithValue("@orgID", ddlOrganization.SelectedItem.Value);
        update.Parameters.AddWithValue("@lastUpdated", DateTime.Today);
        update.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers");
        update.ExecuteNonQuery();

        lblLastUpdated.Text = "Last Updated: " + DateTime.Today;
        lblLastUpdatedBy.Text = "Last Updated By: " + "WildTek Developers";

        //string read = "Select * from Organization";
        //SqlCommand cmd = new SqlCommand(read, sc);
        //SqlDataReader myRead = cmd.ExecuteReader();

        //while (myRead.Read())
        //{

        //    ddlOrganization.Items.Add(new ListItem(myRead["OrgName"].ToString(), myRead["OrgID"].ToString()));
        //}
        //ddlOrganization.DataBind();
    }
}