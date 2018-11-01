using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class UpdateProgramForm : System.Web.UI.Page
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

                string read = "Select * from Program";
                SqlCommand cmd = new SqlCommand(read, con);
                SqlDataReader myRead = cmd.ExecuteReader();

                while (myRead.Read())
                {

                    ddlProgramID.Items.Add(new ListItem(myRead["ProgramID"].ToString(),myRead["ProgramID"].ToString()));
                }
                ddlProgramID.DataBind();

            }
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

    }

    protected void ddlProgramID_SelectedIndexChanged1(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand programType = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand organization = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        programType.Connection = sc;
        organization.Connection = sc;



        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);

        //call read array
        SqlConnection con = new SqlConnection(cs);

        insert.CommandText = "select ProgramID, ProgramTypeID, OrgID, Status, ProgramAddress, CityCounty, State, OnOff, NumberOfChildren, NumberOfAdults, PaymentNeeded, ProgramDate, ProgramTime, EventMonth, ExtraComments, LastUpdated, LastUpdatedBy from Program where" +
                          " ProgramID = @ProgramID";
        insert.Parameters.AddWithValue("@ProgramID", ddlProgramID.SelectedItem.Value);

        programType.CommandText = "Select ProgramType.ProgramName from ProgramType inner join Program on ProgramType.ProgramTypeID = Program.ProgramTypeID where Program.ProgramID = @programID";
        programType.Parameters.AddWithValue("@programID", ddlProgramID.SelectedItem.Value);

        organization.CommandText = "Select Organization.OrgName from Organization inner join Program on Organization.OrgID = Program.OrgID where Program.ProgramID = @programID";
        organization.Parameters.AddWithValue("@programID", ddlProgramID.SelectedItem.Value);






        try
        {
            con.Open();
            SqlDataReader sdr = insert.ExecuteReader();
            SqlDataReader sdr1 = programType.ExecuteReader();
            SqlDataReader sdr2 = organization.ExecuteReader();

            while (sdr.Read())
            {
                //txtProgramType.Text = sdr[1].ToString();
                //txtOrganization.Text = sdr[2].ToString();
                txtStatus.Text = sdr[3].ToString();
                txtAddress.Text = sdr[4].ToString();
                txtCity.Text = sdr[5].ToString();
                txtCounty.Text = sdr[5].ToString();
                txtState.Text = sdr[6].ToString();
                if (sdr[7].ToString() == "1")
                {
                    rboOnOff.SelectedIndex = 0;
                }
                else 
                {
                    rboOnOff.SelectedIndex = 1;
                }
                //rboOnOff.SelectedItem.Value = sdr[7].ToString();
                txtNumOfChildren.Text = sdr[8].ToString();
                txtNumOfAdults.Text = sdr[9].ToString();
                if (sdr[10].ToString() == "1")
                {
                    rboPayment.SelectedIndex = 0;
                }
                else
                {
                    rboPayment.SelectedIndex = 1;
                }
                //rboPayment.SelectedItem.Value = sdr[10].ToString();
                txtProgramDate.Text = sdr[11].ToString();
                txtProgramTime.Text = sdr[12].ToString();
                txtMonth.Text = sdr[13].ToString();
                txtComments.Text = sdr[14].ToString();
                lblLastUpdated.Text = sdr[15].ToString();
                lblLastUpdatedBy.Text = sdr[16].ToString();
            }


            while (sdr1.Read())
            {
                txtProgramType.Text = sdr1[0].ToString();
            }


            while (sdr2.Read())
            {
                txtOrganization.Text = sdr2[0].ToString();
            }

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}