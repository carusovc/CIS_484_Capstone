﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddNewPersonForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";

        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();


        sc.Open();
        insert.Connection = sc;

        String firstName = txtFirstName.Text;
        String lastName = txtLastName.Text;
        String userName = txtUserName.Text;
        DateTime lastUpdated = DateTime.Today;
        String lastUpdatedBy = "WildTek";

        Person newPerson = new Person(firstName, lastName, userName);
        insert.CommandText = "insert into Person (firstName, lastName, userName) values (@firstName, @lastName, @userName)";
        insert.Parameters.AddWithValue("@firstName", newPerson.getFirstName());
        insert.Parameters.AddWithValue("@lastName", newPerson.getLastName());
        insert.Parameters.AddWithValue("@userName", newPerson.getUserName());


        insert.ExecuteNonQuery();
        lblLastUpdated.Text = "Last Updated: " + lastUpdated;
        lblLastUpdatedBy.Text = "Last Updated By: " + lastUpdatedBy;

    }
}