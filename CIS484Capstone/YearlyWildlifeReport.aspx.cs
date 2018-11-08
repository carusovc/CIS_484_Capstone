using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections;
using System.Text;
using System.Threading.Tasks;

public partial class YearlyWildlifeReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //GridView1.DataBind();
        if (!IsPostBack)
        {

           // PopulateData();

        }
    }
    protected void btnVisualize_Click(object sender, EventArgs e)
    {
        Response.Redirect("TabYearlyReports.aspx");
    }
       
     private void PopulateData()
    {
       
        //gridPrograms.DataBind();

    }
 
    protected void btnExportLive_Click(object sender, EventArgs e)
    {

        //// Export Selected Rows to Excel file Here

       // GridView gvExport = gridPrograms;
                string title = drpYear.SelectedValue.ToString() + " Yearly Live & Online Programs WLC Report ";
            string filename = "Created on: " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=" + title + filename + ".xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.xls";
            StringWriter sw = new StringWriter();
             StringWriter sw2 = new StringWriter();
        HtmlTextWriter htW = new HtmlTextWriter(sw);
        HtmlTextWriter htW2 = new HtmlTextWriter(sw2);

        string headerTable1 = @"<Table> Totals Based on Live Programs <tr><td></td></tr></Table>";
        string headerTable2 = @"<Table> Totals Based on Online Programs <tr><td></td></tr></Table>";
        string headerTable = @"<Table>" + title + " " + filename + "<tr><td></td></tr></Table>";
        string blankline = @"<Table><tr><td></td></tr></Table>";
        Response.Write(headerTable);
        Response.Write(headerTable1);

        gridPrograms.RenderControl(htW);

        gridOnlinePrograms.RenderControl(htW2);

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