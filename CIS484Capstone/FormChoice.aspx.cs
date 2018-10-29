using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FormChoice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLiveCreate_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewProgramForm.aspx");
    }

    protected void btnOnlineCreate_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewOnlineForm.aspx");
    }
}