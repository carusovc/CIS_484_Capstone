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
        //lblWelcome.Text = "Welcome, " + Session["USER_ID"].ToString();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;

    }



    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int onlineProgramID; // need to designate identity
        DateTime prgmDate = Calendar1.SelectedDate;
        string month = setMonth(prgmDate);
        int onlineProgramTypeID = Int32.Parse(txtType.Text.ToString());
        int numOfKids = Int32.Parse(txtNumOfKids.Text.ToString());
        int numOfPeople = Int32.Parse(txtNumOfPeople.Text.ToString());
        string city = txtCity.Text.ToString();
        string state = txtStateCountry.Text.ToString();
        string country = txtStateCountry.Text.ToString();
        string teacherName = txtTeacher.Text.ToString();
        string contactEmail = txtEmail.Text.ToString();
        string extraComments = txtComments.Text.ToString();



    }

    public string setMonth (DateTime prgmDate)
    {
        string month = prgmDate.ToString("MMMM");
        return month;
    }

    
}