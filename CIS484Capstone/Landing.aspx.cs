using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Landing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lblWelcome.Text = "Welcome, " + Session["USER_ID"].ToString();
        }
        catch
        {
            Response.Redirect("userLogin.aspx");
        }
       
    }

    protected void btncreateUser_Click(object sender, EventArgs e)
    {
        Response.Redirect("createUser.aspx");
    }

    protected void btnmodifyDBinformation(object sender, EventArgs e)
    {
        Response.Redirect("modifyDB.aspx");
    }

    protected void btnviewReports_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewReports.aspx");
    }

    protected void btnfinances_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }
}