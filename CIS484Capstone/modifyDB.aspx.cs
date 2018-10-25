using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class modifyDB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void ModifyAnimal_Click(object sender, EventArgs e)
    {
        Response.Redirect("ModifyAnimal.aspx");
    }

    protected void ModifyEducator_Click(object sender, EventArgs e)
    {
        Response.Redirect("ModifyWildlifeEducators.aspx");
    }

    protected void ModifyPrograms_Click(object sender, EventArgs e)
    {
        Response.Redirect("ModifyPrograms.aspx");
    }

}