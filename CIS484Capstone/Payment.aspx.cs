using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Payments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
  
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        //sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();
        //lblWelcome.Text = "Welcome, " + Session["USER_ID"].ToString();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        string programNameRead = "Select * from ProgramType order by ProgramName";
        string programTypeRead = "Select * from OnlineProgramType order by OnlineProgramTypeName";
        SqlCommand cmd1 = new SqlCommand(programNameRead, sc);
        SqlCommand cmd2 = new SqlCommand(programTypeRead, sc);
        SqlDataReader myRead1 = cmd1.ExecuteReader();
        SqlDataReader myRead2 = cmd2.ExecuteReader();



        if (ddlProgramType.Items.Count < 2)
        {
            while (myRead1.Read())
            {
                ddlProgramType.Items.Add(new ListItem(myRead1["ProgramName"].ToString(), myRead1["ProgramTypeID"].ToString()));
            }
            while(myRead2.Read())
            {
                ddlProgramType.Items.Add(new ListItem(myRead2["OnlineProgramTypeName"].ToString(), myRead2["OnlineProgramTypeID"].ToString()));
            }
        }

        //if (ddlProgramType.Items.Count < 2)
        //{
        //    while(myRead2.Read())
        //    {
        //        ddlProgramType.Items.Add(new ListItem(myRead2["OnlineProgramTypeName"].ToString(), myRead2["OnlineProgramTypeID"].ToString()));
        //    }
        //}

        // Populate Year from 1990 through 2020
        for (int i = 2020; i >= 1990; i--)
        {
            ddlYear.Items.Add(new ListItem(i.ToString()));
        }
        string read = "Select * from Organization";

    
        
        SqlCommand cmd = new SqlCommand(read, sc);
        SqlDataReader myRead = cmd.ExecuteReader();
    

        while (myRead.Read())
        {

            ddlOrganization.Items.Add(new ListItem(myRead["OrgName"].ToString(), myRead["OrgID"].ToString()));
        }

       
        ddlOrganization.DataBind();
        

    }

    

    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";

        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;

        //DateTime paymentDate = Convert.ToDateTime(Int32.Parse(ddlMonth.SelectedIndex.ToString()) + "/" + Int32.Parse(ddlDate.SelectedIndex.ToString()) + "/" + Int32.Parse(ddlYear.SelectedIndex.ToString()));
        DateTime paymentDate = Convert.ToDateTime((ddlMonth.SelectedItem.Value) + "/" + (ddlDate.SelectedItem.Value) + "/" + (ddlYear.SelectedItem.Value));
        string month = ddlMonth.SelectedValue.ToString();
        decimal paymentAmount = Convert.ToDecimal(txtAmount.Text);
        string checkNum = txtCheckNum.Text.ToString();
        string paymentType = ddlPaymentType.Text.ToString();
        int orgID = Int32.Parse(ddlOrganization.Text.ToString());
        string invoice = txtInvoiceNum.Text.ToString();

        string cancelledSet = txtCancelledChar.Text.ToString();
        char[] cancelledCharArr = cancelledSet.ToCharArray();
        char CanclledStatus = cancelledCharArr[0];

        //Temporary LastUpdated and LastUpdatedBy
        DateTime tempLastUpdated = DateTime.Today;
        String tempLastUpdatedBy = "TempWildTekDevs";




        Payment newPayment = new Payment(paymentAmount, paymentDate, checkNum, paymentType, invoice, CanclledStatus, orgID);

        insert.CommandText = "insert into dbo.PaymentRecord (PaymentAmount, paymentDate, CheckNumber, PaymentType, Invoice, CancelledInvoice, OrgID, LastUpdated, LastUpdatedBy) " +
            "values (@paymentAmount, @paymentDate, @CheckNumber, @PaymentType, @Invoice, @CancelledInvoice, @OrgID, @LastUpdated, @LastUpdatedBy)";

        insert.Parameters.AddWithValue("@paymentAmount", paymentAmount);
        insert.Parameters.AddWithValue("@paymentDate", newPayment.getPaymentDate());
        insert.Parameters.AddWithValue("@CheckNumber", newPayment.getCheckNum());
        insert.Parameters.AddWithValue("@PaymentType", newPayment.getPaymentType());
        insert.Parameters.AddWithValue("@Invoice", newPayment.getInvoice());
        insert.Parameters.AddWithValue("@CancelledInvoice", newPayment.getCancelledInvoice());
        insert.Parameters.AddWithValue("@OrgID", newPayment.getOrgId());
        insert.Parameters.AddWithValue("@LastUpdated", tempLastUpdated);
        insert.Parameters.AddWithValue("@LastUpdatedBy", tempLastUpdatedBy);

        insert.ExecuteNonQuery();
        

    }

    
    //protected void btnPopulate_Click(object sender, EventArgs e)
    //{
    //    ddlMonth.SelectedValue = DateTime.Now.ToString("MMMM");
    //    selectMonthDays();
    //    ddlDate.SelectedValue = DateTime.Now.Day.ToString();
    //    ddlYear.SelectedValue = DateTime.Now.Year.ToString();
    //    txtAmount.Text = "300";
    //    txtCheckNum.Text = "1234";
    //    ddlPaymentType.SelectedValue = "Check";
    //    ddlOrganization.SelectedValue = "5";
    //    txtInvoiceNum.Text = "AW18-001";
    //    txtCancelledChar.Text = "N";


    //}
    protected void ddlPaymentType_SelectedIndexChanged(object sender, EventArgs e)
    {
        int selectedPaymentType = ddlPaymentType.SelectedIndex;
        if (selectedPaymentType == 1)
        {
            txtCheckNum.ReadOnly = false;
        }
        else
        {
            txtCheckNum.ReadOnly = true;
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
            //if (Int32.Parse(ddlYear.SelectedItem.Value) % 4 == 0)
            //{
                SetDaysInMonth(29);
            //}
            //else
            //{
              //  SetDaysInMonth(28);
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
            ddlDate.Items.Clear();
            if (Int32.Parse(ddlYear.SelectedItem.Value) % 4 == 0)
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