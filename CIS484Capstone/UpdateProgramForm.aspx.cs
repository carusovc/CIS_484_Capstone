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

        txtTempEducators.Text = "";
        txtTempGrades.Text = "";
        txtTempBirds.Text = "";
        txtTempMammals.Text = "";
        txtTempReptiles.Text = "";

        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);
        if (!IsPostBack)
        {


            //call read array
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {

                string read = "Select * from Program";
                string programNameRead = "Select * from ProgramType";
                string organizationRead = "Select * from Organization";

                
                SqlCommand cmd = new SqlCommand(read, con);
                SqlCommand cmd1 = new SqlCommand(programNameRead, con);
                SqlCommand cmd2 = new SqlCommand(organizationRead, con);

                SqlDataReader myRead = cmd.ExecuteReader();
                SqlDataReader myRead1 = cmd1.ExecuteReader();
                SqlDataReader myRead2 = cmd2.ExecuteReader();

                while (myRead.Read())
                {

                    ddlProgramID.Items.Add(new ListItem(myRead["ProgramID"].ToString(),myRead["ProgramID"].ToString()));
                }

                while (myRead1.Read())
                {
                    ddlProgramType.Items.Add(new ListItem(myRead1["ProgramName"].ToString(), myRead1["ProgramTypeID"].ToString()));
                }

                while (myRead2.Read())
                {
                    ddlOrganization.Items.Add(new ListItem(myRead2["OrgName"].ToString(), myRead2["OrgID"].ToString()));
                }
                ddlProgramID.DataBind();

            }
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
        DateTime programDate = Convert.ToDateTime(txtProgramDate.Text);
        String month = programDate.ToString("MMMM");
        update.CommandText = "update program set programTypeID = @programTypeID, orgID = @orgID, status = @status, programAddress = @programAddress, citycounty = @cityCounty, state = @state, onOff = @onOff, numberOfChildren = @numOfChildren," +
            "numberOfAdults = @numofAdults, paymentNeeded= @paymentNeeded, programDate = @programDate, programTime = @programTime, eventMonth = @month, extraComments = @comments, lastUpdated = @lastUpdated, lastUpdatedBy = @lastUpdatedBy where programID = @programID";
        update.Parameters.AddWithValue("@programTypeID", ddlProgramType.SelectedItem.Value);
        update.Parameters.AddWithValue("@orgID", ddlOrganization.SelectedItem.Value);
        update.Parameters.AddWithValue("@programID", ddlProgramID.SelectedItem.Value);
        update.Parameters.AddWithValue("@status", txtStatus.Text);
        update.Parameters.AddWithValue("@programAddress", txtAddress.Text);
        update.Parameters.AddWithValue("@cityCounty", txtCity.Text + ", " + txtCounty.Text);
        update.Parameters.AddWithValue("@state", txtState.Text);
        update.Parameters.AddWithValue("@onOff", rboOnOff.SelectedIndex);
        update.Parameters.AddWithValue("@numOfChildren", txtNumOfChildren.Text);
        update.Parameters.AddWithValue("@numofAdults", txtNumOfAdults.Text);
        update.Parameters.AddWithValue("@paymentNeeded", rboPayment.SelectedIndex);
        update.Parameters.AddWithValue("@programDate", txtProgramDate.Text);
        update.Parameters.AddWithValue("@programTime", txtProgramTime.Text);
        update.Parameters.AddWithValue("@month", month);
        update.Parameters.AddWithValue("@comments", txtComments.Text);


        update.Parameters.AddWithValue("@lastUpdated", DateTime.Today);
        update.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers");
        update.ExecuteNonQuery();

        lblLastUpdated.Text = "Last Updated: " + DateTime.Today;
        lblLastUpdatedBy.Text = "Last Updated By: " + "WildTek Developers";

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        SqlConnection con2 = new SqlConnection(cs);

        ddlProgramID.Items.Clear();
        //call read array
        con.Open();
        if (con.State == System.Data.ConnectionState.Open)
        {

            string read = "Select * from Program";
            SqlCommand cmd = new SqlCommand(read, con);
            SqlDataReader myRead = cmd.ExecuteReader();

            while (myRead.Read())
            {

                ddlProgramID.Items.Add(new ListItem(myRead["ProgramID"].ToString(), myRead["ProgramID"].ToString()));
            }
            // ddlAnimal.DataBind();

        }
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

        System.Data.SqlClient.SqlCommand pullEducators = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullGrades = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullBird = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullReptile = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullMammal = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        programType.Connection = sc;
        organization.Connection = sc;

        pullEducators.Connection = sc;
        pullGrades.Connection = sc;
        pullBird.Connection = sc;
        pullReptile.Connection = sc;
        pullMammal.Connection = sc;



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

        pullEducators.CommandText = "Select ProgramEducators.EducatorID, Educators.EducatorFirstName from ProgramEducators inner join Educators on Educators.EducatorID = ProgramEducators.EducatorID where ProgramID = @ProgramID";
        pullEducators.Parameters.AddWithValue("@ProgramID", ddlProgramID.SelectedItem.Value);

        pullGrades.CommandText = "Select Grade.GradeLevel from Grade inner join ProgramGrades on Grade.GradeID = ProgramGrades.GradeID where ProgramID = @ProgramID";
        pullGrades.Parameters.AddWithValue("@ProgramID", ddlProgramID.SelectedItem.Value);

        pullBird.CommandText = "Select Animal.AnimalName from Animal inner join ProgramAnimal on Animal.AnimalID = ProgramAnimal.AnimalID where Animal.AnimalType = 'bird' and ProgramID = @ProgramID";
        pullBird.Parameters.AddWithValue("@ProgramID", ddlProgramID.SelectedItem.Value);

        pullReptile.CommandText = "Select Animal.AnimalName from Animal inner join ProgramAnimal on Animal.AnimalID = ProgramAnimal.AnimalID where Animal.AnimalType = 'reptile' and ProgramID = @ProgramID";
        pullReptile.Parameters.AddWithValue("@ProgramID", ddlProgramID.SelectedItem.Value);

        pullMammal.CommandText = "Select Animal.AnimalName from Animal inner join ProgramAnimal on Animal.AnimalID = ProgramAnimal.AnimalID where Animal.AnimalType = 'mammal' and ProgramID = @ProgramID";
        pullMammal.Parameters.AddWithValue("@ProgramID", ddlProgramID.SelectedItem.Value);

        try
        {
            con.Open();
            SqlDataReader sdr = insert.ExecuteReader();
            SqlDataReader sdr1 = programType.ExecuteReader();
            SqlDataReader sdr2 = organization.ExecuteReader();
            SqlDataReader sdr3 = pullEducators.ExecuteReader();
            SqlDataReader sdr4 = pullGrades.ExecuteReader();
            SqlDataReader sdr5 = pullBird.ExecuteReader();
            SqlDataReader sdr6 = pullReptile.ExecuteReader();
            SqlDataReader sdr7 = pullMammal.ExecuteReader();

            while (sdr.Read())
            {
                String cityCounty = sdr[5].ToString();
                String[] words = cityCounty.Split(',');
                String city = words[0];
                String county = words[1];
                //txtProgramType.Text = sdr[1].ToString();
                //txtOrganization.Text = sdr[2].ToString();
                txtStatus.Text = sdr[3].ToString();
                txtAddress.Text = sdr[4].ToString();
                txtCity.Text = city;
                txtCounty.Text = county;
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
                //txtMonth.Text = sdr[13].ToString();
                txtComments.Text = sdr[14].ToString();
                lblLastUpdated.Text = "Last Updated: " + sdr[15].ToString();
                lblLastUpdatedBy.Text = "Last Updated By: " + sdr[16].ToString();
            }


            while (sdr1.Read())
            {
                ddlProgramType.SelectedItem.Text = sdr1[0].ToString();
            }


            while (sdr2.Read())
            {
                ddlOrganization.SelectedItem.Text = sdr2[0].ToString();
            }
            while (sdr3.Read())
            {
                txtTempEducators.Text += sdr3[1].ToString() + " ";
            }
            while (sdr4.Read())
            {
                txtTempGrades.Text += sdr4[0].ToString() + " ";
            }

            while (sdr5.Read())
            {
                txtTempBirds.Text += sdr5[0].ToString() + " ";
            }

            while (sdr6.Read())
            {
                txtTempReptiles.Text += sdr6[0].ToString() + " ";
            }

            while (sdr7.Read())
            {
                txtTempMammals.Text += sdr7[0].ToString()+ " ";
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand delete1 = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand delete2 = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand delete3 = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand delete4 = new System.Data.SqlClient.SqlCommand();

        delete1.Connection = sc;
        delete2.Connection = sc;
        delete3.Connection = sc;
        delete4.Connection = sc;


        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);

        //call read array
        SqlConnection con = new SqlConnection(cs);
        delete1.CommandText = "Delete from ProgramEducators where ProgramID = @ProgramID";
        delete1.Parameters.AddWithValue("@ProgramID", ddlProgramID.SelectedItem.Value);

        delete2.CommandText = "Delete from ProgramAnimal where ProgramID = @ProgramID";
        delete2.Parameters.AddWithValue("@ProgramID", ddlProgramID.SelectedItem.Value);

        delete3.CommandText = "Delete from ProgramGrades where ProgramID = @ProgramID";
        delete3.Parameters.AddWithValue("@ProgramID", ddlProgramID.SelectedItem.Value);

        delete4.CommandText = "Delete from Program where ProgramID = @ProgramID";
        delete4.Parameters.AddWithValue("@ProgramID", ddlProgramID.SelectedItem.Value);


        delete1.ExecuteNonQuery();
        delete2.ExecuteNonQuery();
        delete3.ExecuteNonQuery();
        delete4.ExecuteNonQuery();

        ddlProgramID.Items.Clear();
        //call read array
        con.Open();
        if (con.State == System.Data.ConnectionState.Open)
        {

            string read = "Select * from Program";
            SqlCommand cmd = new SqlCommand(read, con);
            SqlDataReader myRead = cmd.ExecuteReader();

            while (myRead.Read())
            {

                ddlProgramID.Items.Add(new ListItem(myRead["ProgramID"].ToString(), myRead["ProgramID"].ToString()));
            }
         

        }
    }
}