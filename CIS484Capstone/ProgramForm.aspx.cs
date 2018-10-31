using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class ProgramForm : System.Web.UI.Page
{



    protected void Page_Load(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        //sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
       
      
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();


        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);



        if (!IsPostBack)
        {

            //if (ddlAnimalType.SelectedIndex == 0)
            //{

            //    insert.CommandText = "select * from dbo.Animal where animalType = 'bird'";


            //}

            //else if (ddlAnimalType.SelectedIndex == 1)
            //{
            //    insert.CommandText = "select * from dbo.Animal where animalType = 'mammal'";

            //}

            //else
            //{
            //    insert.CommandText = "select * from dbo.Animal where animalType = 'reptile'";

            //}

            //ddlAnimalName.DataSource = insert.ExecuteReader();
            //ddlAnimalName.DataTextField = "AnimalName";
            //ddlAnimalName.DataValueField = "AnimalID";
            //ddlAnimalName.DataBind();




            // Populate Year from 1990 through 2020
            for (int i = 2020; i >= 1990; i--)
            {
                // ddlYear.Items.Add(new ListItem(i.ToString()));
            }

        }



    }

    protected void btnSubmitForm_Click(object sender, EventArgs e)

    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
       
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
       

        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand orgInsert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand programEducatorInsert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand programAnimalInsert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand programGradeInsert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullProgramID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullEducatorID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullAnimalID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullGradeID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullOrgID = new System.Data.SqlClient.SqlCommand();






        insert.Connection = sc;
        orgInsert.Connection = sc;
        pullOrgID.Connection = sc;
        programEducatorInsert.Connection = sc;
        programAnimalInsert.Connection = sc;
        programGradeInsert.Connection = sc;
        pullProgramID.Connection = sc;
        pullEducatorID.Connection = sc;
        pullAnimalID.Connection = sc;
        pullGradeID.Connection = sc;

        ////Program class attributes
        byte onOff = Convert.ToByte(rboOnOff.SelectedIndex);
        string status = ddlStatus.SelectedItem.Text;
        int programTypeID = Convert.ToInt32(ddlProgram.SelectedItem.Value);
        string programAddress = txtAddress.Text;
        int numOfChildren = Convert.ToInt32(AddNumChildren.Text);
        int numOfAdult = Convert.ToInt32(AddNumAdult.Text);
        char waitForPayment = Convert.ToChar(paymentCompleteAdd.SelectedItem.Value);
        DateTime programDate = Convert.ToDateTime(txtDate.Text);
        //DateTime programDate = Convert.ToDateTime((ddlReportMonth.SelectedItem.Value) + "/" + (ddlDate.SelectedItem.Value) + "/" + (ddlYear.SelectedItem.Value));
        TimeSpan programTime = TimeSpan.Parse(txtTime.Text);
        string extraComments = comment.Text;
        string reportMonth = programDate.ToString("MMMM");
        string city = txtCity.Text;
        string county = txtCounty.Text;
        string cityCounty = city + ", " + county;
        string state = ddlState.SelectedItem.Text;

        //// TEMPORARY UPDATED AND UPDATEDBY
        string tempLastUpdatedBy = "TempWildTekDevs";
        DateTime tempLastUpdated = DateTime.Now;

        ////Organization class attributes
        string organizationName = txtOrgName.Text;


        ////Educator class attributes
        //string firstName = txtEducators.Text.Substring(0, txtEducators.Text.IndexOf(" "));
        //string lastName = txtEducators.Text.Substring(txtEducators.Text.IndexOf(" "));

        //int grade = Convert.ToInt32(ddlGrade.SelectedItem.Value);

        Program newProgram = new Program(onOff, status, programAddress, cityCounty, reportMonth, programTypeID, numOfChildren, numOfAdult, waitForPayment, programDate, programTime, extraComments);
        Organization newOrganization = new Organization(organizationName, cityCounty, state); // NEED TO VERIFY 10/23/18 CVC
                                                                                              //                                                                                      //Educator newEducator = new Educator(firstName, lastName);


        orgInsert.CommandText = "insert into dbo.Organization (orgName, city, county, LastUpdated, LastUpdatedBy) values (@orgName, @city, @county, @lastUpdated, @lastUpdatedBy)";
        orgInsert.Parameters.AddWithValue("@orgName", newOrganization.getOrgName());
        orgInsert.Parameters.AddWithValue("@city", newOrganization.getCity());
        orgInsert.Parameters.AddWithValue("@county", newOrganization.getCounty());
        orgInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
        orgInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB

        orgInsert.ExecuteNonQuery();

        pullOrgID.CommandText = "SELECT MAX(OrgID) From Organization";
        int tempOrgID = (int)pullOrgID.ExecuteScalar();

        insert.CommandText = "insert into dbo.Program (programTypeID, orgID, status, programAddress, CityCounty, state, onOff, numberOfChildren, numberOfAdults, paymentNeeded, programDate, programTime, EventMonth, ExtraComments, LastUpdated, LastUpdatedBy) values "
            + "(@programTypeID, @orgID, @status, @programAddress, @cityCounty, @state, @onOff, @numberOfChildren, @numberOfAdults, @paymentNeeded, @programDate, @programTime, @eventMonth, @extraComments, @lastUpdated, @lastUpdatedBy)";

        insert.Parameters.AddWithValue("@programTypeID", newProgram.getProgramTypeID());
        insert.Parameters.AddWithValue("@orgID", tempOrgID);
        insert.Parameters.AddWithValue("@programAddress", newProgram.getProgramAddress());
        insert.Parameters.AddWithValue("@cityCounty", newProgram.getCityCounty());
        insert.Parameters.AddWithValue("@State", ddlState.SelectedItem.Text);
        insert.Parameters.AddWithValue("@onOff", newProgram.getOnOff());
        insert.Parameters.AddWithValue("@numberOfChildren", newProgram.getNumOfChildren());
        insert.Parameters.AddWithValue("@numberOfAdults", newProgram.getNumOfAdult());
        insert.Parameters.AddWithValue("@paymentNeeded", newProgram.getWaitForPayment());
        insert.Parameters.AddWithValue("@programDate", newProgram.getDate());
        insert.Parameters.AddWithValue("@programTime", newProgram.getTime());
        insert.Parameters.AddWithValue("@eventMonth", newProgram.getReportMonth());
        insert.Parameters.AddWithValue("@status", newProgram.getStatus());
        insert.Parameters.AddWithValue("@extraComments", newProgram.getComments());
        insert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
        insert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
                                                                             //insert.Parameters.AddWithValue("@grade", newProgram.getGrade());

        insert.ExecuteNonQuery();

        // Pulls Program ID
        pullProgramID.CommandText = "SELECT MAX(ProgramID) From Program";
        int tempProgramID = (int)pullProgramID.ExecuteScalar();

        // Pulls Educator Name based on the selected educator
        foreach (ListItem li in drpEducators.Items)
        {
            if (li.Selected == true)
            {
                pullEducatorID.Parameters.Clear();
                programEducatorInsert.Parameters.Clear();


                //// Pulls Educator Name based on the selected educator
                //// MAY NEED TO CHANGE IF WE COMPOSITE EDUCATORS
                pullEducatorID.CommandText = "SELECT EducatorID From Educators WHERE EducatorFirstName = @EducatorFN";
                pullEducatorID.Parameters.AddWithValue("@EducatorFN", li.Text);
                int tempEducatorID = (int)pullEducatorID.ExecuteScalar();

                //// Inserts programID and EducatorID into Assocaited table ProgramEducators
                programEducatorInsert.CommandText = "INSERT INTO ProgramEducators (ProgramID, EducatorID, LastUpdated, LastUpdatedBy) values (@programID, @educatorID, @lastUpdated, @lastUpdatedBy)";
                programEducatorInsert.Parameters.AddWithValue("@programID", tempProgramID);
                programEducatorInsert.Parameters.AddWithValue("@educatorID", tempEducatorID);
                programEducatorInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
                programEducatorInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
                programEducatorInsert.ExecuteNonQuery();
            }
            else
            {
                continue;
            }
        }


        // Pull program animal based on selected Animal
        foreach (ListItem li in ddlBirds.Items)
        {
            if( li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                programAnimalInsert.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                programAnimalInsert.CommandText = "INSERT INTO ProgramAnimal (ProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@programID, @animalID, @lastUpdated, @lastUpdatedBy)";
                programAnimalInsert.Parameters.AddWithValue("@programID", tempProgramID);
                programAnimalInsert.Parameters.AddWithValue("@animalID", tempAnimalID);
                programAnimalInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
                programAnimalInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
                programAnimalInsert.ExecuteNonQuery();
            }
            else
            {
                continue;
            }

        }

        foreach (ListItem li in ddlMammals.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                programAnimalInsert.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                programAnimalInsert.CommandText = "INSERT INTO ProgramAnimal (ProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@programID, @animalID, @lastUpdated, @lastUpdatedBy)";
                programAnimalInsert.Parameters.AddWithValue("@programID", tempProgramID);
                programAnimalInsert.Parameters.AddWithValue("@animalID", tempAnimalID);
                programAnimalInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
                programAnimalInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
                programAnimalInsert.ExecuteNonQuery();
            }
            else
            {
                continue;
            }
        }

        foreach (ListItem li in ddlReptiles.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                programAnimalInsert.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                programAnimalInsert.CommandText = "INSERT INTO ProgramAnimal (ProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@programID, @animalID, @lastUpdated, @lastUpdatedBy)";
                programAnimalInsert.Parameters.AddWithValue("@programID", tempProgramID);
                programAnimalInsert.Parameters.AddWithValue("@animalID", tempAnimalID);
                programAnimalInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
                programAnimalInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
                programAnimalInsert.ExecuteNonQuery();
            }
            else
            {
                continue;
            }
        }


        //// Pull program grade based on selected Grade
        foreach (ListItem li in AddGrade.Items)
        {
            if (li.Selected == true)
            {
                pullGradeID.Parameters.Clear();
                programGradeInsert.Parameters.Clear();
                pullGradeID.CommandText = "SELECT GradeID From Grade WHERE GradeLevel = @GradeLevel";
                pullGradeID.Parameters.AddWithValue("@GradeLevel", li.Text);
                int tempGradeID = (int)pullGradeID.ExecuteScalar();

                //// Insert ProgramID and GradeID into Assocaited table ProgrameID
                programGradeInsert.CommandText = "INSERT INTO ProgramGrades (ProgramID, GradeID, LastUpdated, LastUpdatedBy) values (@programID, @gradeID, @lastUpdated, @lastUpdatedBy)";
                programGradeInsert.Parameters.AddWithValue("@programID", tempProgramID);
                programGradeInsert.Parameters.AddWithValue("@gradeID", tempGradeID);
                programGradeInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
                programGradeInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
                programGradeInsert.ExecuteNonQuery();
            }
            else
            {
                continue;
            }
        }


    }

    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Default.aspx", false);
    }



    protected void btnAdd_Click(object sender, EventArgs e)
    {

        //    lblAnimalType.Text = "Animal Type:";
        //    lblAnimalName.Text = "Animal Name:";
        //    //rboAnimalType.Visible = true;
        //    ddlAnimalName.Visible = true;

    }
    //protected void btnAddEducators_Click(object sender, EventArgs e)
    //{



    //}
    protected void btnClose_Click(object sender, EventArgs e)
    {



    }
    //protected void btnSubmitForm_Click(object sender, EventArgs e)
    //{



    //}
    //protected void btnAddGrade_Click(object sender, EventArgs e)
    //{



    //}

    protected void btnPopulate_Click(object sender, EventArgs e)
    {
        //txtProgramAddress.Text = "123 Mammal Drive";
        //ddlReportMonth.SelectedValue = DateTime.Now.ToString("MMMM");
        //selectMonthDays();
        //ddlDate.SelectedValue = DateTime.Now.Day.ToString();
        //ddlYear.SelectedValue = DateTime.Now.Year.ToString();
        //txtTime.Text = "09:00";
        //txtNumOfAdults.Text = "25";
        //txtNumOfChildren.Text = "15";
        //rboWaitForPayment.SelectedIndex = 0;
        //txtCity.Text = "Harrisonburg";
        //ddlState1.SelectedValue = "VA";
        //rboOnOff.SelectedIndex = 1;
        //txtStatus.Text = "Completed";
        //txtComments.Text = "N/A";
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

        //sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";

        //sc.Open();

        //System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;

        //if (ddlAnimalType.SelectedIndex == 0)
        //{
        //    ddlAnimalName.Items.Clear();
        //    insert.CommandText = "select * from dbo.Animal where animalType = 'bird'";
        //    ddlAnimalName.DataSource = insert.ExecuteReader();
        //    ddlAnimalName.DataTextField = "AnimalName";
        //    ddlAnimalName.DataValueField = "AnimalID";
        //    ddlAnimalName.DataBind();
        //}
        //else if (ddlAnimalType.SelectedIndex == 1)
        //{
        //    ddlAnimalName.Items.Clear();
        //    insert.CommandText = "select * from dbo.Animal where animalType = 'mammal'";
        //    ddlAnimalName.DataSource = insert.ExecuteReader();
        //    ddlAnimalName.DataTextField = "AnimalName";
        //    ddlAnimalName.DataValueField = "AnimalID";
        //    ddlAnimalName.DataBind();
        //}

        //else if (ddlAnimalType.SelectedIndex == 2)
        //{
        //    ddlAnimalName.Items.Clear();
        //    insert.CommandText = "select * from dbo.Animal where animalType = 'reptile'";
        //    ddlAnimalName.DataSource = insert.ExecuteReader();
        //    ddlAnimalName.DataTextField = "AnimalName";
        //    ddlAnimalName.DataValueField = "AnimalID";
        //    ddlAnimalName.DataBind();
        //}


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

        //int selectedMonth = ddlReportMonth.SelectedIndex;

        //if (selectedMonth == 1 || selectedMonth == 3 || selectedMonth == 5 || selectedMonth == 7 || selectedMonth == 8 || selectedMonth == 10 || selectedMonth == 12)
        //{
        //    SetDaysInMonth(31);

        //}
        //else if (selectedMonth == 4 || selectedMonth == 6 || selectedMonth == 9 || selectedMonth == 11)
        //{
        //    SetDaysInMonth(30);

        //}
        //else if (selectedMonth == 2)
        //{
        //    ddlDate.Items.Clear();
        //    if (Int32.Parse(ddlYear.SelectedValue) % 4 == 0)
        //    {
        //        SetDaysInMonth(29);
        //    }
        //    else
        //    {
        //        SetDaysInMonth(28);
        //    }
        //}
    }


    //Changes based on selected month
    protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        selectMonthDays();
    }

    // Accounts for leap years
    protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
    {
        //int selectedMonth = ddlReportMonth.SelectedIndex;

        //if (selectedMonth == 2)
        //{
        //    ddlDate.Items.Clear();
        //    if (Int32.Parse(ddlYear.SelectedValue) % 4 == 0)
        //    {
        //        SetDaysInMonth(29);
        //    }
        //    else
        //    {
        //        SetDaysInMonth(28);
        //    }
        //}
    }




}