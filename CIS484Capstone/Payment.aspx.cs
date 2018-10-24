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

        DateTime paymentDate = Convert.ToDateTime(Int32.Parse(ddlMonth.SelectedIndex.ToString()) + "/" + Int32.Parse(ddlDate.SelectedIndex.ToString()) + "/" + Int32.Parse(ddlYear.SelectedIndex.ToString()));
        string month = ddlMonth.SelectedValue.ToString();
        float paymentAmount = float.Parse(txtAmount.Text.ToString());
        string checkNum = txtCheckNum.Text.ToString();
        string paymentType = txtPaymentType.Text.ToString();
        int orgID = Int32.Parse(txtOrganization.Text.ToString());
        string invoice = txtInvoiceNum.Text.ToString();

        string cancelledSet = txtCancelledChar.Text.ToString();
        char[] cancelledCharArr = cancelledSet.ToCharArray();
        char CanclledStatus = cancelledCharArr[0];





        Payment newPayment = new Payment(paymentAmount, paymentDate, checkNum, paymentType, invoice, CanclledStatus, orgID);

        insert.CommandText = "insert into dbo.PaymentRecord (PaymentAmount, paymentDate, CheckNumber, PaymentType, Invoice, CancelledInvoice, OrgID) " +
            "values (@paymentAmount, @paymentDate, @CheckNumber, @PaymentType, @Invoice, @CancelledInvoice, @OrgID)";

        insert.Parameters.AddWithValue("@paymentAmount", newPayment.getPaymentAmount());
        insert.Parameters.AddWithValue("@paymentDate", newPayment.getPaymentDate());
        insert.Parameters.AddWithValue("@CheckNumber", newPayment.getCheckNum());
        insert.Parameters.AddWithValue("@PaymentType", newPayment.getPaymentType());
        insert.Parameters.AddWithValue("@Invoice", newPayment.getInvoice());
        insert.Parameters.AddWithValue("@CancelledInvoice", newPayment.getCancelledInvoice());
        insert.Parameters.AddWithValue("@OrgID", newPayment.getOrgId());


        insert.ExecuteNonQuery();

    }

    protected void btnPopulate_Click(object sender, EventArgs e)
    {
        ddlMonth.SelectedValue = DateTime.Now.ToString("MMMM");
        selectMonthDays();
        ddlDate.SelectedValue = DateTime.Now.Day.ToString();
        ddlYear.SelectedValue = DateTime.Now.Year.ToString();
        txtAmount.Text = "300";
        txtCheckNum.Text = "1234";
        txtPaymentType.Text = "Check";
        txtOrganization.Text = "5";
        txtInvoiceNum.Text = "AW18-001";
        txtCancelledChar.Text = "N";



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

}