﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var menu = Page.Master.FindControl("Menu2") as Menu;

        //Menu2.Items.Remove(Menu2.FindItem("CreateUser"));
    }   
}
