using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Educators : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#EditAnimalModal').modal('show');});</script>", false);

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();


        if (!IsPostBack)
        {

            //call read array
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string read = "Select * from Educators";
                SqlCommand cmd = new SqlCommand(read, con);
        
                SqlDataReader myRead = cmd.ExecuteReader();

                while (myRead.Read())
                {
                    ddlEducatorName.Items.Add(new ListItem(myRead["EducatorFirstName"].ToString(), myRead["EducatorID"].ToString()));
                }

                con.Close();
                sc.Close();
            }
            GridView1.DataBind();
            GridView2.DataBind();
            GridView3.DataBind();
        }

    }
    protected void btnAddEducator_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";

        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();


        sc.Open();
        insert.Connection = sc;

        String firstName = txtEducatorFirstName.Text;
        String lastName = txtEducatorLastName.Text;

        DateTime lastUpdated = DateTime.Today;
        String lastUpdatedBy = "WildTek";




        insert.CommandText = "insert into Educators (educatorFirstName, educatorLastName, lastUpdated, lastUpdatedBy, status) values (@firstName, @lastName, @lastUpdated, @lastUpdatedBy, @status)";
        insert.Parameters.AddWithValue("@firstName", firstName);
        insert.Parameters.AddWithValue("@lastName", lastName);
        insert.Parameters.AddWithValue("@lastUpdated", lastUpdated);
        insert.Parameters.AddWithValue("@lastUpdatedBy", lastUpdatedBy);
        insert.Parameters.AddWithValue("@status", "Active");
        insert.ExecuteNonQuery();

        //lblLastUpdated.Text = "Last Updated: " + lastUpdated;
        //lblLastUpdatedBy.Text = "Last Updated By: " + lastUpdatedBy;

        txtEducatorFirstName.Text = "";
        txtEducatorLastName.Text = "";
        //txtEducatorEmail.Text = "";
        //txtEducatorPhone.Text = "";

        ddlEducatorName.Items.Clear();
        string read1 = "Select * from Educators";
        SqlCommand cmd1 = new SqlCommand(read1, sc);
        SqlDataReader myRead1 = cmd1.ExecuteReader();

        ddlEducatorName.Items.Add(new ListItem("--Select Educator--", "0"));
        while (myRead1.Read())
        {
            ddlEducatorName.Items.Add(new ListItem(myRead1["EducatorFirstName"].ToString(), myRead1["EducatorID"].ToString()));
        }
        sc.Close();
        GridView1.DataBind();
        GridView2.DataBind();
        GridView3.DataBind();
    }

    protected void btnUpdateEducator_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand update = new System.Data.SqlClient.SqlCommand();
        update.Connection = sc;
        SqlConnection con = new SqlConnection(cs);

        update.CommandText = "update Educators set educatorFirstName = @firstName, educatorLastName = @lastName, lastUpdated = @lastUpdated, lastUpdatedBy = @lastUpdatedBy, status = @status where educatorID = @educatorID";
        update.Parameters.AddWithValue("@firstName", txtEducatorFirst.Text);
        update.Parameters.AddWithValue("@lastName", txtEducatorLast.Text);
        update.Parameters.AddWithValue("@educatorID", ddlEducatorName.SelectedItem.Value);
        update.Parameters.AddWithValue("@lastUpdated", DateTime.Today);
        update.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers");
        update.Parameters.AddWithValue("@status", ddlEducatorStatus.SelectedItem.Value);
        update.ExecuteNonQuery();

        lblLastUpdated.Text = "Last Updated: " + HttpUtility.HtmlEncode(DateTime.Today);
        lblLastUpdatedBy.Text = "Last Updated By: " + "WildTek Developers";




        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        SqlConnection con2 = new SqlConnection(cs);

        ddlEducatorName.Items.Clear();
        //call read array
        con.Open();
        if (con.State == System.Data.ConnectionState.Open)
        {

            string read = "Select * from Educators";
            SqlCommand cmd = new SqlCommand(read, con);
            SqlDataReader myRead = cmd.ExecuteReader();

            while (myRead.Read())
            {
                ddlEducatorName.Items.Add(new ListItem(myRead["EducatorFirstName"].ToString() + " " + myRead["EducatorLastName"].ToString(), myRead["EducatorID"].ToString()));
            }


        }

        txtEducatorFirst.Text = "";
        txtEducatorLastName.Text = "";
        ddlEducatorStatus.SelectedIndex = 0;
        lblLastUpdated.Text = "";
        lblLastUpdatedBy.Text = "";
        string read1 = "Select * from Educators";
        SqlCommand cmd1 = new SqlCommand(read1, con);
        SqlDataReader myRead1 = cmd1.ExecuteReader();

        ddlEducatorName.Items.Clear();
        ddlEducatorName.Items.Add(new ListItem("--Select Educator--", "0"));
        while (myRead1.Read())
        {
            ddlEducatorName.Items.Add(new ListItem(myRead1["EducatorFirstName"].ToString(), myRead1["EducatorID"].ToString()));
        }

        con.Close();
        sc.Close();
        GridView1.DataBind();
        GridView2.DataBind();
        GridView3.DataBind();
    }
    protected void ddlEducator_SelectedIndexChanged1(object sender, EventArgs e)
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

        insert.CommandText = "select educatorFirstName, educatorLastName, lastUpdated, lastUpdatedBy, status from Educators where educatorID = @educatorID";

        insert.Parameters.AddWithValue("@educatorID", ddlEducatorName.SelectedItem.Value);
        ddlEducatorStatus.ClearSelection();
        try
        {
            con.Open();
            SqlDataReader sdr = insert.ExecuteReader();
            while (sdr.Read())
            {
                txtEducatorFirst.Text = HttpUtility.HtmlEncode(sdr[0].ToString());
                txtEducatorLast.Text = HttpUtility.HtmlEncode(sdr[1].ToString());
                lblLastUpdated.Text = "Last Updated: " + sdr["LastUpdated"].ToString();
                lblLastUpdatedBy.Text = "Last Updated By: " + sdr["LastUpdatedBy"].ToString();
                //ddlEducatorStatus.SelectedItem.Value = sdr[4].ToString();


                for (int i = 0; i < ddlEducatorStatus.Items.Count; i++)
                {
                    if (ddlEducatorStatus.Items[i].ToString() == sdr[4].ToString())
                    {
                        ddlEducatorStatus.Items[i].Selected = true;
                    }
                }
            }
            con.Close();
        }
        catch (Exception ex)
        {
            throw ex;
        }

        sc.Close();
    }

}