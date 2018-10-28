using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Online : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;


        if (!IsPostBack)
        {
            if (ddlAnimalType.SelectedIndex == 0)
            {

                insert.CommandText = "select * from dbo.Animal where animalType = 'bird'";


            }

            else if (ddlAnimalType.SelectedIndex == 1)
            {
                insert.CommandText = "select * from dbo.Animal where animalType = 'mammal'";

            }

            else
            {
                insert.CommandText = "select * from dbo.Animal where animalType = 'reptile'";

            }

            ddlAnimalName.DataSource = insert.ExecuteReader();
            ddlAnimalName.DataTextField = "AnimalName";
            ddlAnimalName.DataValueField = "AnimalID";
            ddlAnimalName.DataBind();
        }

        //lblWelcome.Text = "Welcome, " + Session["USER_ID"].ToString();

        //System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        //insert.Connection = sc;

        // Populate Year from 1990 through 2020
        for (int i = 2020; i >= 1990; i--)
        {
          //  ddlYear.Items.Add(new ListItem(i.ToString()));
        }


    }


        
        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

            sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";

            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            System.Data.SqlClient.SqlCommand pullOnlineProgramID = new System.Data.SqlClient.SqlCommand();
            System.Data.SqlClient.SqlCommand pullAnimalID = new System.Data.SqlClient.SqlCommand();
            System.Data.SqlClient.SqlCommand onlineAnimalInsert = new System.Data.SqlClient.SqlCommand();
            System.Data.SqlClient.SqlCommand pullEducatorID = new System.Data.SqlClient.SqlCommand();
            System.Data.SqlClient.SqlCommand onlineEducatorsInsert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullGradeID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand onlineProgramGradesInsert = new System.Data.SqlClient.SqlCommand();

            insert.Connection = sc;

            pullOnlineProgramID.Connection = sc;
            pullAnimalID.Connection = sc;
            onlineAnimalInsert.Connection = sc;

            pullEducatorID.Connection = sc;
            onlineEducatorsInsert.Connection = sc;

            pullGradeID.Connection = sc;
            onlineProgramGradesInsert.Connection = sc;
            
            //Online Program Variables
            //DateTime prgmDate = Convert.ToDateTime((ddlMonth.SelectedItem.Value) + "/" + (ddlDate.SelectedItem.Value) + "/" + (ddlYear.SelectedItem.Value));
            string month = ddlMonth.SelectedValue.ToString();
            int onlineProgramTypeID = Convert.ToInt32(ddlProgramType.SelectedItem.Value);
            String type = Convert.ToString(ddlProgramType.SelectedItem);
            int numOfKids = Int32.Parse(txtNumOfKids.Text.ToString());
            int numOfPeople = Int32.Parse(txtNumOfPeople.Text.ToString());
            string city = txtCity.Text.ToString();
            string stateTerritory = ddlState.SelectedValue.ToString();
            string country = ddlCountry.SelectedValue.ToString();
            string teacherName = txtTeacher.Text.ToString();
            string contactEmail = txtEmail.Text.ToString();
            string extraComments = txtComments.Text.ToString();

        //Temporary LastUpdated and LastUpdatedBy
        DateTime tempLastUpdated = DateTime.Today;
        String tempLastUpdatedBy = "TempWildTekDevs";

            //OnlineProgram table inserts
        //    OnlineProgram newOnlineProgram = new OnlineProgram(prgmDate, month, onlineProgramTypeID, numOfKids, numOfPeople, city, stateTerritory, country, teacherName, contactEmail, extraComments);
            
        //    insert.CommandText = "insert into dbo.OnlineProgram (programDate, month, onlineProgramTypeID, numberOfKids, numberOfPeople, city, state, country, teacherName, contactEmail, extraComments, lastUpdated, lastUpdatedBy) " +
        //        "values (@programDate, @month, @typeID, @numOfKids, @numofPeople, @city, @state, @country, @teacherName, @contactEmail, @extraComments, @lastUpdated, @lastUpdatedBy)";

        //    insert.Parameters.AddWithValue("@programDate", newOnlineProgram.getDate());
        //    insert.Parameters.AddWithValue("@month", newOnlineProgram.getMonth());
        //    insert.Parameters.AddWithValue("@typeID", newOnlineProgram.getType());
        //    insert.Parameters.AddWithValue("@numOfKids", newOnlineProgram.getKidsInClass());
        //    insert.Parameters.AddWithValue("@numOfPeople", newOnlineProgram.getNumOfPeople());
        //    insert.Parameters.AddWithValue("@city", newOnlineProgram.getCity());
        //    insert.Parameters.AddWithValue("@state", newOnlineProgram.getstateTerritory());
        //    insert.Parameters.AddWithValue("@country", newOnlineProgram.getCountry());
        //    insert.Parameters.AddWithValue("@teacherName", newOnlineProgram.getTeacher());
        //    insert.Parameters.AddWithValue("@contactEmail", newOnlineProgram.getEmail());
        //    insert.Parameters.AddWithValue("@extraComments", newOnlineProgram.getComments());
        //insert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated);
        //insert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy);

        //    insert.ExecuteNonQuery();

        //Pull onlineProgramID
        pullOnlineProgramID.CommandText = "Select MAX(onlineProgramID) from OnlineProgram";
        int tempOnlineProgramID = (int)pullOnlineProgramID.ExecuteScalar();

        //Pull animalID
        pullAnimalID.CommandText = "Select AnimalID from Animal where AnimalName = @animalName";
        pullAnimalID.Parameters.AddWithValue("@animalName", ddlAnimalName.SelectedItem.Text);
        int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

        //Insert into onlineAnimal table
        onlineAnimalInsert.CommandText = "Insert into OnlineAnimal (OnlineProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @animalID, @lastUpdated, @lastUpdatedBy)";
        onlineAnimalInsert.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
        onlineAnimalInsert.Parameters.AddWithValue("@animalID", tempAnimalID);
        onlineAnimalInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated);
        onlineAnimalInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy);

        onlineAnimalInsert.ExecuteNonQuery();

        //Pull educatorID
        pullEducatorID.CommandText = "Select EducatorID from Educators where EducatorFirstName = @EducatorFN";
        pullEducatorID.Parameters.AddWithValue("@EducatorFN", ddlEducator.SelectedItem.Text);
        int tempEducatorID = (int)pullEducatorID.ExecuteScalar();

        //Insert into onlineEducators table
        onlineEducatorsInsert.CommandText = "Insert into OnlineEducators (OnlineProgramID, EducatorID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @educatorID, @lastUpdated, @lastUpdatedBy)";
        onlineEducatorsInsert.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
        onlineEducatorsInsert.Parameters.AddWithValue("@educatorID", tempEducatorID);
        onlineEducatorsInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated);
        onlineEducatorsInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy);

        onlineEducatorsInsert.ExecuteNonQuery();

        //Pull gradeID
        pullGradeID.CommandText = "Select GradeID from Grade where GradeLevel = @gradeLevel";
        pullGradeID.Parameters.AddWithValue("@gradeLevel", ddlGrade.SelectedItem.Text);
        int tempGradeID = (int)pullGradeID.ExecuteScalar();

        //Insert into onlineProgramGrades table
        onlineProgramGradesInsert.CommandText = "Insert into OnlineProgramGrades (OnlineProgramID, GradeID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @gradeID, @lastUpdated, @lastUpdatedBy)";
        onlineProgramGradesInsert.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
        onlineProgramGradesInsert.Parameters.AddWithValue("@gradeID", tempGradeID);
        onlineProgramGradesInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated);
        onlineProgramGradesInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy);

        onlineProgramGradesInsert.ExecuteNonQuery();

    }
        
        protected void btnPopulate_Click(object sender, EventArgs e)
    {
        ddlMonth.SelectedValue = DateTime.Now.ToString("MMMM");
        selectMonthDays();
        //ddlDate.SelectedValue = DateTime.Now.Day.ToString();
        //ddlYear.SelectedValue = DateTime.Now.Year.ToString();
        txtNumOfKids.Text = "25";
        txtNumOfPeople.Text = "50";
        txtCity.Text = "Rockingham County";
        ddlState.SelectedValue = "VA";
        ddlCountry.SelectedIndex = 187;
        txtEmail.Text = "sarah@dukes.com";
        ddlGrade.SelectedIndex = 3;
        txtTeacher.Text = "Sarah";
        //txtEducator.Text = "Raina";
        txtTheme.Text = "Owl";
        //txtAnimalsUsed.Text = "Gus";
        txtComments.Text = "N/A";

    }

    // sets days in dropdown for month
    public void SetDaysInMonth(int maxDay)
    {
        for (int i = 1; i <= maxDay; i++)
        {
            //ddlDate.Items.Add(new ListItem(i.ToString()));
        }

    }

    // if statements to call SetDaysInMonth
    public void selectMonthDays()
    {

        int selectedMonth = ddlMonth.SelectedIndex;

        if (selectedMonth == 1 || selectedMonth == 3 || selectedMonth == 5 || selectedMonth == 7 || selectedMonth == 8 || selectedMonth == 10 || selectedMonth == 12)
        {
            SetDaysInMonth(31);

        }
        else if (selectedMonth == 4 || selectedMonth == 6 || selectedMonth == 9 || selectedMonth == 11)
        {
            SetDaysInMonth(30);

        }
        else if (selectedMonth == 2)
        {
            //ddlDate.Items.Clear();
            //if (Int32.Parse(ddlYear.SelectedValue) % 4 == 0)
            //{
            //    SetDaysInMonth(29);
            //}
            //else
            //{
            //    SetDaysInMonth(28);
            //}
        }
    }


    //Changes based on selected month
    protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        selectMonthDays();
    }

    // Accounts for leap years
    protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
    {
        int selectedMonth = ddlMonth.SelectedIndex;

        if (selectedMonth == 2)
        {
            //ddlDate.Items.Clear();
            //if (Int32.Parse(ddlYear.SelectedValue) % 4 == 0)
            //{
            //    SetDaysInMonth(29);
            //}
            //else
            //{
            //    SetDaysInMonth(28);
            //}
        }
    }



    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlState.SelectedIndex != 0 && ddlState.SelectedIndex != 1)
        {
            ddlCountry.SelectedIndex = 187;
        } else
        {
            ddlCountry.SelectedIndex = 0;
        }
    }

    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCountry.SelectedIndex != 187)
        {
            ddlState.SelectedIndex = 1;
        } else
        {
            ddlState.SelectedIndex = 0;
        }
    }

    protected void ddlAnimalType_SelectedIndexChanged(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

        sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";

        sc.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;

        if (ddlAnimalType.SelectedValue == "bird")
        {
            ddlAnimalName.Items.Clear();
            insert.CommandText = "select * from dbo.Animal where animalType = 'bird'";
            ddlAnimalName.DataSource = insert.ExecuteNonQuery();
            ddlAnimalName.DataTextField = "AnimalName";
            ddlAnimalName.DataValueField = "AnimalID";
            ddlAnimalName.DataBind();
        }
        else if (ddlAnimalType.SelectedValue == "mammal")
        {
            ddlAnimalName.Items.Clear();
            insert.CommandText = "select * from dbo.Animal where animalType = 'mammal'";
            ddlAnimalName.DataSource = insert.ExecuteReader();
            ddlAnimalName.DataTextField = "AnimalName";
            ddlAnimalName.DataValueField = "AnimalID";
            ddlAnimalName.DataBind();
        }

        else if (ddlAnimalType.SelectedValue == "reptile")
        {
            ddlAnimalName.Items.Clear();
            insert.CommandText = "select * from dbo.Animal where animalType = 'reptile'";
            ddlAnimalName.DataSource = insert.ExecuteReader();
            ddlAnimalName.DataTextField = "AnimalName";
            ddlAnimalName.DataValueField = "AnimalID";
            ddlAnimalName.DataBind();
        }
    }
}