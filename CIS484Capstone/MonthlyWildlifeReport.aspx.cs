using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


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
    protected void btnMonthsToExcel_Click(object sender, EventArgs e)
    {

        //// Export Selected Rows to Excel file Here

        // GridView gvExport = gridOnlineAnimalsTotals;
        string title = DropDownList1.SelectedValue.ToString() + ", " + drpYear.SelectedValue.ToString() + " Monthly Live & Online Programs WLC Report ";
        string filename = "Created on: " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();
        Response.Clear();
        Response.Buffer = true;
        //Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filename + "\"");
        Response.AddHeader("content-disposition", "attachment;filename=\"" + title + filename + ".xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.xls";
        StringWriter sw = new StringWriter();
        StringWriter sw2 = new StringWriter();
       
        HtmlTextWriter htW = new HtmlTextWriter(sw);
        HtmlTextWriter htW2 = new HtmlTextWriter(sw2);


        string headerTable1 = @"<Table>" + DropDownList1.SelectedValue.ToString() + " Totals Based on Live Programs <tr><td></td></tr></Table>";
        string headerTable2 = @"<Table>" + DropDownList1.SelectedValue.ToString() + " Totals Based on  Online Programs <tr><td></td></tr></Table>";
        
        string headerTable = @"<Table>" + title + " " + filename + "<tr><td></td></tr></Table>";
        string blankline = @"<Table><tr><td></td></tr></Table>";
        Response.Write(headerTable);
        Response.Write(headerTable1);
            gridLivePrograms.RenderControl(htW);
        gridOnlineAnimalsTotals.RenderControl(htW2);
        Response.Output.Write(sw.ToString());
        Response.Write(blankline);


        Response.Write(headerTable2);
        
        Response.Output.Write(sw2.ToString());
        Response.End();

    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
    }
 

    



}