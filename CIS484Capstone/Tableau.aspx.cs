using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tableau2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lblWelcome.Text = "Welcome, " + Session["USER_ID"].ToString() + "!";

        }
        catch
        {
            Session.RemoveAll();
            Response.Redirect("Default.aspx", false);
        }
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Report.aspx");
    }
}