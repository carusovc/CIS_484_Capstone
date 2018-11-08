using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class AnimalPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#EditAnimalModal').modal('show');});</script>", false);

        AnimalAddDiv.Visible = true;
        AnimalEditDiv.Visible = true;

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;


        


        if (!IsPostBack)
        {
           
            //call read array
            SqlConnection conAnimal = new SqlConnection(cs);
            conAnimal.Open();
            if (conAnimal.State == System.Data.ConnectionState.Open)
            {
                string read = "Select * from Animal";
                SqlCommand cmd = new SqlCommand(read, conAnimal);
                SqlDataReader myRead = cmd.ExecuteReader();

                while (myRead.Read())
                {
                    ddlAnimal.Items.Add(new ListItem(myRead["AnimalName"].ToString(), myRead["AnimalID"].ToString()));
                }
                // ddlAnimal.DataBind();
            }
        }

    }

    protected void btnAddAnimal_Click(object sender, EventArgs e)
    {
        AnimalAddDiv.Visible = true;
        ViewAnimals.Visible = true;
        

    }
    protected void btnEditAnimal_Click(object sender, EventArgs e)
    {
        AnimalEditDiv.Visible = true;

        ViewAnimals.Visible = false;


        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;



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

        insert.CommandText = "Insert into Animal (animalType, animalName, lastUpdated, lastUpdatedBy, status) values (@animalType, @animalName, @lastUpdated, @lastUpdatedBy, @status)";
        insert.Parameters.AddWithValue("@animalType", newAnimal.getAnimalType());
        insert.Parameters.AddWithValue("@animalName", newAnimal.getAnimalName());
        insert.Parameters.AddWithValue("@lastUpdated", lastUpdated);
        insert.Parameters.AddWithValue("@lastUpdatedBy", lastUpdatedBy);
        insert.Parameters.AddWithValue("@status", ddlStatus.SelectedItem.Text);

        insert.ExecuteNonQuery();
        lblLastUpdated.Text = "Last Updated: " + lastUpdated;
        lblLastUpdatedBy.Text = "Last Updated By: " + lastUpdatedBy;

        txtAnimalName.Text = "";
        gridAnimalMammal.DataBind();
        gridReptile.DataBind();
        gridBird.DataBind();
    }

    protected void ddlAnimal_SelectedIndexChanged1(object sender, EventArgs e)
    {

        AnimalEditDiv.Visible = true;
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        insert.Parameters.Clear();

        //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#EditAnimalModal').modal('show');});</script>", true);


        //call read array
        SqlConnection con = new SqlConnection(cs);

        insert.CommandText = "select AnimalID, AnimalType, AnimalName, LastUpdated, LastUpdatedBy from Animal where" +
                          " animalID = @animalID";

        insert.Parameters.AddWithValue("@animalID", ddlAnimal.SelectedItem.Value);

        try
        {
            con.Open();
            SqlDataReader sdr = insert.ExecuteReader();
            while (sdr.Read())
            {
                //ddlAnimalType.SelectedItem.Text = sdr[1].ToString();
                ddlAnimalTypeEdit.SelectedItem.Text = sdr[1].ToString();
                txtBoxAnimalName.Text = sdr[2].ToString();
                //lblLastUpdated.Text = sdr["LastUpdated"].ToString();
                //lblLastUpdatedBy.Text = sdr["LastUpdatedBy"].ToString();

            }
        }
        catch (Exception ex)
        {
            throw ex;
        }

        //UpdatePanel2.Update();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand update = new System.Data.SqlClient.SqlCommand();
        update.Connection = sc;
        SqlConnection con = new SqlConnection(cs);

        update.CommandText = "update animal set animalType = @animalType, animalName = @animalName, lastUpdated = @lastUpdated, lastUpdatedBy = @lastUpdatedBy where animalID = @animalID";
        update.Parameters.AddWithValue("@animalType", ddlAnimalTypeEdit.SelectedItem.Text);
        update.Parameters.AddWithValue("@animalName", txtBoxAnimalName.Text);
        update.Parameters.AddWithValue("@animalID", ddlAnimal.SelectedItem.Value);
        update.Parameters.AddWithValue("@lastUpdated", DateTime.Today);
        update.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers");
        update.ExecuteNonQuery();


        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        SqlConnection con2 = new SqlConnection(cs);

        ddlAnimal.Items.Clear();
        //call read array
        con.Open();
        if (con.State == System.Data.ConnectionState.Open)
        {

            string read = "Select * from Animal";
            SqlCommand cmd = new SqlCommand(read, con);
            SqlDataReader myRead = cmd.ExecuteReader();

            while (myRead.Read())
            {

                ddlAnimal.Items.Add(new ListItem(myRead["AnimalName"].ToString(), myRead["AnimalID"].ToString()));
            }
            // ddlAnimal.DataBind();

        }
        gridAnimalMammal.DataBind();
        gridReptile.DataBind();
        gridBird.DataBind();

        txtBoxAnimalName.Text = "";




    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();
        System.Data.SqlClient.SqlCommand delete = new System.Data.SqlClient.SqlCommand();
        delete.Connection = sc;
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);
        //call read array
        SqlConnection con = new SqlConnection(cs);
        delete.CommandText = "Delete from Animal where AnimalID = @AnimalID";
        delete.Parameters.AddWithValue("@AnimalID", ddlAnimal.SelectedItem.Value);
        delete.ExecuteNonQuery();
        ddlAnimal.Items.Clear();
        //call read array
        con.Open();
        if (con.State == System.Data.ConnectionState.Open)
        {
            string read = "Select * from Animal";
            SqlCommand cmd = new SqlCommand(read, con);
            SqlDataReader myRead = cmd.ExecuteReader();
            while (myRead.Read())
            {
                ddlAnimal.Items.Add(new ListItem(myRead["AnimalName"].ToString(), myRead["AnimalID"].ToString()));
            }
            // ddlAnimal.DataBind();
        }
        txtAnimalName.Text = "";
        gridAnimalMammal.DataBind();
        gridReptile.DataBind();
        gridBird.DataBind();

    }
}


