using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class NewAnimalForm : System.Web.UI.Page
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
        lblLastUpdated.Text = "Last Updated: " + lastUpdated;
        lblLastUpdatedBy.Text = "Last Updated By: " + lastUpdatedBy;
    }
}