using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Volunteers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            System.Data.SqlClient.SqlConnection sc1 = new System.Data.SqlClient.SqlConnection();
            //sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
            String cs1 = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
            sc1.ConnectionString = cs1;
            sc1.Open();
            // lblWelcome.Text = "Welcome, " + Session["USER_ID"].ToString() + "!";

            SqlConnection con = new SqlConnection(cs1);

            con.Open();

            //string str = "select * from Person where username= @username";
            System.Data.SqlClient.SqlCommand str = new System.Data.SqlClient.SqlCommand();
            str.Connection = sc1;
            str.Parameters.Clear();

            str.CommandText = "select * from Person where username= @username";
            str.Parameters.AddWithValue("@username", Session["USER_ID"]);
            str.ExecuteNonQuery();

            //SqlCommand com = new SqlCommand(str, con);

            SqlDataAdapter da = new SqlDataAdapter(str);

            DataSet ds = new DataSet();

            da.Fill(ds);

            lblWelcome.Text = "Welcome, " + ds.Tables[0].Rows[0]["Firstname"].ToString() + " ";


        }
        catch
        {
            Session.RemoveAll();
            Response.Redirect("Default.aspx", false);
        }

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;


        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {

                string read = "Select * from Volunteers";
                SqlCommand cmd = new SqlCommand(read, con);
                SqlDataReader myRead = cmd.ExecuteReader();

                while (myRead.Read())
                {
                    ddlVolunteerName.Items.Add(new ListItem(myRead["VolunteerFirstName"].ToString() + " " + myRead["VolunteerLastName"].ToString(), myRead["VolunteerID"].ToString()));
                }
            }
            con.Close();
        }

    }

    protected void btnAddVolunteer_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";

        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();


        sc.Open();
        insert.Connection = sc;

        String firstName = txtVolunteerAddFirstName.Text;
        String lastName = txtVolunteerAddLastName.Text;
        string phoneNumber = txtVolunteerAddPhoneNumber.Text;
        string email = txtVoluteerAddEmail.Text;
        string status = ddlVolunteerAddStatus.Text;

        DateTime lastUpdated = DateTime.Today;
        String lastUpdatedBy = "WildTek";


        insert.CommandText = "insert into Volunteers (VolunteerFirstName, VolunteerLastName, VolunteerPhoneNumber, VolunteerEmail, VolunteerStatus, lastUpdated, lastUpdatedBy) values (@firstName, @lastName, @phoneNumber, @email, @status, @lastUpdated, @lastUpdatedBy)";
        insert.Parameters.AddWithValue("@firstName", firstName);
        insert.Parameters.AddWithValue("@lastName", lastName);
        insert.Parameters.AddWithValue("@phoneNumber", phoneNumber);
        insert.Parameters.AddWithValue("@email", email);
        insert.Parameters.AddWithValue("@status", status);
        insert.Parameters.AddWithValue("@lastUpdated", lastUpdated);
        insert.Parameters.AddWithValue("@lastUpdatedBy", lastUpdatedBy);
        insert.ExecuteNonQuery();


        txtVolunteerAddFirstName.Text = "";
        txtVolunteerAddLastName.Text = "";
        txtVolunteerAddPhoneNumber.Text = "";
        txtVoluteerAddEmail.Text = "";
        ddlVolunteerAddStatus.SelectedIndex = 0;
        //ddlVolunteerName.DataBind();

        ddlVolunteerName.Items.Clear();
        //call read array
        if (sc.State == System.Data.ConnectionState.Open)
        {

            string read = "Select * from Volunteers";
            SqlCommand cmd = new SqlCommand(read, sc);
            SqlDataReader myRead = cmd.ExecuteReader();
            ddlVolunteerName.Items.Add(new ListItem("--Select Volunteer--", "0"));
            while (myRead.Read())
            {
                ddlVolunteerName.Items.Add(new ListItem(myRead["VolunteerFirstName"].ToString() + " " + myRead["VolunteerLastName"].ToString(), myRead["VolunteerID"].ToString()));
            }
        }

        sc.Close();
        GridView1.DataBind();
        GridView2.DataBind();
        GridView3.DataBind();
    }

    protected void ddlVolunteer_SelectedIndexChanged(object sender, EventArgs e)
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

        insert.CommandText = "select VolunteerFirstName, VolunteerLastName, VolunteerPhoneNumber, VolunteerEmail, VolunteerStatus, lastUpdated, lastUpdatedBy from Volunteers where VolunteerID = @VolunteerID";

        insert.Parameters.AddWithValue("@VolunteerID", ddlVolunteerName.SelectedItem.Value);

        ddlVolunteerStatus.ClearSelection();
        try
        {
            con.Open();
            SqlDataReader sdr = insert.ExecuteReader();
            while (sdr.Read())
            {
                txtVolunteerFirstName.Text = HttpUtility.HtmlEncode(sdr[0].ToString());
                txtVolunteerLastName.Text = HttpUtility.HtmlEncode(sdr[1].ToString());
                txtVolunteerPhoneNumber.Text = HttpUtility.HtmlEncode(sdr[2].ToString());
                txtVolunteerEmail.Text = HttpUtility.HtmlEncode(sdr[3].ToString());
                for (int i = 0; i < ddlVolunteerStatus.Items.Count; i++)
                {
                    if (ddlVolunteerStatus.Items[i].ToString() == sdr[4].ToString())
                    {
                        ddlVolunteerStatus.Items[i].Selected = true;
                    }
                }
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        con.Close();
        sc.Close();
    }
    protected void btnUpdateVolunteer_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand update = new System.Data.SqlClient.SqlCommand();
        update.Connection = sc;
        SqlConnection con = new SqlConnection(cs);

        update.CommandText = "update Volunteers set VolunteerFirstName = @VolunteerFirstName, VolunteerLastName = @VolunteerLastName, VolunteerPhoneNumber = @VolunteerPhoneNumber, VolunteerEmail = @VolunteerEmail, VolunteerStatus = @VolunteerStatus," +
            " lastUpdated = @lastUpdated, lastUpdatedBy = @lastUpdatedBy where VolunteerID = @VolunteerID";
        update.Parameters.AddWithValue("@VolunteerFirstName", txtVolunteerFirstName.Text);
        update.Parameters.AddWithValue("@VolunteerLastName", txtVolunteerLastName.Text);
        update.Parameters.AddWithValue("@VolunteerPhoneNumber", txtVolunteerPhoneNumber.Text);
        update.Parameters.AddWithValue("@VolunteerEmail", txtVolunteerEmail.Text);
        update.Parameters.AddWithValue("@VolunteerStatus", ddlVolunteerStatus.SelectedItem.Value);
        update.Parameters.AddWithValue("@VolunteerID", ddlVolunteerName.SelectedItem.Value);
        update.Parameters.AddWithValue("@lastUpdated", DateTime.Today);
        update.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers");
        update.ExecuteNonQuery();


        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        SqlConnection con2 = new SqlConnection(cs);

        ddlVolunteerName.Items.Clear();
        //call read array
        con.Open();
        if (con.State == System.Data.ConnectionState.Open)
        {

            string read = "Select * from Volunteers";
            SqlCommand cmd = new SqlCommand(read, con);
            SqlDataReader myRead = cmd.ExecuteReader();

            ddlVolunteerName.Items.Add(new ListItem("--Select Volunteer--", "0"));
            while (myRead.Read())
            {
                ddlVolunteerName.Items.Add(new ListItem(myRead["VolunteerFirstName"].ToString() + " " + myRead["VolunteerLastName"].ToString(), myRead["VolunteerID"].ToString()));
            }
        }
        con.Close();
        sc.Close();
        GridView1.DataBind();
        GridView2.DataBind();
        GridView3.DataBind();

    }

}