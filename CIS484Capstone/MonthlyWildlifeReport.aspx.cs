using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MonthlyWildlifeReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnVisualize_Click(object sender, EventArgs e)
    {
        Response.Redirect("TabMonthlyReports.aspx");
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReportChoice.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //DataSet ds0 = new DataSet();
        //ds0 = ;
        //DataView dataview_ldata = dsldata.Tables[0].DefaultView;
        //DataTable dt = dsldata.Tables[0];
        //GridView1.DataSource = (DataSet)Session["data"];
        //GridView1.DataBind();
        ExportToExcel(gridPrograms);

    }
    private void ExportToExcel(GridView GrdView)
    {
        try
        {
            Response.Clear();
            Response.AddHeader("content-disposition", "attachment; filename=SQLDataTest.xls");
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
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }



}