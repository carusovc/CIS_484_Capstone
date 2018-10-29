using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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
}