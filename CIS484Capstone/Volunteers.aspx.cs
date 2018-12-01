using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Volunteers : System.Web.UI.Page
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