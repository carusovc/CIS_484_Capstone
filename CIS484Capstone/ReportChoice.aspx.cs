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


    protected void TabMonthlyReports_Click(object sender, EventArgs e)
    {
           Response.Redirect("MonthlyWildlifeReport.aspx");
   
    }

    protected void TabAnimalReports_Click(object sender, EventArgs e)
    {
        Response.Redirect("AnimalMonthlyWildlifeReport.aspx");
    }

    protected void TabYearlyReports_Click(object sender, EventArgs e)
    {
        Response.Redirect("YearlyWildlifeReport.aspx");
    }
    protected void TabOnlineProgramReports_Click(object sender, EventArgs e)
    {
        Response.Redirect("TabOnlineProgramReports.aspx");
    }
    protected void TabLiveReports_Click(object sender, EventArgs e)
    {
        Response.Redirect("TabLiveReports.aspx");
    }

    protected void TabGradeReport_Click(object sender, EventArgs e)
    {
        Response.Redirect("TabGradeReport.aspx");
    }
}