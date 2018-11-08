using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class Programs : System.Web.UI.Page
{

    int index;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!this.IsPostBack)
        {
            createAccordianUsingRepeaterLive();
            createAccordianUsingRepeaterOnline();
        }


        index = 1;



        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;


        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);

        //if (ddlProgramType.Items.Count < 2)
        //{
        //    //call read array
        //    SqlConnection con = new SqlConnection(cs);
        //    con.Open();
        //    if (con.State == System.Data.ConnectionState.Open)
        //    {

        //        string read = "Select * from OnlineProgramType order by OnlineProgramTypeName";
        //        SqlCommand cmd = new SqlCommand(read, con);
        //        SqlDataReader myRead = cmd.ExecuteReader();

        //        while (myRead.Read())
        //        {

        //            ddlProgramType.Items.Add(new ListItem(myRead["OnlineProgramTypeName"].ToString(), myRead["OnlineProgramTypeID"].ToString()));
        //        }

        //    }


        //}

        //if (AddGrade.Items.Count < 2)
        //{
        //    //call read array
        //    SqlConnection con = new SqlConnection(cs);
        //    con.Open();
        //    if (con.State == System.Data.ConnectionState.Open)
        //    {

        //        string read = "Select * from Grade";
        //        SqlCommand cmd = new SqlCommand(read, con);
        //        SqlDataReader myRead = cmd.ExecuteReader();

        //        while (myRead.Read())
        //        {

        //            AddGrade.Items.Add(new ListItem(myRead["GradeLevel"].ToString(), myRead["GradeID"].ToString()));
        //        }

        //    }


        //}

    //    if (drpEducators.Items.Count < 2)
    //    {
    //        //call read array
    //        SqlConnection con = new SqlConnection(cs);
    //        con.Open();
    //        if (con.State == System.Data.ConnectionState.Open)
    //        {

    //            string read = "Select * from Educators order by EducatorFirstName";
    //            SqlCommand cmd = new SqlCommand(read, con);
    //            SqlDataReader myRead = cmd.ExecuteReader();

    //            while (myRead.Read())
    //            {

    //                drpEducators.Items.Add(new ListItem(myRead["EducatorFirstName"].ToString() + " " + myRead["EducatorLastName"].ToString(), myRead["EducatorID"].ToString()));
    //            }

    //        }
    //    }

    //    if (ddlBirds.Items.Count < 2)
    //    {
    //        //call read array
    //        SqlConnection con = new SqlConnection(cs);
    //        con.Open();
    //        if (con.State == System.Data.ConnectionState.Open)
    //        {

    //            string read = "Select * from Animal where AnimalType = 'Bird' order by AnimalName";
    //            SqlCommand cmd = new SqlCommand(read, con);
    //            SqlDataReader myRead = cmd.ExecuteReader();

    //            while (myRead.Read())
    //            {

    //                ddlBirds.Items.Add(new ListItem(myRead["AnimalName"].ToString(), myRead["AnimalID"].ToString()));
    //            }

    //        }
    //    }

    //    if (ddlReptiles.Items.Count < 2)
    //    {
    //        //call read array
    //        SqlConnection con = new SqlConnection(cs);
    //        con.Open();
    //        if (con.State == System.Data.ConnectionState.Open)
    //        {

    //            string read = "Select * from Animal where AnimalType = 'Reptile' order by AnimalName";
    //            SqlCommand cmd = new SqlCommand(read, con);
    //            SqlDataReader myRead = cmd.ExecuteReader();

    //            while (myRead.Read())
    //            {

    //                ddlReptiles.Items.Add(new ListItem(myRead["AnimalName"].ToString(), myRead["AnimalID"].ToString()));
    //            }

    //        }
    //    }

    //    if (lstMammals.Items.Count < 2)
    //    {
    //        //call read array
    //        SqlConnection con = new SqlConnection(cs);
    //        con.Open();
    //        if (con.State == System.Data.ConnectionState.Open)
    //        {

    //            string read = "Select * from Animal where AnimalType = 'Mammal' order by AnimalName";
    //            SqlCommand cmd = new SqlCommand(read, con);
    //            SqlDataReader myRead = cmd.ExecuteReader();

    //            while (myRead.Read())
    //            {

    //                lstMammals.Items.Add(new ListItem(myRead["AnimalName"].ToString(), myRead["AnimalID"].ToString()));
    //            }

    //        }
    //    }


    //    // Populate Year from 1990 through 2020
    //    for (int i = 2020; i >= 1990; i--)
    //    {
    //        // ddlYear.Items.Add(new ListItem(i.ToString()));
    //    }
    //}


    //protected void btnAdd_Click(object sender, EventArgs e)
    //{
    //    for (int i = 0; i < 5; i++)
    //    {
    //        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "document", "function()", true);

    //    }

    //}

    //protected void btnSubmit_Click1(object sender, EventArgs e)
    //{
    //    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

    //    //sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
    //    String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
    //    sc.ConnectionString = cs;

    //    sc.Open();
    //    System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
    //    System.Data.SqlClient.SqlCommand pullOnlineProgramID = new System.Data.SqlClient.SqlCommand();
    //    System.Data.SqlClient.SqlCommand pullAnimalID = new System.Data.SqlClient.SqlCommand();
    //    System.Data.SqlClient.SqlCommand onlineAnimalInsert = new System.Data.SqlClient.SqlCommand();
    //    System.Data.SqlClient.SqlCommand pullEducatorID = new System.Data.SqlClient.SqlCommand();
    //    System.Data.SqlClient.SqlCommand onlineEducatorsInsert = new System.Data.SqlClient.SqlCommand();
    //    System.Data.SqlClient.SqlCommand pullGradeID = new System.Data.SqlClient.SqlCommand();
    //    System.Data.SqlClient.SqlCommand onlineProgramGradesInsert = new System.Data.SqlClient.SqlCommand();

    //    insert.Connection = sc;

    //    pullOnlineProgramID.Connection = sc;
    //    pullAnimalID.Connection = sc;
    //    onlineAnimalInsert.Connection = sc;

    //    pullEducatorID.Connection = sc;
    //    onlineEducatorsInsert.Connection = sc;

    //    pullGradeID.Connection = sc;
    //    onlineProgramGradesInsert.Connection = sc;

    //    //Online Program ;
    //    DateTime prgmDateTime = Convert.ToDateTime(txtDate.Text);
    //    string month = prgmDateTime.ToString("MMMM");
    //    TimeSpan programTime = TimeSpan.Parse(txtTime.Text);
    //    int onlineProgramTypeID = Convert.ToInt32(ddlProgramType.SelectedItem.Value);
    //    String type = Convert.ToString(ddlProgramType.SelectedItem);
    //    int numOfKids = Int32.Parse(txtNumOfKids.Text.ToString());
    //    int numOfPeople = Int32.Parse(txtNumOfPeople.Text.ToString());
    //    string city = AddOnlineProgramcity.Text.ToString();
    //    string stateTerritory = ddlState.SelectedValue.ToString();
    //    string country = ddlCountry.SelectedValue.ToString();
    //    string teacherName = AddOnlineTeacher.Text.ToString();
    //    string contactEmail = AddOnlineEmail.Text.ToString();
    //    string extraComments = AddOnlineComment.Text.ToString();

    //    //Temporary LastUpdated and LastUpdatedBy
    //    DateTime tempLastUpdated = DateTime.Today;
    //    String tempLastUpdatedBy = "TempWildTekDevs";

    //    // OnlineProgram table inserts
    //    OnlineProgram newOnlineProgram = new OnlineProgram(prgmDateTime, month, onlineProgramTypeID, numOfKids, numOfPeople, city, stateTerritory, country, teacherName, contactEmail, extraComments);

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
    //    insert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated);
    //    insert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy);

    //    insert.ExecuteNonQuery();

    //    //Pull onlineProgramID
    //    pullOnlineProgramID.CommandText = "Select MAX(onlineProgramID) from OnlineProgram";
    //    int tempOnlineProgramID = (int)pullOnlineProgramID.ExecuteScalar();


    //    // Pulls Educator Name based on the selected educator
    //    foreach (ListItem li in drpEducators.Items)
    //    {
    //        if (li.Selected == true)
    //        {
    //            pullEducatorID.Parameters.Clear();
    //            onlineEducatorsInsert.Parameters.Clear();


    //            //// Pulls Educator Name based on the selected educator
    //            //// MAY NEED TO CHANGE IF WE COMPOSITE EDUCATORS
    //            pullEducatorID.CommandText = "SELECT EducatorID From Educators WHERE EducatorFirstName = @EducatorFN";
    //            pullEducatorID.Parameters.AddWithValue("@EducatorFN", li.Text);
    //            int tempEducatorID = (int)pullEducatorID.ExecuteScalar();

    //            //// Inserts programID and EducatorID into Assocaited table ProgramEducators
    //            onlineEducatorsInsert.CommandText = "Insert into OnlineEducators (OnlineProgramID, EducatorID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @educatorID, @lastUpdated, @lastUpdatedBy)";
    //            onlineEducatorsInsert.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
    //            onlineEducatorsInsert.Parameters.AddWithValue("@educatorID", tempEducatorID);
    //            onlineEducatorsInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
    //            onlineEducatorsInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
    //            onlineEducatorsInsert.ExecuteNonQuery();
    //        }
    //        else
    //        {
    //            continue;
    //        }
    //    }

    //    //Pull animalID
    //    //Insert into onlineAnimal table
    //    foreach (ListItem li in ddlBirds.Items)
    //    {
    //        if (li.Selected == true)
    //        {
    //            pullAnimalID.Parameters.Clear();
    //            onlineAnimalInsert.Parameters.Clear();
    //            pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
    //            pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

    //            int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

    //            // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
    //            onlineAnimalInsert.CommandText = "Insert into OnlineAnimal (OnlineProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @animalID, @lastUpdated, @lastUpdatedBy)";
    //            onlineAnimalInsert.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
    //            onlineAnimalInsert.Parameters.AddWithValue("@animalID", tempAnimalID);
    //            onlineAnimalInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
    //            onlineAnimalInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
    //            onlineAnimalInsert.ExecuteNonQuery();
    //        }
    //        else
    //        {
    //            continue;
    //        }

    //    }

    //    foreach (ListItem li in lstMammals.Items)
    //    {
    //        if (li.Selected == true)
    //        {
    //            pullAnimalID.Parameters.Clear();
    //            onlineAnimalInsert.Parameters.Clear();
    //            pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
    //            pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

    //            int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

    //            // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
    //            onlineAnimalInsert.CommandText = "Insert into OnlineAnimal (OnlineProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @animalID, @lastUpdated, @lastUpdatedBy)";
    //            onlineAnimalInsert.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
    //            onlineAnimalInsert.Parameters.AddWithValue("@animalID", tempAnimalID);
    //            onlineAnimalInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
    //            onlineAnimalInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
    //            onlineAnimalInsert.ExecuteNonQuery();
    //        }
    //        else
    //        {
    //            continue;
    //        }

    //    }

    //    foreach (ListItem li in ddlReptiles.Items)
    //    {
    //        if (li.Selected == true)
    //        {
    //            pullAnimalID.Parameters.Clear();
    //            onlineAnimalInsert.Parameters.Clear();
    //            pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
    //            pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

    //            int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

    //            // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
    //            onlineAnimalInsert.CommandText = "Insert into OnlineAnimal (OnlineProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @animalID, @lastUpdated, @lastUpdatedBy)";
    //            onlineAnimalInsert.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
    //            onlineAnimalInsert.Parameters.AddWithValue("@animalID", tempAnimalID);
    //            onlineAnimalInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
    //            onlineAnimalInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
    //            onlineAnimalInsert.ExecuteNonQuery();
    //        }
    //        else
    //        {
    //            continue;
    //        }

    //    }

    //    //Insert into onlineProgramGrades table
    //    foreach (ListItem li in AddGrade.Items)
    //    {
    //        if (li.Selected == true)
    //        {
    //            pullGradeID.Parameters.Clear();
    //            onlineProgramGradesInsert.Parameters.Clear();
    //            pullGradeID.CommandText = "SELECT GradeID From Grade WHERE GradeLevel = @GradeLevel";
    //            pullGradeID.Parameters.AddWithValue("@GradeLevel", li.Text);
    //            int tempGradeID = (int)pullGradeID.ExecuteScalar();

    //            //// Insert ProgramID and GradeID into Assocaited table ProgrameID
    //            onlineProgramGradesInsert.CommandText = "Insert into OnlineProgramGrades (OnlineProgramID, GradeID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @gradeID, @lastUpdated, @lastUpdatedBy)";
    //            onlineProgramGradesInsert.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
    //            onlineProgramGradesInsert.Parameters.AddWithValue("@gradeID", tempGradeID);
    //            onlineProgramGradesInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
    //            onlineProgramGradesInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
    //            onlineProgramGradesInsert.ExecuteNonQuery();
    //        }
    //        else
    //        {
    //            continue;
    //        }
    //    }

        //Pull animalID
        //  pullAnimalID.CommandText = "Select AnimalID from Animal where AnimalName = @animalName";
        // pullAnimalID.Parameters.AddWithValue("@animalName", ddlAnimalName.SelectedItem.Text);
        //int tempAnimalID = (int)pullAnimalID.ExecuteScalar();



        //Insert into onlineAnimal table
        //onlineAnimalInsert.CommandText = "Insert into OnlineAnimal (OnlineProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @animalID, @lastUpdated, @lastUpdatedBy)";
        //onlineAnimalInsert.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
        //onlineAnimalInsert.Parameters.AddWithValue("@animalID", tempAnimalID);
        //onlineAnimalInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated);
        //onlineAnimalInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy);

        // onlineAnimalInsert.ExecuteNonQuery();

        //Pull educatorID
        //pullEducatorID.CommandText = "Select EducatorID from Educators where EducatorFirstName = @EducatorFN";
        //pullEducatorID.Parameters.AddWithValue("@EducatorFN", ddlEducator.SelectedItem.Text);
        //int tempEducatorID = (int)pullEducatorID.ExecuteScalar();

        //Insert into onlineEducators table
        //onlineEducatorsInsert.CommandText = "Insert into OnlineEducators (OnlineProgramID, EducatorID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @educatorID, @lastUpdated, @lastUpdatedBy)";
        //onlineEducatorsInsert.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
        //onlineEducatorsInsert.Parameters.AddWithValue("@educatorID", tempEducatorID);
        //onlineEducatorsInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated);
        //onlineEducatorsInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy);

        //onlineEducatorsInsert.ExecuteNonQuery();

        //Pull gradeID
        // pullGradeID.CommandText = "Select GradeID from Grade where GradeLevel = @gradeLevel";
        //pullGradeID.Parameters.AddWithValue("@gradeLevel", ddlGrade.SelectedItem.Text);
        //int tempGradeID = (int)pullGradeID.ExecuteScalar();

        //Insert into onlineProgramGrades table
        //onlineProgramGradesInsert.CommandText = "Insert into OnlineProgramGrades (OnlineProgramID, GradeID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @gradeID, @lastUpdated, @lastUpdatedBy)";
        //onlineProgramGradesInsert.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
        //onlineProgramGradesInsert.Parameters.AddWithValue("@gradeID", tempGradeID);
        //onlineProgramGradesInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated);
        //onlineProgramGradesInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy);

        //onlineProgramGradesInsert.ExecuteNonQuery();

    }

    //protected void btnPopulate_Click(object sender, EventArgs e)
    //{
    //    //ddlMonth.SelectedValue = DateTime.Now.ToString("MMMM");
    //    //selectMonthDays();
    //    ////ddlDate.SelectedValue = DateTime.Now.Day.ToString();
    //    ////ddlYear.SelectedValue = DateTime.Now.Year.ToString();
    //    //txtNumOfKids.Text = "25";
    //    //txtNumOfPeople.Text = "50";
    //    //txtCity.Text = "Rockingham County";
    //    //ddlState.SelectedValue = "VA";
    //    //ddlCountry.SelectedIndex = 187;
    //    //txtEmail.Text = "sarah@dukes.com";
    //    //ddlGrade.SelectedIndex = 3;
    //    //txtTeacher.Text = "Sarah";
    //    ////txtEducator.Text = "Raina";
    //    //txtTheme.Text = "Owl";
    //    ////txtAnimalsUsed.Text = "Gus";
    //    //txtComments.Text = "N/A";
    //    //listAddOnlineStatus.SelectedIndex = 3;


    //}

    //protected void btnBack_Click(object sender, EventArgs e)
    //{
    //    //ddlMonth.SelectedValue = DateTime.Now.ToString("MMMM");
    //    //selectMonthDays();
    //    ////ddlDate.SelectedValue = DateTime.Now.Day.ToString();
    //    ////ddlYear.SelectedValue = DateTime.Now.Year.ToString();
    //    //txtNumOfKids.Text = "25";
    //    //txtNumOfPeople.Text = "50";
    //    //txtCity.Text = "Rockingham County";
    //    //ddlState.SelectedValue = "VA";
    //    //ddlCountry.SelectedIndex = 187;
    //    //txtEmail.Text = "sarah@dukes.com";
    //    //ddlGrade.SelectedIndex = 3;
    //    //txtTeacher.Text = "Sarah";
    //    ////txtEducator.Text = "Raina";
    //    //txtTheme.Text = "Owl";
    //    ////txtAnimalsUsed.Text = "Gus";
    //    //txtComments.Text = "N/A";
    //    //listAddOnlineStatus.SelectedIndex = 3;


    //}

    //// sets days in dropdown for month
    //public void SetDaysInMonth(int maxDay)
    //{
    //    for (int i = 1; i <= maxDay; i++)
    //    {
    //        //ddlDate.Items.Add(new ListItem(i.ToString()));
    //    }

    //}

    //// if statements to call SetDaysInMonth
    //public void selectMonthDays()
    //{

    //    // int selectedMonth = ddlMonth.SelectedIndex;

    //    //if (selectedMonth == 1 || selectedMonth == 3 || selectedMonth == 5 || selectedMonth == 7 || selectedMonth == 8 || selectedMonth == 10 || selectedMonth == 12)
    //    //{
    //    //    SetDaysInMonth(31);

    //    //}
    //    //else if (selectedMonth == 4 || selectedMonth == 6 || selectedMonth == 9 || selectedMonth == 11)
    //    //{
    //    //    SetDaysInMonth(30);

    //    //}
    //    //else if (selectedMonth == 2)
    //    //{
    //    //    //ddlDate.Items.Clear();
    //    //    //if (Int32.Parse(ddlYear.SelectedValue) % 4 == 0)
    //    //    //{
    //    //    //    SetDaysInMonth(29);
    //    //    //}
    //    //    //else
    //    //    //{
    //    //    //    SetDaysInMonth(28);
    //    //    //}
    //    //}
    //}


    ////Changes based on selected month
    //protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    selectMonthDays();
    //}

    //// Accounts for leap years
    //protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    //int selectedMonth = ddlMonth.SelectedIndex;

    //    //if (selectedMonth == 2)
    //    //{
    //    //    //ddlDate.Items.Clear();
    //    //    //if (Int32.Parse(ddlYear.SelectedValue) % 4 == 0)
    //    //    //{
    //    //    //    SetDaysInMonth(29);
    //    //    //}
    //    //    //else
    //    //    //{
    //    //    //    SetDaysInMonth(28);
    //    //    //}
    //}


    private static DataTable GetData(string query)
    {
        string constr = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = query;
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataSet ds = new DataSet())
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }
    }



    protected void OnItemDataBoundLive(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string ProgramID = (e.Item.FindControl("hfProgramIDLive") as HiddenField).Value;
            Repeater rptProgramLLLive = e.Item.FindControl("rptProgramLLLive") as Repeater;
            Repeater rptProgramLL2Live = e.Item.FindControl("rptProgramLL2Live") as Repeater;
            Repeater rptProgramLL3Live = e.Item.FindControl("rptProgramLL3Live") as Repeater;


            rptProgramLLLive.DataSource = GetData(string.Format("SELECT ProgramID, Status, NumberOfChildren, NumberOfAdults From Program WHERE ProgramID = " + ProgramID + "", ProgramID));
            rptProgramLLLive.DataBind();

            rptProgramLL2Live.DataSource = GetData(string.Format("SELECT ProgramID, ProgramAddress, CityCounty AS City, State From Program WHERE ProgramID = " + ProgramID + "", ProgramID));
            rptProgramLL2Live.DataBind();

            rptProgramLL3Live.DataSource = GetData(string.Format("SELECT OnOff, ProgramID, PaymentNeeded, ExtraComments AS Comments From Program WHERE ProgramID = " + ProgramID + "", ProgramID));
            rptProgramLL3Live.DataBind();


        }
    }

    public void createAccordianUsingRepeaterLive()
    {

        rptProgramHLLive.DataSource = GetData("SELECT ProgramID, convert(varchar, ProgramDate,101) as ProgramDate, ProgramType.ProgramName AS ProgramType, Organization.OrgName As Organization from Program z inner join ProgramType on z.ProgramTypeID = ProgramType.ProgramTypeID inner join Organization on z.OrgID = Organization.OrgID;"); //inner join Organization on z.OrgID = Organization.OrgID
        
        rptProgramHLLive.DataBind();
    }



    // GO TO ONLINE

    protected void OnItemDataBoundOnline(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string OnlineProgramID = (e.Item.FindControl("hfProgramIDOnline") as HiddenField).Value;
            Repeater rptProgramLLOnline = e.Item.FindControl("rptProgramLLOnline") as Repeater;
            Repeater rptProgramLL2Online = e.Item.FindControl("rptProgramLL2Online") as Repeater;
            Repeater rptProgramLL3Online = e.Item.FindControl("rptProgramLL3Online") as Repeater;

            //Repeater rptProgramLL2 = e.Item.FindControl("rptProgramLL2") as Repeater;

            rptProgramLLOnline.DataSource = GetData(string.Format("SELECT NumberOfKids, NumberOfPeople, TeacherName From OnlineProgram WHERE OnlineProgramID = " + OnlineProgramID + "", OnlineProgramID));
            rptProgramLLOnline.DataBind();


            rptProgramLL2Online.DataSource = GetData(string.Format("SELECT City, State, Country From OnlineProgram WHERE OnlineProgramID = " + OnlineProgramID + "", OnlineProgramID));
            rptProgramLL2Online.DataBind();

            rptProgramLL3Online.DataSource = GetData(string.Format("SELECT ContactEmail, ExtraComments AS Comments From OnlineProgram WHERE OnlineProgramID = " + OnlineProgramID + "", OnlineProgramID));
            rptProgramLL3Online.DataBind();


        }
    }

    public void createAccordianUsingRepeaterOnline()
    {
        //rptProgramHL.DataSource = GetData("SELECT OrgID, OrgName from Organization");


        rptProgramHLOnline.DataSource = GetData("SELECT OnlineProgramID, convert(varchar, ProgramDate,101) as ProgramDate, OnlineProgramType.OnlineProgramTypeName AS ProgramType from OnlineProgram z inner join OnlineProgramType on z.OnlineProgramTypeID = OnlineProgramType.OnlineProgramTypeID;"); //inner join Organization on z.OrgID = Organization.OrgID
        rptProgramHLOnline.DataBind();
    }


}