﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AnimalMonthlyWildlifeReport : System.Web.UI.Page
{
    public string selectedAnimal;
   
    System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            DropDownList1.Items.Add("Bird");
            DropDownList1.Items.Add("Mammal");
            DropDownList1.Items.Add("Reptile");

            ShowData();

        }


    }

    protected void ShowData()
    {
        DataTable dt = new DataTable();

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        SqlCommand cmd = new SqlCommand("SELECT  Animal.AnimalName, SUM(CASE WHEN Program.onoff = 1 THEN 1 ELSE 0 END) AS TotalOnSitePrograms, SUM(CASE WHEN Program.onoff = 0 THEN 1 ELSE 0 END) AS TotalOffSitePrograms, SUM(Program.NumberOfChildren) AS NumberOfChildren, SUM(Program.NumberOfAdults) AS NumberOfAdults, SUM(Program.NumberOfChildren + Program.NumberOfAdults) AS TotalParticipants FROM Animal, Program, ProgramAnimal WHERE(Animal.AnimalType = @AnimalType) AND Animal.AnimalID = ProgramAnimal.AnimalID AND ProgramAnimal.ProgramID = Program.ProgramID GROUP BY Animal.AnimalName, Animal.AnimalType ORDER BY Animal.AnimalName", sc);
        cmd.Parameters.AddWithValue("@AnimalType", DropDownList1.Text.ToString());
        SqlDataAdapter adapt = new SqlDataAdapter(cmd);
        adapt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        sc.Close();
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ShowData();

    }


    protected void btnVisualize_Click(object sender, EventArgs e)
    {
        Response.Redirect("TabAnimalReports.aspx");
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReportChoice.aspx");
    }
}