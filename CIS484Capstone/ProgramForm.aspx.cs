using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ProgramForm : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        sc.Open();
        

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;



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




        // Populate Year from 1990 through 2020
        for (int i = 2020; i >= 1990; i--)
        {
            ddlYear.Items.Add(new ListItem(i.ToString()));
        }





    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

        sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";

        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand orgInsert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand educatorInsert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand programAnimalInsert = new System.Data.SqlClient.SqlCommand();
        
        insert.Connection = sc;
        orgInsert.Connection = sc;
        educatorInsert.Connection = sc;
        programAnimalInsert.Connection = sc;

        //Program class attributes
        byte onOff = Convert.ToByte(rboOnOff.SelectedIndex);
        string status = txtStatus.Text;
        int programTypeID = Convert.ToInt32(ddlProgramTypeID.SelectedItem.Value);
        string programAddress = txtProgramAddress.Text;
        int numOfChildren = Convert.ToInt32(txtNumOfChildren.Text);
        int numOfAdult = Convert.ToInt32(txtNumOfAdults.Text);
        char waitForPayment = Convert.ToChar(rboWaitForPayment.SelectedItem.Value);
        DateTime programDate = Convert.ToDateTime(Int32.Parse(ddlReportMonth.SelectedIndex.ToString()) + "/" + Int32.Parse(ddlDate.SelectedIndex.ToString()) + "/" + Int32.Parse(ddlYear.SelectedIndex.ToString()));
        TimeSpan programTime = TimeSpan.Parse(txtTime.Text);
        string extraComments = txtComments.Text;
        string reportMonth = ddlReportMonth.SelectedValue.ToString();
        string cityCounty = txtCity.Text;
        string state = ddlState1.SelectedValue.ToString();

        //Organization class attributes
        string organizationName = Convert.ToString(ddlOrganizationName.SelectedItem);
        

        //Educator class attributes
        //string firstName = txtEducators.Text.Substring(0, txtEducators.Text.IndexOf(" "));
        //string lastName = txtEducators.Text.Substring(txtEducators.Text.IndexOf(" "));

        //int grade = Convert.ToInt32(ddlGrade.SelectedItem.Value);

        Program newProgram = new Program(onOff, status, programAddress, cityCounty, state, reportMonth, programTypeID, numOfChildren, numOfAdult, waitForPayment, programDate, programTime, extraComments);
        Organization newOrganization = new Organization(organizationName, cityCounty, state); // NEED TO VERIFY 10/23/18 CVC
        //Educator newEducator = new Educator(firstName, lastName);

        insert.CommandText = "insert into dbo.Program (programTypeID, orgID, status, programAddress, CityCounty, State, onOff, numberOfChildren, numberOfAdults, paymentNeeded, programDate, programTime, EventMonth, ExtraComments) values "
            + "(@programTypeID, @orgID, @status, @programAddress, @cityCounty, @State, @onOff, @numberOfChildren, @numberOfAdults, @paymentNeeded, @programDate, @programTime, @eventMonth, @extraComments)";

        insert.Parameters.AddWithValue("@programTypeID", newProgram.getProgramTypeID());
        insert.Parameters.AddWithValue("@orgID", ddlOrganizationName.SelectedItem.Value);
        insert.Parameters.AddWithValue("@programAddress", newProgram.getProgramAddress());
        insert.Parameters.AddWithValue("@cityCounty", newProgram.getCityCounty());
        insert.Parameters.AddWithValue("@State", newProgram.getState());
        insert.Parameters.AddWithValue("@onOff", newProgram.getOnOff());
        insert.Parameters.AddWithValue("@numberOfChildren", newProgram.getNumOfChildren());
        insert.Parameters.AddWithValue("@numberOfAdults", newProgram.getNumOfAdult());
        insert.Parameters.AddWithValue("@paymentNeeded", newProgram.getWaitForPayment());
        insert.Parameters.AddWithValue("@programDate", newProgram.getDate());
        insert.Parameters.AddWithValue("@programTime", newProgram.getTime());
        insert.Parameters.AddWithValue("@eventMonth", newProgram.getReportMonth());
        insert.Parameters.AddWithValue("@status", newProgram.getStatus());
        insert.Parameters.AddWithValue("@extraComments", newProgram.getComments());
        //insert.Parameters.AddWithValue("@grade", newProgram.getGrade());

        insert.ExecuteNonQuery();

        orgInsert.CommandText = "insert into dbo.Organization (orgName, city, county) values (@orgName, @city, @county)";
        orgInsert.Parameters.AddWithValue("@orgName", newOrganization.getOrgName());
        orgInsert.Parameters.AddWithValue("@city", newOrganization.getCity());
        orgInsert.Parameters.AddWithValue("@county", newOrganization.getCounty());

        orgInsert.ExecuteNonQuery();

        //educatorInsert.CommandText = "insert into dbo.Educators (educatorFirstName, educatorLastName) values (@firstName, @lastName)";
        //educatorInsert.Parameters.AddWithValue("@firstName", firstName);
        //educatorInsert.Parameters.AddWithValue("@lastName", lastName);

        //educatorInsert.ExecuteNonQuery();

        //programAnimalInsert.CommandText = "insert into dbo.ProgramAnimal (programID, animalID) values (@programID, @animalID)";
        //programAnimalInsert.Parameters.AddWithValue("@programID", "select programID from program where programid = 1");
        //programAnimalInsert.Parameters.AddWithValue("@animalID", ddlAnimalName.SelectedItem.Value);
        //programAnimalInsert.ExecuteNonQuery();



    }

    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("userLogin.aspx", false);
    }


    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        ddlAnimalName.AppendDataBoundItems = true;
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

        sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";

        sc.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;



        //fill dropdownlist

        this.ddlAnimalName.DataBind();
        //insert.CommandText = "select * from dbo.Animal where AnimalType = 'bird'";
        //insert.ExecuteReader();
        //ddlAnimalName.DataTextField = "AnimalName";
        //ddlAnimalName.DataValueField = "AnimalID";
        //ddlAnimalName.DataBind();


    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        lblAnimalType.Text = "Animal Type:";
        lblAnimalName.Text = "Animal Name:";
        //rboAnimalType.Visible = true;
        ddlAnimalName.Visible = true;
    }

    protected void btnPopulate_Click(object sender, EventArgs e)
    {
        txtProgramAddress.Text = "123 Mammal Drive";
        ddlReportMonth.SelectedValue = DateTime.Now.ToString("MMMM");
        selectMonthDays();
        ddlDate.SelectedValue = DateTime.Now.Day.ToString();
        ddlYear.SelectedValue = DateTime.Now.Year.ToString();
        txtTime.Text = "09:00";
        txtNumOfAdults.Text = "25";
        txtNumOfChildren.Text = "15";
        rboWaitForPayment.SelectedIndex = 0;
        txtCity.Text = "Harrisonburg";
        ddlState1.SelectedValue = "VA";
        rboOnOff.SelectedIndex = 1;
        txtStatus.Text = "Completed";
        txtComments.Text = "N/A";
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
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


    // sets days in dropdown for month
    public void SetDaysInMonth(int maxDay)
    {
        for (int i = 1; i <= maxDay; i++)
        {
            ddlDate.Items.Add(new ListItem(i.ToString()));
        }

    }

    // if statements to call SetDaysInMonth
    public void selectMonthDays()
    {

        int selectedMonth = ddlReportMonth.SelectedIndex;

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
            ddlDate.Items.Clear();
            if (Int32.Parse(ddlYear.SelectedValue) % 4 == 0)
            {
                SetDaysInMonth(29);
            }
            else
            {
                SetDaysInMonth(28);
            }
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
        int selectedMonth = ddlReportMonth.SelectedIndex;

        if (selectedMonth == 2)
        {
            ddlDate.Items.Clear();
            if (Int32.Parse(ddlYear.SelectedValue) % 4 == 0)
            {
                SetDaysInMonth(29);
            }
            else
            {
                SetDaysInMonth(28);
            }
        }
    }
}