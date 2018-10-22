using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ProgramForm : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlAnimalName.AppendDataBoundItems = true;
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server=LOCALHOST;Database=WildlifeCenter;Trusted_Connection=Yes;";
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;

            if (rboBird.Checked)
            {
                ddlAnimalName.AppendDataBoundItems = true;
                insert.CommandText = "select * from dbo.Animal where AnimalType = 'bird'";
                insert.ExecuteReader();
                ddlAnimalName.DataTextField = "AnimalName";
                ddlAnimalName.DataValueField = "AnimalID";
                ddlAnimalName.DataBind();
            }

            sc.Close();

            //rboAnimalType.Visible = true;
            ddlAnimalName.Visible = true;

            

        }
        else
        {
            //lblAnimalType.Text = "";
            //rboAnimalType.Visible = false;
            //lblAnimalName.Text = "";
            //ddlAnimalName.Visible = false;
            lblWelcome.Text = "Welcome, " + Session["USER_ID"].ToString();
        }
        
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        sc.ConnectionString = @"Server=LOCALHOST;Database=WildlifeCenter;Trusted_Connection=Yes;";
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand orgInsert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand educatorInsert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        orgInsert.Connection = sc;
        educatorInsert.Connection = sc;

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

        //Organization class attributes
        string organizationName = Convert.ToString(ddlOrganizationName.SelectedItem);
        string city = txtCity.Text;
        string county = txtCounty.Text;

        //Educator class attributes
        string firstName = txtEducators.Text.Substring(0, txtEducators.Text.IndexOf(" "));
        string lastName = txtEducators.Text.Substring(txtEducators.Text.IndexOf(" "));

        Program newProgram = new Program(onOff, status, programAddress, reportMonth, dateTime, programTypeID, numOfChildren, numOfAdult, waitForPayment);
        Organization newOrganization = new Organization(organizationName, city, county);
        Educator newEducator = new Educator(firstName, lastName);

        insert.CommandText = "insert into dbo.Program (programTypeID, orgID, programAddress, onOff, numberOfChildren, numberOfAdults, paymentNeeded, DateAndTime, EventMonth, Status) values "
            + "(@programTypeID, @orgID, @programAddress, @onOff, @numberOfChildren, @numberOfAdults, @paymentNeeded, @dateAndTime, @eventMonth, @status)";

        insert.Parameters.AddWithValue("@programTypeID", programTypeID);
        insert.Parameters.AddWithValue("@orgID", ddlOrganizationName.SelectedItem.Value);
        insert.Parameters.AddWithValue("@programAddress", programAddress);
        insert.Parameters.AddWithValue("@onOff", onOff);
        insert.Parameters.AddWithValue("@numberOfChildren", numOfChildren);
        insert.Parameters.AddWithValue("@numberOfAdults", numOfAdult);
        insert.Parameters.AddWithValue("@paymentNeeded", waitForPayment);
        insert.Parameters.AddWithValue("@dateAndTime", dateTime);
        insert.Parameters.AddWithValue("@eventMonth", reportMonth);
        insert.Parameters.AddWithValue("@status", status);

        insert.ExecuteNonQuery();

        orgInsert.CommandText = "insert into dbo.Organization (orgName, city, county) values (@orgName, @city, @county)";
        orgInsert.Parameters.AddWithValue("@orgName", organizationName);
        orgInsert.Parameters.AddWithValue("@city", city);
        orgInsert.Parameters.AddWithValue("@county", county);

        orgInsert.ExecuteNonQuery();

        educatorInsert.CommandText = "insert into dbo.Educators (educatorFirstName, educatorLastName) values (@firstName, @lastName)";
        educatorInsert.Parameters.AddWithValue("@firstName", firstName);
        educatorInsert.Parameters.AddWithValue("@lastName", lastName);

        educatorInsert.ExecuteNonQuery();


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
        sc.ConnectionString = @"Server=LOCALHOST;Database=WildlifeCenter;Trusted_Connection=Yes;";
        sc.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;


            insert.CommandText = "select * from dbo.Animal where AnimalType = 'bird'";
            insert.ExecuteReader();
            ddlAnimalName.DataTextField = "AnimalName";
            ddlAnimalName.DataValueField = "AnimalID";
            ddlAnimalName.DataBind();

        
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        lblAnimalType.Text = "Animal Type:";
        lblAnimalName.Text = "Animal Name:";
        //rboAnimalType.Visible = true;
        ddlAnimalName.Visible = true;
    }
}