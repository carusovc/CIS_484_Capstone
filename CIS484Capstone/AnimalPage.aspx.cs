using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AnimalPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        addAnimal.Visible = false;
    }

    protected void btnAddAnimal_Click(object sender, EventArgs e)
    {
        addAnimal.Visible = true;
        ViewAnimals.Visible = false;

    }
    protected void btnEditAnimal_Click(object sender, EventArgs e)
    {
        addAnimal.Visible = true;
        ViewAnimals.Visible = false;

    }
    protected void btnViewAnimal_Click(object sender, EventArgs e)
    {
        addAnimal.Visible = false;
        ViewAnimals.Visible = true;

    }


}