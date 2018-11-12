using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
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
                string read1 = "Select * from Educators";
                SqlCommand cmd1 = new SqlCommand(read1, con);
                SqlDataReader myRead1 = cmd1.ExecuteReader();

                while (myRead1.Read())
                {

                    ddlEducatorName.Items.Add(new ListItem(myRead1["EducatorFirstName"].ToString(), myRead1["EducatorID"].ToString()));
                }

                SqlCommand cmd = new SqlCommand(read, con);
                SqlDataReader myRead = cmd.ExecuteReader();

                while (myRead.Read())
                {

                    ddlOrganization.Items.Add(new ListItem(myRead["OrgName"].ToString(), myRead["OrgID"].ToString()));
                }

                string read2 = "Select * from Animal";
                SqlCommand cmd2 = new SqlCommand(read2, con);
                SqlDataReader myRead2 = cmd2.ExecuteReader();

                while (myRead2.Read())
                {

                    ddlAnimal.Items.Add(new ListItem(myRead2["AnimalName"].ToString(), myRead2["AnimalID"].ToString()));
                }
                ddlOrganization.DataBind();
                ddlEducatorName.DataBind();
                ddlAnimal.DataBind();
                ddlOrganization.DataBind();
                


                ////call read array
                //SqlConnection conAnimal = new SqlConnection(cs);
                //conAnimal.Open();
                //if (conAnimal.State == System.Data.ConnectionState.Open)
                //{
                //    string animalRead = "Select * from Animal";
                //    SqlCommand animalcmd = new SqlCommand(animalRead, conAnimal);
                //    SqlDataReader myAnimalRead = animalcmd.ExecuteReader();

                //    while (myAnimalRead.Read())
                //    {
                //        ddlAnimal.Items.Add(new ListItem(myRead["AnimalName"].ToString(), myRead["AnimalID"].ToString()));
                //    }
                //    // ddlAnimal.DataBind();
                //}
                con.Close();
            }
            con.Close();
            //call read array
            SqlConnection conAnimal = new SqlConnection(cs);
            conAnimal.Open();
            if (conAnimal.State == System.Data.ConnectionState.Open)
            {
                string read = "Select * from Animal";
                SqlCommand cmd = new SqlCommand(read, conAnimal);
                SqlDataReader myRead = cmd.ExecuteReader();

                while (myRead.Read())
                {
                    ddlAnimal.Items.Add(new ListItem(myRead["AnimalName"].ToString(), myRead["AnimalID"].ToString()));
                }
                // ddlAnimal.DataBind();
            }



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
            con.Close();
        }

        
            
                
               
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
                //lblLastUpdated.Text = "Last Updated: " + sdr["LastUpdated"].ToString();
               // lblLastUpdatedBy.Text = "Last Updated By: " + sdr["LastUpdatedBy"].ToString();
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    protected void btnUpdateOrganization_Click(object sender, EventArgs e)
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

        // lblLastUpdated.Text = "Last Updated: " + DateTime.Today;
        // lblLastUpdatedBy.Text = "Last Updated By: " + "WildTek Developers";

        string read = "Select * from Organization";
        SqlCommand cmd = new SqlCommand(read, sc);
        SqlDataReader myRead = cmd.ExecuteReader();

        while (myRead.Read())
        {

            ddlOrganization.Items.Add(new ListItem(myRead["OrgName"].ToString(), myRead["OrgID"].ToString()));
        }
        ddlOrganization.DataBind();

        txtOrgName.Text = "";
        txtCity.Text = "";
        txtCounty.Text = "";
        ddlOrganization.SelectedIndex = 0;
    }


    protected void btnAddProgramType_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";

        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();


        sc.Open();
        insert.Connection = sc;

        String programName = txtProgramName.Text;
        DateTime lastUpdated = DateTime.Today;
        String lastUpdatedBy = "WildTek";

        ProgramType newProgram = new ProgramType(programName);
        insert.CommandText = "insert into ProgramType (programName, lastUpdated, lastUpdatedBy) values (@programName, @lastUpdated, @lastUpdatedBy)";
        insert.Parameters.AddWithValue("@programName", newProgram.getProgramName());
        insert.Parameters.AddWithValue("@lastUpdated", lastUpdated);
        insert.Parameters.AddWithValue("@lastUpdatedBy", lastUpdatedBy);

        insert.ExecuteNonQuery();

      //  lblLastUpdated.Text = "Last Updated: " + lastUpdated;
      //  lblLastUpdatedBy.Text = "Last Updated By: " + lastUpdatedBy;
    }

    protected void btnAddOrg_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";

        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();


        sc.Open();
        insert.Connection = sc;

        String orgName = textOrgName.Text;
        String city = textOrgCity.Text;
        String county = textOrgCounty.Text;
        DateTime lastUpdated = DateTime.Today;
        String lastUpdatedBy = "WildTekDevs";

        Organization newOrg = new Organization(orgName, city, county);
        insert.CommandText = "insert into Organization (orgName, city, county, lastUpdated, lastUpdatedBy) values (@orgName, @city, @county, @lastUpdated, @lastUpdatedBy)";
        insert.Parameters.AddWithValue("@orgName", newOrg.getOrgName());
        insert.Parameters.AddWithValue("@city", newOrg.getCity());
        insert.Parameters.AddWithValue("@county", newOrg.getCounty());
        insert.Parameters.AddWithValue("@lastUpdated", lastUpdated);
        insert.Parameters.AddWithValue("@lastUpdatedBy", lastUpdatedBy);
        insert.ExecuteNonQuery();

        //lblLastUpdated.Text = "Last Updated: " + lastUpdated;
        //lblLastUpdatedBy.Text = "Last Updated By: " + lastUpdatedBy;
        ddlOrganization.DataBind();
    }

    protected void btnAddAnimal_Click(object sender, EventArgs e)
    {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

            // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";

            String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
            sc.ConnectionString = cs;
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();


            sc.Open();
            insert.Connection = sc;

            String animalType = ddlAnimalType.SelectedItem.Text;
            String animalName = txtAnimalName.Text;
            DateTime lastUpdated = DateTime.Today;
            String lastUpdatedBy = "WildTek";


            Animal newAnimal = new Animal(animalType, animalName);

            insert.CommandText = "Insert into Animal (animalType, animalName, lastUpdated, lastUpdatedBy, status) values (@animalType, @animalName, @lastUpdated, @lastUpdatedBy, @status)";
            insert.Parameters.AddWithValue("@animalType", newAnimal.getAnimalType());
            insert.Parameters.AddWithValue("@animalName", newAnimal.getAnimalName());
            insert.Parameters.AddWithValue("@lastUpdated", lastUpdated);
            insert.Parameters.AddWithValue("@lastUpdatedBy", lastUpdatedBy);
            insert.Parameters.AddWithValue("@status", ddlStatus.SelectedItem.Text);

            insert.ExecuteNonQuery();
            lblLastUpdated.Text = "Last Updated: " + lastUpdated;
            lblLastUpdatedBy.Text = "Last Updated By: " + lastUpdatedBy;

            txtAnimalName.Text = "";
            //gridAnimalMammal.DataBind();
            //gridReptile.DataBind();
            //gridBird.DataBind();

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


        insert.CommandText = "insert into Educators (educatorFirstName, educatorLastName, lastUpdated, lastUpdatedBy) values (@firstName, @lastName, @lastUpdated, @lastUpdatedBy)";
        insert.Parameters.AddWithValue("@firstName", firstName);
        insert.Parameters.AddWithValue("@lastName", lastName);
        insert.Parameters.AddWithValue("@lastUpdated", lastUpdated);
        insert.Parameters.AddWithValue("@lastUpdatedBy", lastUpdatedBy);
        insert.ExecuteNonQuery();

        //lblLastUpdated.Text = "Last Updated: " + lastUpdated;
        //lblLastUpdatedBy.Text = "Last Updated By: " + lastUpdatedBy;

        txtEducatorFirstName.Text = "";
        txtEducatorLastName.Text = "";
        //txtEducatorEmail.Text = "";
        //txtEducatorPhone.Text = "";
        ddlEducatorName.DataBind();
    }


    protected void btnUpdateAnimal_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand update = new System.Data.SqlClient.SqlCommand();
        update.Connection = sc;
        SqlConnection con = new SqlConnection(cs);

        update.CommandText = "update animal set animalType = @animalType, animalName = @animalName, lastUpdated = @lastUpdated, lastUpdatedBy = @lastUpdatedBy, status = @status where animalID = @animalID";
        update.Parameters.AddWithValue("@animalType", ddlAnimalTypeEdit.SelectedItem.Text);
        update.Parameters.AddWithValue("@animalName", txtBoxAnimalName.Text);
        update.Parameters.AddWithValue("@animalID", ddlAnimal.SelectedItem.Value);
        update.Parameters.AddWithValue("@lastUpdated", DateTime.Today);
        update.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers");
        update.Parameters.AddWithValue("@status", ddlAnimalStatus.SelectedItem.Text);
        update.ExecuteNonQuery();


        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        SqlConnection con2 = new SqlConnection(cs);

        ddlAnimal.Items.Clear();
        //call read array
        con.Open();
        if (con.State == System.Data.ConnectionState.Open)
        {

            string read = "Select * from Animal";
            SqlCommand cmd = new SqlCommand(read, con);
            SqlDataReader myRead = cmd.ExecuteReader();

            while (myRead.Read())
            {

                ddlAnimal.Items.Add(new ListItem(myRead["AnimalName"].ToString(), myRead["AnimalID"].ToString()));
            }
            // ddlAnimal.DataBind();

        }
        //gridAnimalMammal.DataBind();
        //gridReptile.DataBind();
        //gridBird.DataBind();

    }

    protected void ddlAnimal_SelectedIndexChanged1(object sender, EventArgs e)
    {
        // UpdatePanel1.Update();
        AnimalEditDiv.Visible = true;
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;


        //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#EditAnimalModal').modal('show');});</script>", true);


        //call read array
        SqlConnection con = new SqlConnection(cs);

        insert.CommandText = "select AnimalID, AnimalType, AnimalName, LastUpdated, LastUpdatedBy, status from Animal where" +
                          " animalID = @animalID";

        insert.Parameters.AddWithValue("@animalID", ddlAnimal.SelectedItem.Value);

        ddlAnimalTypeEdit.ClearSelection();
        ddlAnimalStatus.ClearSelection();
        try
        {
            con.Open();
            SqlDataReader sdr = insert.ExecuteReader();
            while (sdr.Read())
            {
                for (int i = 0; i < ddlAnimalTypeEdit.Items.Count; i++)
                {
                    if (ddlAnimalTypeEdit.Items[i].ToString() == sdr[1].ToString())
                    {
                        ddlAnimalTypeEdit.Items[i].Selected = true;
                    }
                }
                //ddlAnimalTypeEdit.SelectedItem.Text = sdr[1].ToString();
                //ddlAnimalType.SelectedItem.Text = sdr[1].ToString();
                txtBoxAnimalName.Text = sdr[2].ToString();
                for (int i = 0; i < ddlAnimalStatus.Items.Count; i++)
                {
                    if (ddlAnimalStatus.Items[i].ToString() == sdr[5].ToString())
                    {
                        ddlAnimalStatus.Items[i].Selected = true;
                    }
                }
                //ddlAnimalStatus.Text = sdr[5].ToString();
                //lblLastUpdated.Text = sdr["LastUpdated"].ToString();
                //lblLastUpdatedBy.Text = sdr["LastUpdatedBy"].ToString();

            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    //protected void btnDelete_Click(object sender, EventArgs e)
    //{
    //    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
    //    // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
    //    String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
    //    sc.ConnectionString = cs;
    //    sc.Open();
    //    System.Data.SqlClient.SqlCommand delete = new System.Data.SqlClient.SqlCommand();
    //    delete.Connection = sc;
    //    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);
    //    //call read array
    //    SqlConnection con = new SqlConnection(cs);
    //    delete.CommandText = "Delete from Animal where AnimalID = @AnimalID";
    //    delete.Parameters.AddWithValue("@AnimalID", ddlAnimal.SelectedItem.Value);
    //    delete.ExecuteNonQuery();
    //    ddlAnimal.Items.Clear();
    //    //call read array
    //    con.Open();
    //    if (con.State == System.Data.ConnectionState.Open)
    //    {
    //        string read = "Select * from Animal";
    //        SqlCommand cmd = new SqlCommand(read, con);
    //        SqlDataReader myRead = cmd.ExecuteReader();
    //        while (myRead.Read())
    //        {
    //            ddlAnimal.Items.Add(new ListItem(myRead["AnimalName"].ToString(), myRead["AnimalID"].ToString()));
    //        }
    //        // ddlAnimal.DataBind();
    //    }
    //    txtAnimalName.Text = "";
    //    //gridAnimalMammal.DataBind();
    //    //gridReptile.DataBind();
    //    //gridBird.DataBind();

    //}

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

        update.CommandText = "update Educators set educatorFirstName = @firstName, educatorLastName = @lastName, lastUpdated = @lastUpdated, lastUpdatedBy = @lastUpdatedBy where educatorID = @educatorID";
        update.Parameters.AddWithValue("@firstName", txtEducatorFirst.Text);
        update.Parameters.AddWithValue("@lastName", txtEducatorLast.Text);
        update.Parameters.AddWithValue("@educatorID", ddlEducatorName.SelectedItem.Value);
        update.Parameters.AddWithValue("@lastUpdated", DateTime.Today);
        update.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers");
        update.ExecuteNonQuery();

        lblLastUpdated.Text = "Last Updated: " + DateTime.Today;
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
        ddlEducatorName.DataBind();

    }

    protected void btnDeleteEducator_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand delete = new System.Data.SqlClient.SqlCommand();

        delete.Connection = sc;


        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);

        //call read array
        SqlConnection con = new SqlConnection(cs);
        delete.CommandText = "Delete from Educators where EducatorID = @EducatorID";
        delete.Parameters.AddWithValue("@EducatorID", ddlEducatorName.SelectedItem.Value);

        delete.ExecuteNonQuery();

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

                ddlEducatorName.Items.Add(new ListItem(myRead["EducatorFirstName"].ToString(), myRead["EducatorID"].ToString()));
            }


        }
        txtEducatorFirst.Text = "";
        txtEducatorLast.Text = "";
        ddlEducatorName.DataBind();
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

        insert.CommandText = "select educatorFirstName, educatorLastName, lastUpdated, lastUpdatedBy from Educators where educatorID = @educatorID";

        insert.Parameters.AddWithValue("@educatorID", ddlEducatorName.SelectedItem.Value);

        try
        {
            con.Open();
            SqlDataReader sdr = insert.ExecuteReader();
            while (sdr.Read())
            {
                txtEducatorFirst.Text = sdr[0].ToString();
                txtEducatorLast.Text = sdr[1].ToString();
                lblLastUpdated.Text = "Last Updated: " + sdr["LastUpdated"].ToString();
                lblLastUpdatedBy.Text = "Last Updated By: " + sdr["LastUpdatedBy"].ToString();
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}


