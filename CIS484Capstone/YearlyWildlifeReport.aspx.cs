using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class YearlyWildlifeReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnVisualize_Click(object sender, EventArgs e)
    {
        Response.Redirect("TabYearlyReports.aspx");
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReportChoice.aspx");
    }



    private void ExportToExcel(GridView GridView1)
    {

        GridView1.AllowPaging = false;
        //ShowData();
        String animalReport = "Animal Type Report ";
        String filename = "Created on: " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();
        HttpResponse response = HttpContext.Current.Response;
        response.Clear();
        response.Buffer = true;
        response.Charset = "";
        response.ContentType = "application/vnd.xls";
        response.AddHeader("content-disposition", "attachment; filename=\"" + animalReport + filename + "\"" + ".xls");

        using (var sw = new StringWriter())
        {
            using (var htw = new HtmlTextWriter(sw))
            {
                GridView1.RenderControl(htw);
                response.Write(sw.ToString());
                response.End();
            }
        }


        String headerTable = @"<Table><tr><td>" + animalReport + " " + filename + "</td></tr><tr><td><td></tr></Table>";

        Response.Write(headerTable);
        Response.End();
      

    }

    public override void VerifyRenderingInServerForm(Control control)
    {

    }

    protected void btnToExcel_Click1(object sender, EventArgs e)
    {
        ExportToExcel(gridPrograms);

    }
    //protected void btnToExcel_Click2(object sender, EventArgs e)
    //{
    //    ExportToExcel(gridOnlinePrograms);

    //}
}