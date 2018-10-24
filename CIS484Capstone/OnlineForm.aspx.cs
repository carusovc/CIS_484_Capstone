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

        // Populate Year from 1990 through 2020
        for (int i = 2020; i >= 1990; i--)
        {
            ddlYear.Items.Add(new ListItem(i.ToString()));
        }


    }


        
        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

            sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";

            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;

            DateTime prgmDate = Convert.ToDateTime(Int32.Parse(ddlMonth.SelectedIndex.ToString()) + "/" + Int32.Parse(ddlDate.SelectedIndex.ToString()) + "/" + Int32.Parse(ddlYear.SelectedIndex.ToString()));
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


            OnlineProgram newOnlineProgram = new OnlineProgram(prgmDate, month, onlineProgramTypeID, numOfKids, numOfPeople, city, stateTerritory, country, teacherName, contactEmail, extraComments);

            insert.CommandText = "insert into dbo.OnlineProgram (programDate, month, onlineProgramTypeID, numberOfKids, numberOfPeople, city, state, country, teacherName, contactEmail, extraComments) " +
                "values (@programDate, @month, @typeID, @numOfKids, @numofPeople, @city, @state, @country, @teacherName, @contactEmail, @extraComments)";

            insert.Parameters.AddWithValue("@programDate", newOnlineProgram.getDate());
            insert.Parameters.AddWithValue("@month", newOnlineProgram.getMonth());
            insert.Parameters.AddWithValue("@typeID", newOnlineProgram.getType());
            insert.Parameters.AddWithValue("@numOfKids", newOnlineProgram.getKidsInClass());
            insert.Parameters.AddWithValue("@numOfPeople", newOnlineProgram.getNumOfPeople());
            insert.Parameters.AddWithValue("@city", newOnlineProgram.getCity());
            insert.Parameters.AddWithValue("@state", newOnlineProgram.getstateTerritory());
            insert.Parameters.AddWithValue("@country", newOnlineProgram.getCountry());
            insert.Parameters.AddWithValue("@teacherName", newOnlineProgram.getTeacher());
            insert.Parameters.AddWithValue("@contactEmail", newOnlineProgram.getEmail());
            insert.Parameters.AddWithValue("@extraComments", newOnlineProgram.getComments());

            insert.ExecuteNonQuery();

        }
        
        protected void btnPopulate_Click(object sender, EventArgs e)
    {
        ddlMonth.SelectedValue = DateTime.Now.ToString("MMMM");
        selectMonthDays();
        ddlDate.SelectedValue = DateTime.Now.Day.ToString();
        ddlYear.SelectedValue = DateTime.Now.Year.ToString();
        txtNumOfKids.Text = "25";
        txtNumOfPeople.Text = "50";
        txtCity.Text = "Rockingham County";
        ddlState.SelectedValue = "VA";
        ddlCountry.SelectedIndex = 187;
        txtEmail.Text = "sarah@dukes.com";
        ddlGrade.SelectedIndex = 3;
        txtTeacher.Text = "Sarah";
        txtEducator.Text = "Raina";
        txtTheme.Text = "Owl";
        txtAnimalsUsed.Text = "Gus";
        txtComments.Text = "N/A";

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
        int selectedMonth = ddlMonth.SelectedIndex;

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
}