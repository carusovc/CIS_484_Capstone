using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Payments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //lblDate.Text = DateTime.Now.Date.ToShortDateString();
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        //sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();
        

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        //string programNameRead = "Select * from Program";
        string programTypeRead = "Select * from OnlineProgramType order by OnlineProgramTypeName";
        string read = "Select * from Organization";
        //SqlCommand cmd1 = new SqlCommand(programNameRead, sc);
        SqlCommand cmd8 = new SqlCommand(programTypeRead, sc);
        SqlCommand cmd = new SqlCommand(read, sc);
        //SqlDataReader myRead1 = cmd1.ExecuteReader();
        SqlDataReader myRead8 = cmd8.ExecuteReader();
        SqlDataReader myRead = cmd.ExecuteReader();

        if (ddlProgramType.Items.Count < 2)
        {
            string readStatement = "SELECT ProgramID, convert(varchar, ProgramDate,101) as ProgramDate, ProgramType.ProgramName AS ProgramType, Organization.OrgName As Organization from Program z inner join ProgramType on z.ProgramTypeID = ProgramType.ProgramTypeID inner join Organization on z.OrgID = Organization.OrgID where z.Paid = 'N'";
            SqlCommand cmdLive = new SqlCommand(readStatement, sc);
            SqlDataReader myReadLive = cmdLive.ExecuteReader();


            while (myReadLive.Read())
            {
                ddlProgramType.Items.Add(new ListItem(myReadLive["ProgramDate"].ToString() + "--" + myReadLive["ProgramType"].ToString(), myReadLive["ProgramID"].ToString()));
            }
        }



        while (myRead.Read())
        {

            ddlOrganization.Items.Add(new ListItem(myRead["OrgName"].ToString(), myRead["OrgID"].ToString()));
        }

       
        ddlOrganization.DataBind();
        try { 
        SqlConnection con = new SqlConnection(cs);

        con.Open();

        //string str = "select * from Person where username= @username";
        System.Data.SqlClient.SqlCommand str = new System.Data.SqlClient.SqlCommand();
        str.Connection = sc;
        str.Parameters.Clear();

        str.CommandText = "select * from Person where username= @username";
        str.Parameters.AddWithValue("@username", Session["USER_ID"]);
        str.ExecuteNonQuery();

        //SqlCommand com = new SqlCommand(str, con);

        SqlDataAdapter da = new SqlDataAdapter(str);

        DataSet ds = new DataSet();

        da.Fill(ds);

        lblWelcome.Text = "Welcome, " + HttpUtility.HtmlEncode(ds.Tables[0].Rows[0]["Firstname"].ToString()) + " ";
        sc.Close();
    }
        catch
        {
            Session.RemoveAll();
            Response.Redirect("Default.aspx", false);
        }

    



    }
    protected void btnInvoices_Click(object sender, EventArgs e)
    {
        Response.Redirect("Invoices.aspx");
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
        //DateTime paymentDate = Convert.ToDateTime((ddlMonth.SelectedItem.Value) + "/" + (ddlDate.SelectedItem.Value) + "/" + (ddlYear.SelectedItem.Value));
        //string month = ddlMonth.SelectedValue.ToString();

        

       // DateTime paymentDate = Convert.ToDateTime(lblDate.Text);
        decimal paymentAmount = Convert.ToDecimal(txtAmount.Text);
        string checkNum = txtCheckNum.Text.ToString();
        string paymentType = ddlPaymentType.Text.ToString();
        string cancelledInvoices = "N";
        string invoice = txtInvoiceNum.Text.ToString();
        string paid = "";
        string tempPaidStatus = ddlInvoicePaymentStatus.SelectedItem.Value.ToString();
        switch (tempPaidStatus)
        {
            case "Paid":
                paid = "Y";
                    break;
            case "Not Paid":
                paid = "N";
                    break;

        }

        //string cancelledSet = rdbPaid.Text.ToString();
        //char[] cancelledCharArr = cancelledSet.ToCharArray();
        //char CancelledStatus = cancelledCharArr[0];

        //Temporary LastUpdated and LastUpdatedBy
        DateTime tempLastUpdated = DateTime.Today;
        String tempLastUpdatedBy = HttpUtility.HtmlEncode(Session["USER_ID"].ToString());

        string tempPaymentDateString = PaymentDate.Value.ToString();
        DateTime paymentDate = Convert.ToDateTime(tempPaymentDateString);



        Payment newPayment = new Payment(paymentAmount, paymentDate, checkNum, paymentType, invoice, paid, cancelledInvoices);

        insert.CommandText = "insert into dbo.PaymentRecord (PaymentAmount, paymentDate, CheckNumber, PaymentType, Invoice, Paid, CancelledInvoices, LastUpdated, LastUpdatedBy) " +
            "values (@paymentAmount, @paymentDate, @CheckNumber, @PaymentType, @Invoice, @Paid, @CancelledInvoices, @LastUpdated, @LastUpdatedBy)";

        insert.Parameters.AddWithValue("@paymentAmount", paymentAmount);
        insert.Parameters.AddWithValue("@paymentDate", newPayment.getPaymentDate());
        insert.Parameters.AddWithValue("@CheckNumber", newPayment.getCheckNum());
        insert.Parameters.AddWithValue("@PaymentType", newPayment.getPaymentType());
        insert.Parameters.AddWithValue("@Invoice", newPayment.getInvoice());
        insert.Parameters.AddWithValue("@Paid", newPayment.getPaid());
        //insert.Parameters.AddWithValue("@paid", newPayment.getPaid());
        insert.Parameters.AddWithValue("@CancelledInvoices", newPayment.getCancelledInvoices());
        insert.Parameters.AddWithValue("@LastUpdated", tempLastUpdated);
        insert.Parameters.AddWithValue("@LastUpdatedBy", tempLastUpdatedBy);

        insert.ExecuteNonQuery();

        System.Data.SqlClient.SqlCommand update = new System.Data.SqlClient.SqlCommand();
        update.Connection = sc;
        update.Parameters.Clear();

        System.Data.SqlClient.SqlCommand pullPaymentID = new System.Data.SqlClient.SqlCommand();
        pullPaymentID.Connection = sc;
        pullPaymentID.Parameters.Clear();

        pullPaymentID.CommandText = "SELECT MAX(PaymentID) FROM PaymentRecord";
        int tempPaymentID = (int)pullPaymentID.ExecuteScalar();

        update.CommandText = "Update Program set Paid = @paid, PaymentID = @paymentID  where ProgramID = @programID";
        update.Parameters.AddWithValue("@paid", "Y");
        update.Parameters.AddWithValue("@paymentID", tempPaymentID);
        update.Parameters.AddWithValue("@programID", ddlProgramType.SelectedItem.Value);
        update.ExecuteNonQuery();

        lblStatus.Text = "Payment has been submitted";



        sc.Close();

        txtAmount.Text = "";
        txtCheckNum.Text = "";
        ddlPaymentType.SelectedIndex = 0;
        ddlOrganization.SelectedIndex = 0;
        txtInvoiceNum.Text = "";
        ddlPaymentType.SelectedIndex = 0;
        




    }


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

    protected void ddlProgramType_SelectedIndexChanged(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";

        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();
        System.Data.SqlClient.SqlCommand selectOrganization = new System.Data.SqlClient.SqlCommand();
        selectOrganization.Connection = sc;

        selectOrganization.Parameters.Clear();

        selectOrganization.CommandText = "SELECT OrgID From Program WHERE ProgramID = @progamID";
        selectOrganization.Parameters.AddWithValue("@programID", ddlProgramType.SelectedItem.Value);
        String tempOrg = (String)selectOrganization.ExecuteScalar();

        ddlOrganization.ClearSelection();
        for (int i = 0; i < ddlOrganization.Items.Count; i++)
        {
            if (ddlOrganization.Items[i].Value == tempOrg)
            {
                ddlOrganization.Items[i].Selected = true;
            }
        }
    }

   
}