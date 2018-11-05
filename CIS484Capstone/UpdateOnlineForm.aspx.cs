using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class UpdateOnlineForm : System.Web.UI.Page
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

        //txtEducators.Text = "";
        //txtTempGrade.Text = "";
        //txtTempBird.Text = "";
        //txtTempMammals.Text = "";
        //txtTempReptiles.Text = "";
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);
        if (!IsPostBack)
        {


            //call read array
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {

                string read = "Select * from OnlineProgram";
                string onlineProgramRead = "Select * from OnlineProgramType";
                string educatorsRead = "Select * from Educators";

                SqlCommand cmd1 = new SqlCommand(onlineProgramRead, con);
                SqlCommand cmd2 = new SqlCommand(educatorsRead, con);
                SqlCommand cmd = new SqlCommand(read, con);
                SqlDataReader myRead = cmd.ExecuteReader();
                SqlDataReader myRead1 = cmd1.ExecuteReader();
                SqlDataReader myRead2 = cmd2.ExecuteReader();

                while (myRead.Read())
                {

                    ddlOnlineProgramID.Items.Add(new ListItem(myRead["OnlineProgramID"].ToString(), myRead["OnlineProgramID"].ToString()));
                }

                while (myRead1.Read())
                {
                    ddlProgramType.Items.Add(new ListItem(myRead1["OnlineProgramTypeName"].ToString(), myRead1["OnlineProgramTypeID"].ToString()));
                }

                while (myRead2.Read())
                {
                    ddlTeacher.Items.Add(new ListItem(myRead2["EducatorFirstName"].ToString(), myRead2["EducatorID"].ToString()));
                }
                ddlOnlineProgramID.DataBind();

                if (AddGrade.Items.Count < 2)
                {

                    string gradeRead = "Select * from Grade";
                    SqlCommand cmd3 = new SqlCommand(gradeRead, con);
                    SqlDataReader myRead3 = cmd3.ExecuteReader();

                    while (myRead3.Read())
                    {

                        AddGrade.Items.Add(new ListItem(myRead3["GradeLevel"].ToString(), myRead3["GradeID"].ToString()));
                    }

                }


            }

            if (drpEducators.Items.Count < 2)
            {

                string educatorRead = "Select * from Educators order by EducatorFirstName";
                SqlCommand cmd4 = new SqlCommand(educatorRead, con);
                SqlDataReader myRead4 = cmd4.ExecuteReader();

                while (myRead4.Read())
                {

                    drpEducators.Items.Add(new ListItem(myRead4["EducatorFirstName"].ToString() + " " + myRead4["EducatorLastName"].ToString(), myRead4["EducatorID"].ToString()));
                }


            }

            if (ddlBirds.Items.Count < 2)
            {

                string birdRead = "Select * from Animal where AnimalType = 'Bird' order by AnimalName";
                SqlCommand cmd5 = new SqlCommand(birdRead, con);
                SqlDataReader myRead5 = cmd5.ExecuteReader();

                while (myRead5.Read())
                {

                    ddlBirds.Items.Add(new ListItem(myRead5["AnimalName"].ToString(), myRead5["AnimalID"].ToString()));
                }


            }

            if (ddlReptiles.Items.Count < 2)
            {

                string reptileRead = "Select * from Animal where AnimalType = 'Reptile' order by AnimalName";
                SqlCommand cmd6 = new SqlCommand(reptileRead, con);
                SqlDataReader myRead6 = cmd6.ExecuteReader();

                while (myRead6.Read())
                {

                    ddlReptiles.Items.Add(new ListItem(myRead6["AnimalName"].ToString(), myRead6["AnimalID"].ToString()));
                }


            }

            if (lstMammals.Items.Count < 2)
            {

                string mammalRead = "Select * from Animal where AnimalType = 'Mammal' order by AnimalName";
                SqlCommand cmd7 = new SqlCommand(mammalRead, con);
                SqlDataReader myRead7 = cmd7.ExecuteReader();

                while (myRead7.Read())
                {

                    lstMammals.Items.Add(new ListItem(myRead7["AnimalName"].ToString(), myRead7["AnimalID"].ToString()));
                }


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
        System.Data.SqlClient.SqlCommand pullGradeID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand updateGrade = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullEducatorID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand updateEducator = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand deleteEducator = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand deleteGrade = new System.Data.SqlClient.SqlCommand();

        System.Data.SqlClient.SqlCommand pullAnimalID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand updateOnlineAnimal = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand deleteOnlineAnimal = new System.Data.SqlClient.SqlCommand();




        update.Connection = sc;
        pullGradeID.Connection = sc;
        updateGrade.Connection = sc;
        pullEducatorID.Connection = sc;
        updateEducator.Connection = sc;
        deleteEducator.Connection = sc;
        deleteGrade.Connection = sc;
        pullAnimalID.Connection = sc;
        updateOnlineAnimal.Connection = sc;
        deleteOnlineAnimal.Connection = sc;

        deleteEducator.Parameters.Clear();
        deleteGrade.Parameters.Clear();
        deleteOnlineAnimal.Parameters.Clear();

        SqlConnection con = new SqlConnection(cs);
        DateTime programDate = Convert.ToDateTime(txtProgramDate.Text);
        String month = programDate.ToString("MMMM");
        update.CommandText = "update onlineProgram set programDate = @programDate, month = @month, onlineProgramTypeID = @onlineTypeID, numberOfKids = @numOfKids, numberOfPeople = @numOfAdults, " +
            "city = @city, state= @state, country = @country, teacherName = @teacherName, contactEmail = @contactEmail, extraComments= @comments where onlineProgramID = @onlineProgramID";
        update.Parameters.AddWithValue("onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);
        update.Parameters.AddWithValue("@programDate", txtProgramDate.Text);
        update.Parameters.AddWithValue("@month", month);
        update.Parameters.AddWithValue("@onlineTypeID", ddlOnlineProgramID.SelectedItem.Value);
        update.Parameters.AddWithValue("@numOfKids", txtNumOfKids.Text);
        update.Parameters.AddWithValue("@numofAdults", txtNumOfAdults.Text);
        update.Parameters.AddWithValue("@city", txtCity.Text);
        update.Parameters.AddWithValue("@state", txtState.Text);
        update.Parameters.AddWithValue("@country", txtCountry.Text);
        update.Parameters.AddWithValue("@teacherName", ddlTeacher.SelectedItem.Text);
        update.Parameters.AddWithValue("@contactEmail", txtEmail.Text);
        update.Parameters.AddWithValue("@comments", txtComments.Text);
        update.Parameters.AddWithValue("@lastUpdated", DateTime.Today);
        update.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers");
        update.ExecuteNonQuery();

        lblLastUpdated.Text = "Last Updated: " + DateTime.Today;
        lblLastUpdatedBy.Text = "Last Updated By: " + "WildTek Developers";

        // Delete Educators from associated table
        deleteEducator.CommandText = "Delete from OnlineEducators where OnlineProgramID = @onlineProgramID";
        deleteEducator.Parameters.AddWithValue("@onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);
        deleteEducator.ExecuteNonQuery();

        // Delete grades from associated table
        deleteGrade.CommandText = "Delete from OnlineProgramGrades where OnlineProgramID = @onlineProgramID";
        deleteGrade.Parameters.AddWithValue("@onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);
        deleteGrade.ExecuteNonQuery();

        // Delete animals from associated tables
        deleteOnlineAnimal.CommandText = "Delete from OnlineAnimal where OnlineProgramID = @onlineProgramID";
        deleteOnlineAnimal.Parameters.AddWithValue("@onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);
        deleteOnlineAnimal.ExecuteNonQuery();

        // Add updated educators to associated table
        foreach (ListItem li in drpEducators.Items)
        {

            if (li.Selected == true)
            {
                pullEducatorID.Parameters.Clear();
                updateEducator.Parameters.Clear();


                //// Pulls Educator Name based on the selected educator
                //// MAY NEED TO CHANGE IF WE COMPOSITE EDUCATORS
                pullEducatorID.CommandText = "SELECT EducatorID From Educators WHERE EducatorFirstName = @EducatorFN";
                pullEducatorID.Parameters.AddWithValue("@EducatorFN", li.Text);
                int tempEducatorID = (int)pullEducatorID.ExecuteScalar();

                //// Inserts programID and EducatorID into Assocaited table ProgramEducators
                updateEducator.CommandText = "Insert into OnlineEducators (OnlineProgramID, EducatorID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @educatorID, @lastUpdated, @lastUpdatedBy)";
                updateEducator.Parameters.AddWithValue("@onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);
                updateEducator.Parameters.AddWithValue("@educatorID", tempEducatorID);
                updateEducator.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateEducator.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateEducator.ExecuteNonQuery();
            }
            else
            {
                continue;
            }
        }

        foreach (ListItem li in AddGrade.Items)
        {
            if (li.Selected == true)
            {
                pullGradeID.Parameters.Clear();
                updateGrade.Parameters.Clear();
                pullGradeID.CommandText = "SELECT GradeID From Grade WHERE GradeLevel = @GradeLevel";
                pullGradeID.Parameters.AddWithValue("@GradeLevel", li.Text);
                int tempGradeID = (int)pullGradeID.ExecuteScalar();

                //// Insert ProgramID and GradeID into Assocaited table ProgrameID
                updateGrade.CommandText = "Insert into OnlineProgramGrades (OnlineProgramID, GradeID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @gradeID, @lastUpdated, @lastUpdatedBy)";
                updateGrade.Parameters.AddWithValue("@onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);
                updateGrade.Parameters.AddWithValue("@gradeID", tempGradeID);
                updateGrade.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateGrade.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateGrade.ExecuteNonQuery();
            }
            else
            {
                continue;
            }
        }


        //Pull animalID
        //Insert into onlineAnimal table (selected birds)
        foreach (ListItem li in ddlBirds.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                updateOnlineAnimal.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                updateOnlineAnimal.CommandText = "Insert into OnlineAnimal (OnlineProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @animalID, @lastUpdated, @lastUpdatedBy)";
                updateOnlineAnimal.Parameters.AddWithValue("@onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);
                updateOnlineAnimal.Parameters.AddWithValue("@animalID", tempAnimalID);
                updateOnlineAnimal.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateOnlineAnimal.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateOnlineAnimal.ExecuteNonQuery();
            }
            else
            {
                continue;
            }

        }

        //Pull animalID
        //Insert into onlineAnimal table (selected mammals)
        foreach (ListItem li in lstMammals.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                updateOnlineAnimal.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                updateOnlineAnimal.CommandText = "Insert into OnlineAnimal (OnlineProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @animalID, @lastUpdated, @lastUpdatedBy)";
                updateOnlineAnimal.Parameters.AddWithValue("@onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);
                updateOnlineAnimal.Parameters.AddWithValue("@animalID", tempAnimalID);
                updateOnlineAnimal.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateOnlineAnimal.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateOnlineAnimal.ExecuteNonQuery();
            }
            else
            {
                continue;
            }

        }

        //Pull animalID
        //Insert into onlineAnimal table (selected reptiles)
        foreach (ListItem li in ddlReptiles.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                updateOnlineAnimal.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                updateOnlineAnimal.CommandText = "Insert into OnlineAnimal (OnlineProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @animalID, @lastUpdated, @lastUpdatedBy)";
                updateOnlineAnimal.Parameters.AddWithValue("@onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);
                updateOnlineAnimal.Parameters.AddWithValue("@animalID", tempAnimalID);
                updateOnlineAnimal.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateOnlineAnimal.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateOnlineAnimal.ExecuteNonQuery();
            }
            else
            {
                continue;
            }

        }







        ddlOnlineProgramID.Items.Clear();
        //call read array
        con.Open();
        if (con.State == System.Data.ConnectionState.Open)
        {

            string read = "Select * from OnlineProgram";
            SqlCommand cmd = new SqlCommand(read, con);
            SqlDataReader myRead = cmd.ExecuteReader();

            while (myRead.Read())
            {

                ddlOnlineProgramID.Items.Add(new ListItem(myRead["OnlineProgramID"].ToString(), myRead["OnlineProgramID"].ToString()));
            }
            // ddlAnimal.DataBind();

        }
    }

    protected void ddlOnlineProgramID_SelectedIndexChanged1(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand onlineProgramType = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullEducators = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullGrades = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullBird = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullReptile = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullMammal = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        onlineProgramType.Connection = sc;
        pullEducators.Connection = sc;
        pullGrades.Connection = sc;
        pullBird.Connection = sc;
        pullReptile.Connection = sc;
        pullMammal.Connection = sc;

        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);

        //call read array
        SqlConnection con = new SqlConnection(cs);

        insert.Parameters.Clear();
        onlineProgramType.Parameters.Clear();
        pullBird.Parameters.Clear();
        pullEducators.Parameters.Clear();
        pullGrades.Parameters.Clear();
        pullMammal.Parameters.Clear();
        pullReptile.Parameters.Clear();


        insert.CommandText = "select OnlineProgramID, ProgramDate, Month, OnlineProgramTypeID, NumberOfKids, NumberOfPeople, City, State, Country, TeacherName, ContactEmail, ExtraComments, LastUpdated, LastUpdatedBy from OnlineProgram where OnlineProgramID = @OnlineProgramID";
        insert.Parameters.AddWithValue("@OnlineProgramID", ddlOnlineProgramID.SelectedItem.Value);

        onlineProgramType.CommandText = "Select OnlineProgramType.OnlineProgramTypeName from OnlineProgramType inner join OnlineProgram on OnlineProgramType.OnlineProgramTypeID = OnlineProgram.OnlineProgramTypeID where OnlineProgram.OnlineProgramID = @programID";
        onlineProgramType.Parameters.AddWithValue("@programID", ddlOnlineProgramID.SelectedItem.Value);


        //pullEducators.CommandText = "Select Educators.EducatorFirstName from Educators inner join OnlineEducators on Educators.EducatorID = OnlineEducators.EducatorID where OnlineProgramID = @onlineProgramID";


        pullEducators.CommandText = "Select OnlineEducators.EducatorID, Educators.EducatorFirstName + ' ' + Educators.EducatorLastName as EducatorsName from OnlineEducators inner join Educators on Educators.EducatorID = OnlineEducators.EducatorID where OnlineProgramID = @onlineProgramID";
        pullEducators.Parameters.AddWithValue("@onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);

        pullGrades.CommandText = "Select Grade.GradeLevel from Grade inner join OnlineProgramGrades on Grade.GradeID = OnlineProgramGrades.GradeID where OnlineProgramID = @onlineProgramID";
        pullGrades.Parameters.AddWithValue("@onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);

        pullBird.CommandText = "Select Animal.AnimalName from Animal inner join OnlineAnimal on Animal.AnimalID = OnlineAnimal.AnimalID where Animal.AnimalType = 'bird' and OnlineProgramID = @onlineProgramID";
        pullBird.Parameters.AddWithValue("@onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);

        pullReptile.CommandText = "Select Animal.AnimalName from Animal inner join OnlineAnimal on Animal.AnimalID = OnlineAnimal.AnimalID where Animal.AnimalType = 'reptile' and OnlineProgramID = @onlineProgramID";
        pullReptile.Parameters.AddWithValue("@onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);

        pullMammal.CommandText = "Select Animal.AnimalName from Animal inner join OnlineAnimal on Animal.AnimalID = OnlineAnimal.AnimalID where Animal.AnimalType = 'mammal' and OnlineProgramID = @onlineProgramID";
        pullMammal.Parameters.AddWithValue("@onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);

        try
        {
            con.Open();
            SqlDataReader sdr = insert.ExecuteReader();
            SqlDataReader sdr1 = onlineProgramType.ExecuteReader();
            SqlDataReader sdr2 = pullEducators.ExecuteReader();
            SqlDataReader sdr3 = pullGrades.ExecuteReader();
            SqlDataReader sdr4 = pullBird.ExecuteReader();
            SqlDataReader sdr5 = pullReptile.ExecuteReader();
            SqlDataReader sdr6 = pullMammal.ExecuteReader();
            while (sdr.Read())
            {

                txtProgramDate.Text = sdr[1].ToString();
                txtNumOfKids.Text = sdr[4].ToString();
                txtNumOfAdults.Text = sdr[5].ToString();
                txtCity.Text = sdr[6].ToString();
                txtState.Text = sdr[7].ToString();
                txtCountry.Text = sdr[8].ToString();
                ddlTeacher.SelectedItem.Text = sdr[9].ToString();
                txtEmail.Text = sdr[10].ToString();
                txtComments.Text = sdr[11].ToString();


                lblLastUpdated.Text = "Last Updated: " + sdr[12].ToString();
                lblLastUpdatedBy.Text = "Last Updated By: " + sdr[13].ToString();
            }


            while (sdr1.Read())
            {
                ddlProgramType.SelectedItem.Text = sdr1[0].ToString();
            }

            while (sdr2.Read())
            {
                drpEducators.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < drpEducators.Items.Count; i++)
                {
                    string p = drpEducators.Items[i].ToString();
                    string educators = sdr2.GetString(1);
                    if (p == sdr2.GetString(1))
                    {
                        drpEducators.Items[i].Selected = true;

                    }
                }
                //int id = Convert.ToInt32(sdr2[0].ToString());
                //drpEducators.SelectedIndex = id;


                //txtEducators.Text += sdr2.GetString(1) + " ";

                //int count = sdr2.GetInt32(0);
                //for (int i =0; i<count;i++)
                //{
                //    drpEducators.SelectedIndex = i;
                //}
            }
            while (sdr3.Read())
            {
                AddGrade.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < AddGrade.Items.Count; i++)
                {
                    string p = AddGrade.Items[i].ToString();
                    string grades = sdr3.GetString(0);
                    if (p == sdr3.GetString(0))
                    {
                        AddGrade.Items[i].Selected = true;

                    }
                }
                //txtTempGrade.Text += sdr3.GetString(0) + " ";
            }

            while (sdr4.Read())
            {
                ddlBirds.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < ddlBirds.Items.Count; i++)
                {
                    string p = ddlBirds.Items[i].ToString();
                    string birds = sdr4.GetString(0);
                    if (p == sdr4.GetString(0))
                    {
                        ddlBirds.Items[i].Selected = true;

                    }

                }
                //txtTempBird.Text += sdr4.GetString(0) + " ";
            }

            while (sdr5.Read())
            {
                ddlReptiles.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < ddlReptiles.Items.Count; i++)
                {
                    string p = ddlReptiles.Items[i].ToString();
                    string reptiles = sdr5.GetString(0);
                    if (p == sdr5.GetString(0))
                    {
                        ddlReptiles.Items[i].Selected = true;

                    }

                }
                //txtTempReptiles.Text += sdr5.GetString(0) + " ";
            }

            while (sdr6.Read())
            {
                lstMammals.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < lstMammals.Items.Count; i++)
                {
                    string p = lstMammals.Items[i].ToString();
                    string mammals = sdr6.GetString(0);
                    if (p == sdr6.GetString(0))
                    {
                        lstMammals.Items[i].Selected = true;

                    }

                }
                //txtTempMammals.Text += sdr6.GetString(0) + " ";
            }

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }


    protected void Delete_Click(object sender, EventArgs e)
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
        delete1.CommandText = "Delete from OnlineEducators where OnlineProgramID = @onlineProgramID";
        delete1.Parameters.AddWithValue("@onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);

        delete2.CommandText = "Delete from OnlineAnimal where OnlineProgramID = @onlineProgramID";
        delete2.Parameters.AddWithValue("@onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);

        delete3.CommandText = "Delete from OnlineProgramGrades where OnlineProgramID = @onlineProgramID";
        delete3.Parameters.AddWithValue("@onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);

        delete4.CommandText = "Delete from OnlineProgram where OnlineProgramID = @onlineProgramID";
        delete4.Parameters.AddWithValue("@onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);


        delete1.ExecuteNonQuery();
        delete2.ExecuteNonQuery();
        delete3.ExecuteNonQuery();
        delete4.ExecuteNonQuery();

        ddlOnlineProgramID.Items.Clear();
        //call read array
        con.Open();
        if (con.State == System.Data.ConnectionState.Open)
        {

            string read = "Select * from OnlineProgram";
            SqlCommand cmd = new SqlCommand(read, con);
            SqlDataReader myRead = cmd.ExecuteReader();

            while (myRead.Read())
            {

                ddlOnlineProgramID.Items.Add(new ListItem(myRead["OnlineProgramID"].ToString(), myRead["OnlineProgramID"].ToString()));
            }


        }
    }
}