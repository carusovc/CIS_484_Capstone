using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReportChoice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void MonthlyReport_Click(object sender, EventArgs e)
    {
        Response.Redirect("MonthlyWildlifeReport.aspx");
    }

    protected void AnimalReport_Click(object sender, EventArgs e)
    {
        Response.Redirect("AnimalMonthlyWildlifeReport.aspx");
    }

    protected void YearlyReport_Click(object sender, EventArgs e)
    {
        Response.Redirect("YearlyWildlifeReport.aspx");
    }
}