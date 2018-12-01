
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class AnimalMonthlyWildlifeReport : System.Web.UI.Page
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
}

