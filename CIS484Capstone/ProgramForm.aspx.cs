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
        //lblWelcome.Text = "Welcome, " + Session["USER_ID"].ToString();

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
        DateTime dateTime = Convert.ToDateTime(txtDateTime.Text);
        string reportMonth = ddlReportMonth.SelectedItem.Value;
        int grade = Convert.ToInt32(ddlGrade.SelectedItem.Value);
        //Organization class attributes
        string organizationName = Convert.ToString(ddlOrganizationName.SelectedItem);
        string city = txtCity.Text;
        string county = txtCounty.Text;

        //Educator class attributes
        //string firstName = txtEducators.Text.Substring(0, txtEducators.Text.IndexOf(" "));
        //string lastName = txtEducators.Text.Substring(txtEducators.Text.IndexOf(" "));



        Program newProgram = new Program(onOff, status, programAddress, reportMonth, dateTime, programTypeID, numOfChildren, numOfAdult, waitForPayment, grade);
        Organization newOrganization = new Organization(organizationName, city, county);
        //Educator newEducator = new Educator(firstName, lastName);

        insert.CommandText = "insert into dbo.Program (programTypeID, orgID, programAddress, onOff, numberOfChildren, numberOfPeople, paymentNeeded, DateAndTime, EventMonth, Status, GradeID) values "
            + "(@programTypeID, @orgID, @programAddress, @onOff, @numberOfChildren, @numberOfPeople, @paymentNeeded, @dateAndTime, @eventMonth, @status, @grade)";

        insert.Parameters.AddWithValue("@programTypeID", newProgram.getProgramTypeID());
        insert.Parameters.AddWithValue("@orgID", ddlOrganizationName.SelectedItem.Value);
        insert.Parameters.AddWithValue("@programAddress", newProgram.getProgramAddress());
        insert.Parameters.AddWithValue("@onOff", newProgram.getOnOff());
        insert.Parameters.AddWithValue("@numberOfChildren", newProgram.getNumOfChildren());
        insert.Parameters.AddWithValue("@numberOfPeople", newProgram.getNumOfAdult());
        insert.Parameters.AddWithValue("@paymentNeeded", newProgram.getWaitForPayment());
        insert.Parameters.AddWithValue("@dateAndTime", newProgram.getDateTime());
        insert.Parameters.AddWithValue("@eventMonth", newProgram.getReportMonth());
        insert.Parameters.AddWithValue("@status", newProgram.getStatus());
        insert.Parameters.AddWithValue("@grade", newProgram.getGrade());

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
        txtDateTime.Text = "1/18/2018";
        txtNumOfAdults.Text = "25";
        txtNumOfChildren.Text = "15";
        rboWaitForPayment.SelectedIndex = 0;
        txtCity.Text = "Harrisonburg";
        txtCounty.Text = "Rockingham";
        rboOnOff.SelectedIndex = 1;
        txtStatus.Text = "Completed";
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
}