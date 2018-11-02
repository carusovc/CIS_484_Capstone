using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Landing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //try
        //{
        //    lblWelcome.Text = "Welcome, " + Session["USER_ID"].ToString();
        //}
        //catch
        //{
        //    Response.Redirect("Default.aspx");
        //}

    }

    protected void btncreateUser_Click(object sender, EventArgs e)
    {
        Response.Redirect("createUser.aspx");
    }

    protected void btnmodifyDBinformation(object sender, EventArgs e)
    {
        Response.Redirect("modifyDB.aspx");
    }

    protected void btnviewReports_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewReports.aspx");
    }

    protected void btnfinances_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }
    private void ExportToExcel(GridView GrdView)
    {
        try
        {
            Response.Clear();
            Response.AddHeader("content-disposition", "attachment; filename=FileName.xls");
            Response.Charset = "";
            // If you want the option to open the Excel file without saving than
            // comment out the line below
            // Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.xls";
            System.IO.StringWriter stringWrite = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
            GrdView.RenderControl(htmlWrite);
            Response.Write(stringWrite.ToString());
            Response.End();
            
        }
        catch (Exception ex)
        {
            lblResults.Text = "There has been an error exporting to Excel.";
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {


        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        //sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";


        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;



        cmd = new SqlCommand("SELECT * FROM Program", sc);

        sc.Open();

        da = new SqlDataAdapter(cmd);
        ds = new DataSet();

        da.Fill(ds);

        
        string filename = "Program_Report" + "_" + DateTime.Now.Year.ToString() + "_" + DateTime.Now.Month.ToString() + "_" + DateTime.Now.Day.ToString();
         

        ds.WriteXml(@"C:\Users\labpatron\Desktop\" + filename + ".xls");
        sc.Close();
        lblResults.Text = "Your data has exported to Excel.";
    }

}