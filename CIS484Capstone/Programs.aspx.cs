using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;


public partial class Programs : System.Web.UI.Page
{

    int index = 1;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!this.IsPostBack)
        {
            createAccordianUsingRepeaterLive();
            createAccordianUsingRepeaterOnline();
            createAccordianUsingRepeaterAll();
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


            //call read array
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                //Live Program
                string read = "Select * from Program";
                string programNameRead = "Select * from ProgramType";
                string organizationRead = "Select * from Organization";


                SqlCommand cmd = new SqlCommand(read, con);
                SqlCommand cmd1 = new SqlCommand(programNameRead, con);
                SqlCommand cmd2 = new SqlCommand(organizationRead, con);

                SqlDataReader myRead = cmd.ExecuteReader();
                SqlDataReader myRead1 = cmd1.ExecuteReader();
                SqlDataReader myRead2 = cmd2.ExecuteReader();


                //Online Program
                string readOnline = "Select * from OnlineProgram";
                string onlineProgramRead = "Select * from OnlineProgramType";
                string educatorsRead = "Select * from Educators";

                SqlCommand cmdOnline = new SqlCommand(readOnline, con);
                SqlCommand cmdOnline1 = new SqlCommand(onlineProgramRead, con);
                SqlCommand cmdOnline2 = new SqlCommand(educatorsRead, con);

                SqlDataReader myReadOnline = cmdOnline.ExecuteReader();
                SqlDataReader myReadOnline1 = cmdOnline1.ExecuteReader();
                SqlDataReader myReadOnline2 = cmdOnline2.ExecuteReader();



                //Online Program
                while (myReadOnline.Read())
                {

                    ddlOnlineProgramID.Items.Add(new ListItem(myReadOnline["OnlineProgramID"].ToString(), myReadOnline["OnlineProgramID"].ToString()));
                }

                while (myReadOnline1.Read())
                {
                    ddlProgramType2.Items.Add(new ListItem(myReadOnline1["OnlineProgramTypeName"].ToString(), myReadOnline1["OnlineProgramTypeID"].ToString()));
                }

                while (myReadOnline2.Read())
                {
                    ddlTeacher.Items.Add(new ListItem(myReadOnline2["EducatorFirstName"].ToString(), myReadOnline2["EducatorID"].ToString()));
                }
                ddlOnlineProgramID.DataBind();

                if (AddGrade2.Items.Count < 2)
                {

                    string gradeOnlineRead = "Select * from Grade";
                    SqlCommand cmdOnline3 = new SqlCommand(gradeOnlineRead, con);
                    SqlDataReader myOnlineRead3 = cmdOnline3.ExecuteReader();

                    while (myOnlineRead3.Read())
                    {

                        AddGrade2.Items.Add(new ListItem(myOnlineRead3["GradeLevel"].ToString(), myOnlineRead3["GradeID"].ToString()));
                    }

                }

                if (drpEducators2.Items.Count < 2)
                {

                    string educatorRead = "Select * from Educators order by EducatorFirstName";
                    SqlCommand cmd4 = new SqlCommand(educatorRead, con);
                    SqlDataReader myRead4 = cmd4.ExecuteReader();

                    while (myRead4.Read())
                    {

                        drpEducators2.Items.Add(new ListItem(myRead4["EducatorFirstName"].ToString() + " " + myRead4["EducatorLastName"].ToString(), myRead4["EducatorID"].ToString()));
                    }


                }

                if (ddlBirds2.Items.Count < 2)
                {

                    string birdRead = "Select * from Animal where AnimalType = 'Bird' order by AnimalName";
                    SqlCommand cmd5 = new SqlCommand(birdRead, con);
                    SqlDataReader myRead5 = cmd5.ExecuteReader();

                    while (myRead5.Read())
                    {

                        ddlBirds2.Items.Add(new ListItem(myRead5["AnimalName"].ToString(), myRead5["AnimalID"].ToString()));
                    }


                }

                if (ddlReptiles2.Items.Count < 2)
                {

                    string reptileRead = "Select * from Animal where AnimalType = 'Reptile' order by AnimalName";
                    SqlCommand cmd6 = new SqlCommand(reptileRead, con);
                    SqlDataReader myRead6 = cmd6.ExecuteReader();

                    while (myRead6.Read())
                    {

                        ddlReptiles2.Items.Add(new ListItem(myRead6["AnimalName"].ToString(), myRead6["AnimalID"].ToString()));
                    }


                }

                if (lstMammals2.Items.Count < 2)
                {

                    string mammalRead = "Select * from Animal where AnimalType = 'Mammal' order by AnimalName";
                    SqlCommand cmd7 = new SqlCommand(mammalRead, con);
                    SqlDataReader myRead7 = cmd7.ExecuteReader();

                    while (myRead7.Read())
                    {

                        lstMammals2.Items.Add(new ListItem(myRead7["AnimalName"].ToString(), myRead7["AnimalID"].ToString()));
                    }


                }





                //Live Program
                while (myRead.Read())
                {

                    ddlProgramID.Items.Add(new ListItem(myRead["ProgramID"].ToString(), myRead["ProgramID"].ToString()));
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

    }



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

            rptProgramLL3Live.DataSource = GetData(string.Format("SELECT Case when OnOff = 1 then 'On' else 'Off' end as 'OnOffSite', ProgramID, Case when PaymentNeeded = 'Y' then 'Not Paid' else 'Paid' end as 'Paid?', ExtraComments AS Comments From Program WHERE ProgramID = " + ProgramID + "", ProgramID));
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

    //GO FOR ALL


    protected void OnItemDataBoundAll(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string ProgramID = (e.Item.FindControl("hfProgramIDAll") as HiddenField).Value;



        }
    }


    public void createAccordianUsingRepeaterAll()
    {

        rptProgramHLAll.DataSource = GetData("Select AllProgramID, ProgramCategory, convert(varchar, ProgramDate,101) as ProgramDate, ProgramType From AllPrograms Order by ProgramDate Desc;");
        rptProgramHLAll.DataBind();
    }

    protected void btnExportLive_Click(object sender, EventArgs e)
    {

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        String animalReport = "Live Programs Listing";
        String filename = "Created on: " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();
        string onlineName = animalReport + filename;

        SqlCommand cmd = new SqlCommand("Select pt.ProgramName, CONVERT(VARCHAR(15), ProgramDate, 101) as ProgramDate, CONVERT(VARCHAR(15), ProgramTime, 108) as ProgramTime, o.OrgName, ProgramAddress,CityCounty, State, Status, NumberOfChildren, NumberOfAdults," +
            "Case when OnOff = 1 then 'On' else 'Off' end as 'On or Off Site', Case when PaymentNeeded = 'Y' then 'Not Paid' else 'Paid' end as 'Paid?', ExtraComments FROM Program p inner join ProgramType pt on  p.programtypeid = pt.programtypeid inner join Organization o on p.orgid = o.orgid", sc);

        sc.Open();

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        ds.WriteXml(@"C:\Users\labpatron\Desktop\" + animalReport + ".xls");

        sc.Close();
        string script = "alert('File Successfully Exported to Desktop');";
        System.Web.UI.ScriptManager.RegisterClientScriptBlock(Button1, this.GetType(), "Test", script, true);

    }
    public override void VerifyRenderingInServerForm(Control control)
    {

    }


    protected void btnExportOnline_Click(object sender, EventArgs e)
    {

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        String animalReport = "Online Programs Listing";
        String filename = "Created on: " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();
        string onlineName = animalReport + filename;


       // string query = "SELECT ProgramDate, NumberOfKids, NumberOfPeople, City, State, Country, TeacherName, ContactEmail, ExtraComments FROM OnlineProgram";


      SqlCommand cmd = new SqlCommand("Select OnlineProgramTypeName, CONVERT(VARCHAR(15), ProgramDate, 101) as ProgramDate, NumberOfKids, NumberOfPeople, " +
          "City, State, Country, TeacherName  as Educator, ContactEmail, ExtraComments FROM OnlineProgram op inner join OnlineProgramType opt on  op.onlineprogramtypeid = opt.onlineprogramtypeid", sc);
       
        sc.Open();

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        ds.WriteXml(@"C:\Users\labpatron\Desktop\" + animalReport  + ".xls");


        sc.Close();
        string script = "alert('File Successfully Exported to Desktop');";
        System.Web.UI.ScriptManager.RegisterClientScriptBlock(Button1, this.GetType(), "Test", script, true);
    }


    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        // Create new sql commands
        System.Data.SqlClient.SqlCommand update = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullGradeID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand updateGrade = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullEducatorID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand updateEducator = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand deleteEducator = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand deleteGrade = new System.Data.SqlClient.SqlCommand();

        System.Data.SqlClient.SqlCommand pullAnimalID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand updateAnimal = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand deleteAnimal = new System.Data.SqlClient.SqlCommand();


        // Create the sql connections between the commands at sc
        update.Connection = sc;
        pullGradeID.Connection = sc;
        updateGrade.Connection = sc;
        pullEducatorID.Connection = sc;
        updateEducator.Connection = sc;
        deleteEducator.Connection = sc;
        deleteGrade.Connection = sc;
        pullAnimalID.Connection = sc;
        updateAnimal.Connection = sc;
        deleteAnimal.Connection = sc;

        // Clear the parameters for deleting associated table inserts
        deleteEducator.Parameters.Clear();
        deleteGrade.Parameters.Clear();
        deleteAnimal.Parameters.Clear();

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


        // Delete Educators from associated table
        deleteEducator.CommandText = "Delete from ProgramEducators where programID = @programID";
        deleteEducator.Parameters.AddWithValue("@programID", ddlProgramID.SelectedItem.Value);
        deleteEducator.ExecuteNonQuery();

        // Delete grades from associated table
        deleteGrade.CommandText = "Delete from ProgramGrades where programID = @programID";
        deleteGrade.Parameters.AddWithValue("@programID", ddlProgramID.SelectedItem.Value);
        deleteGrade.ExecuteNonQuery();

        // Delete animals from associated tables
        deleteAnimal.CommandText = "Delete from ProgramAnimal where programID = @programID";
        deleteAnimal.Parameters.AddWithValue("@programID", ddlProgramID.SelectedItem.Value);
        deleteAnimal.ExecuteNonQuery();

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
                updateEducator.CommandText = "Insert into ProgramEducators (ProgramID, EducatorID, LastUpdated, LastUpdatedBy) values (@programID, @educatorID, @lastUpdated, @lastUpdatedBy)";
                updateEducator.Parameters.AddWithValue("@programID", ddlProgramID.SelectedItem.Value);
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

        //Live Program
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
                updateGrade.CommandText = "Insert into ProgramGrades (ProgramID, GradeID, LastUpdated, LastUpdatedBy) values (@programID, @gradeID, @lastUpdated, @lastUpdatedBy)";
                updateGrade.Parameters.AddWithValue("@programID", ddlProgramID.SelectedItem.Value);
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

        //Live Program
        //Pull animalID
        //Insert into onlineAnimal table (selected birds)
        foreach (ListItem li in ddlBirds.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                updateAnimal.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                updateAnimal.CommandText = "Insert into ProgramAnimal (ProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@programID, @animalID, @lastUpdated, @lastUpdatedBy)";
                updateAnimal.Parameters.AddWithValue("@programID", ddlProgramID.SelectedItem.Value);
                updateAnimal.Parameters.AddWithValue("@animalID", tempAnimalID);
                updateAnimal.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateAnimal.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateAnimal.ExecuteNonQuery();
            }
            else
            {
                continue;
            }

        }

        //Live Program
        //Pull animalID
        //Insert into onlineAnimal table (selected mammals)
        foreach (ListItem li in lstMammals.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                updateAnimal.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                updateAnimal.CommandText = "Insert into ProgramAnimal (ProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@programID, @animalID, @lastUpdated, @lastUpdatedBy)";
                updateAnimal.Parameters.AddWithValue("@programID", ddlProgramID.SelectedItem.Value);
                updateAnimal.Parameters.AddWithValue("@animalID", tempAnimalID);
                updateAnimal.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateAnimal.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateAnimal.ExecuteNonQuery();
            }
            else
            {
                continue;
            }

        }

        //Live Program
        //Pull animalID
        //Insert into onlineAnimal table (selected reptiles)
        foreach (ListItem li in ddlReptiles.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                updateAnimal.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                updateAnimal.CommandText = "Insert into ProgramAnimal (ProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@programID, @animalID, @lastUpdated, @lastUpdatedBy)";
                updateAnimal.Parameters.AddWithValue("@programID", ddlProgramID.SelectedItem.Value);
                updateAnimal.Parameters.AddWithValue("@animalID", tempAnimalID);
                updateAnimal.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateAnimal.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateAnimal.ExecuteNonQuery();
            }
            else
            {
                continue;
            }

        }


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

    //Live Program ID
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

        insert.CommandText = "select ProgramID, ProgramTypeID, OrgID, Status, ProgramAddress, CityCounty, State, OnOff, NumberOfChildren, NumberOfAdults, PaymentNeeded, convert(varchar, ProgramDate,101) as ProgramDate, , CONVERT(VARCHAR(15), ProgramTime, 108) as ProgramTime, EventMonth, ExtraComments, LastUpdated, LastUpdatedBy from Program where" +
                          " ProgramID = @ProgramID";
        insert.Parameters.AddWithValue("@ProgramID", ddlProgramID.SelectedItem.Value);

        programType.CommandText = "Select ProgramType.ProgramName from ProgramType inner join Program on ProgramType.ProgramTypeID = Program.ProgramTypeID where Program.ProgramID = @programID";
        programType.Parameters.AddWithValue("@programID", ddlProgramID.SelectedItem.Value);

        organization.CommandText = "Select Organization.OrgName from Organization inner join Program on Organization.OrgID = Program.OrgID where Program.ProgramID = @programID";
        organization.Parameters.AddWithValue("@programID", ddlProgramID.SelectedItem.Value);

        pullEducators.CommandText = "Select ProgramEducators.EducatorID, Educators.EducatorFirstName + ' ' + Educators.EducatorLastName as EducatorsName from ProgramEducators inner join Educators on Educators.EducatorID = ProgramEducators.EducatorID where ProgramID = @ProgramID";
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
                drpEducators.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < drpEducators.Items.Count; i++)
                {
                    string p = drpEducators.Items[i].ToString();
                    string educators = sdr3.GetString(1);
                    if (p == sdr3.GetString(1))
                    {
                        drpEducators.Items[i].Selected = true;

                    }
                }
                //txtTempEducators.Text += sdr3[1].ToString() + " ";
            }
            while (sdr4.Read())
            {
                AddGrade.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < AddGrade.Items.Count; i++)
                {
                    string p = AddGrade.Items[i].ToString();
                    string grades = sdr4.GetString(0);
                    if (p == sdr4.GetString(0))
                    {
                        AddGrade.Items[i].Selected = true;

                    }
                }
                //txtTempGrades.Text += sdr4[0].ToString() + " ";
            }

            while (sdr5.Read())
            {
                ddlBirds.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < ddlBirds.Items.Count; i++)
                {
                    string p = ddlBirds.Items[i].ToString();
                    string birds = sdr5.GetString(0);
                    if (p == sdr5.GetString(0))
                    {
                        ddlBirds.Items[i].Selected = true;

                    }

                }
                //txtTempBirds.Text += sdr5[0].ToString() + " ";
            }

            while (sdr6.Read())
            {
                ddlReptiles.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < ddlReptiles.Items.Count; i++)
                {
                    string p = ddlReptiles.Items[i].ToString();
                    string reptiles = sdr6.GetString(0);
                    if (p == sdr6.GetString(0))
                    {
                        ddlReptiles.Items[i].Selected = true;

                    }

                }
                //txtTempReptiles.Text += sdr6[0].ToString() + " ";
            }

            while (sdr7.Read())
            {
                lstMammals.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < lstMammals.Items.Count; i++)
                {
                    string p = lstMammals.Items[i].ToString();
                    string mammals = sdr7.GetString(0);
                    if (p == sdr7.GetString(0))
                    {
                        lstMammals.Items[i].Selected = true;

                    }

                }
                //txtTempMammals.Text += sdr7[0].ToString() + " ";
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    //Live Program Delete
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

    //Online Program
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


        insert.CommandText = "select OnlineProgramID, convert(varchar, ProgramDate,101) as ProgramDate, Month, OnlineProgramTypeID, NumberOfKids, NumberOfPeople, City, State, Country, TeacherName, ContactEmail, ExtraComments, LastUpdated, LastUpdatedBy from OnlineProgram where OnlineProgramID = @OnlineProgramID";
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

                txtProgramDate2.Text = sdr[1].ToString();
                txtNumOfKids.Text = sdr[4].ToString();
                txtNumOfAdults2.Text = sdr[5].ToString();
                txtCity2.Text = sdr[6].ToString();
                txtState2.Text = sdr[7].ToString();
                txtCountry.Text = sdr[8].ToString();
                ddlTeacher.SelectedItem.Text = sdr[9].ToString();
                txtEmail.Text = sdr[10].ToString();
                TextBoxComments.Text = sdr[11].ToString();


                lblLastUpdated.Text = "Last Updated: " + sdr[12].ToString();
                lblLastUpdatedBy.Text = "Last Updated By: " + sdr[13].ToString();
            }


            while (sdr1.Read())
            {
                ddlProgramType2.SelectedItem.Text = sdr1[0].ToString();
            }

            while (sdr2.Read())
            {
                drpEducators2.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < drpEducators2.Items.Count; i++)
                {
                    string p = drpEducators2.Items[i].ToString();
                    string educators = sdr2.GetString(1);
                    if (p == sdr2.GetString(1))
                    {
                        drpEducators2.Items[i].Selected = true;

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
                AddGrade2.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < AddGrade2.Items.Count; i++)
                {
                    string p = AddGrade2.Items[i].ToString();
                    string grades = sdr3.GetString(0);
                    if (p == sdr3.GetString(0))
                    {
                        AddGrade2.Items[i].Selected = true;

                    }
                }
                //txtTempGrade.Text += sdr3.GetString(0) + " ";
            }

            while (sdr4.Read())
            {
                ddlBirds2.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < ddlBirds2.Items.Count; i++)
                {
                    string p = ddlBirds2.Items[i].ToString();
                    string birds = sdr4.GetString(0);
                    if (p == sdr4.GetString(0))
                    {
                        ddlBirds2.Items[i].Selected = true;

                    }

                }
                //txtTempBird.Text += sdr4.GetString(0) + " ";
            }

            while (sdr5.Read())
            {
                ddlReptiles2.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < ddlReptiles2.Items.Count; i++)
                {
                    string p = ddlReptiles2.Items[i].ToString();
                    string reptiles = sdr5.GetString(0);
                    if (p == sdr5.GetString(0))
                    {
                        ddlReptiles2.Items[i].Selected = true;

                    }

                }
                //txtTempReptiles.Text += sdr5.GetString(0) + " ";
            }

            while (sdr6.Read())
            {
                lstMammals2.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < lstMammals2.Items.Count; i++)
                {
                    string p = lstMammals2.Items[i].ToString();
                    string mammals = sdr6.GetString(0);
                    if (p == sdr6.GetString(0))
                    {
                        lstMammals2.Items[i].Selected = true;

                    }

                }
                //txtTempMammals.Text += sdr6.GetString(0) + " ";
            }

        }
        catch (Exception ex)
        {
            throw ex;
        }


        if (drpEducators2.Items.Count < 2)
        {

            string educatorRead = "Select * from Educators order by EducatorFirstName";
            SqlCommand cmd4 = new SqlCommand(educatorRead, con);
            SqlDataReader myRead4 = cmd4.ExecuteReader();

            while (myRead4.Read())
            {

                drpEducators2.Items.Add(new ListItem(myRead4["EducatorFirstName"].ToString() + " " + myRead4["EducatorLastName"].ToString(), myRead4["EducatorID"].ToString()));
            }


        }

        if (ddlBirds2.Items.Count < 2)
        {

            string birdRead = "Select * from Animal where AnimalType = 'Bird' order by AnimalName";
            SqlCommand cmd5 = new SqlCommand(birdRead, con);
            SqlDataReader myRead5 = cmd5.ExecuteReader();

            while (myRead5.Read())
            {

                ddlBirds2.Items.Add(new ListItem(myRead5["AnimalName"].ToString(), myRead5["AnimalID"].ToString()));
            }


        }

        if (ddlReptiles2.Items.Count < 2)
        {

            string reptileRead = "Select * from Animal where AnimalType = 'Reptile' order by AnimalName";
            SqlCommand cmd6 = new SqlCommand(reptileRead, con);
            SqlDataReader myRead6 = cmd6.ExecuteReader();

            while (myRead6.Read())
            {

                ddlReptiles2.Items.Add(new ListItem(myRead6["AnimalName"].ToString(), myRead6["AnimalID"].ToString()));
            }


        }

        if (lstMammals2.Items.Count < 2)
        {

            string mammalRead = "Select * from Animal where AnimalType = 'Mammal' order by AnimalName";
            SqlCommand cmd7 = new SqlCommand(mammalRead, con);
            SqlDataReader myRead7 = cmd7.ExecuteReader();

            while (myRead7.Read())
            {

                lstMammals2.Items.Add(new ListItem(myRead7["AnimalName"].ToString(), myRead7["AnimalID"].ToString()));
            }


        }
    }

    //Edit Online Program button 
    protected void btnUpdate2_Click(object sender, EventArgs e)
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
        DateTime programDate = Convert.ToDateTime(txtProgramDate2.Text);
        String month = programDate.ToString("MMMM");
        update.CommandText = "update onlineProgram set programDate = @programDate, month = @month, onlineProgramTypeID = @onlineTypeID, numberOfKids = @numOfKids, numberOfPeople = @numOfAdults, " +
            "city = @city, state= @state, country = @country, teacherName = @teacherName, contactEmail = @contactEmail, extraComments= @comments where onlineProgramID = @onlineProgramID";
        update.Parameters.AddWithValue("onlineProgramID", ddlOnlineProgramID.SelectedItem.Value);
        update.Parameters.AddWithValue("@programDate", txtProgramDate2.Text);
        update.Parameters.AddWithValue("@month", month);
        update.Parameters.AddWithValue("@onlineTypeID", ddlOnlineProgramID.SelectedItem.Value);
        update.Parameters.AddWithValue("@numOfKids", txtNumOfKids.Text);
        update.Parameters.AddWithValue("@numofAdults", txtNumOfAdults2.Text);
        update.Parameters.AddWithValue("@city", txtCity2.Text);
        update.Parameters.AddWithValue("@state", txtState2.Text);
        update.Parameters.AddWithValue("@country", txtCountry.Text);
        update.Parameters.AddWithValue("@teacherName", ddlTeacher.SelectedItem.Text);
        update.Parameters.AddWithValue("@contactEmail", txtEmail.Text);
        update.Parameters.AddWithValue("@comments", TextBoxComments.Text);
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
        foreach (ListItem li in drpEducators2.Items)
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

        foreach (ListItem li in AddGrade2.Items)
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
        foreach (ListItem li in lstMammals2.Items)
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
        foreach (ListItem li in ddlReptiles2.Items)
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

    protected void btnDelete2_Click(object sender, EventArgs e)
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
