using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class AnimalPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AnimalAddDiv.Visible = false;
    }

    protected void btnAddAnimal_Click(object sender, EventArgs e)
    {
        AnimalAddDiv.Visible = true;
        ViewAnimals.Visible = true;

    }
    protected void btnEditAnimal_Click(object sender, EventArgs e)
    {
        AnimalAddDiv.Visible = true;
        ViewAnimals.Visible = false;

    }
    //protected void btnViewAnimal_Click(object sender, EventArgs e)
    //{
    //    addAnimal.Visible = false;
    //    ViewAnimals.Visible = true;

    //}



    protected void btnAdd_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";

        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();


        sc.Open();
        insert.Connection = sc;

        String animalType = ddlAnimalType.SelectedItem.Text;
        String animalName = txtAnimalName.Text;
        DateTime lastUpdated = DateTime.Today;
        String lastUpdatedBy = "WildTek";


        Animal newAnimal = new Animal(animalType, animalName);

        insert.CommandText = "Insert into Animal (animalType, animalName, lastUpdated, lastUpdatedBy) values (@animalType, @animalName, @lastUpdated, @lastUpdatedBy)";
        insert.Parameters.AddWithValue("@animalType", newAnimal.getAnimalType());
        insert.Parameters.AddWithValue("@animalName", newAnimal.getAnimalName());
        insert.Parameters.AddWithValue("@lastUpdated", lastUpdated);
        insert.Parameters.AddWithValue("@lastUpdatedBy", lastUpdatedBy);

        insert.ExecuteNonQuery();
        lblLastUpdated.Text = "";
        lblLastUpdatedBy.Text = "";
        txtAnimalName.Text = "";
    }



}