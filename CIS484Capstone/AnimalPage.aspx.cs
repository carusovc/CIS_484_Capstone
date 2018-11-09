using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


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
        ddlAnimal.DataBind();

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
        insert.Parameters.AddWithValue("@status", ddlAnimalStatus.SelectedItem.Text);

        insert.ExecuteNonQuery();
        lblLastUpdated.Text = "Last Updated: " + lastUpdated;
        lblLastUpdatedBy.Text = "Last Updated By: " + lastUpdatedBy;

        txtAnimalName.Text = "";
        gridAnimalMammal.DataBind();
        gridReptile.DataBind();
        gridBird.DataBind();
        ddlAnimal.DataBind();
        GridView1.DataBind();
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

        insert.CommandText = "select AnimalID, AnimalType, AnimalName, LastUpdated, LastUpdatedBy, status from Animal where" +
                          " animalID = @animalID";

        insert.Parameters.AddWithValue("@animalID", ddlAnimal.SelectedItem.Value);

        System.Data.SqlClient.SqlCommand add = new System.Data.SqlClient.SqlCommand();
        add.Connection = sc;
        add.Parameters.Clear();

        add.CommandText = "select AnimalType from Animal where animalID = @animalID";
        add.Parameters.AddWithValue("@animalID", ddlAnimal.SelectedItem.Value);
        //ddlAnimalTypeEdit.SelectionMode = ListSelectionMode.Multiple;
        ddlAnimalTypeEdit.ClearSelection();
        ddlStatus.ClearSelection();

        try
        {
            con.Open();
            SqlDataReader sdr = insert.ExecuteReader();
            while (sdr.Read())
            {
                //ddlAnimalTypeEdit.SelectedItem.Text = sdr[1].ToString();
                for (int i = 0; i < ddlAnimalTypeEdit.Items.Count; i++)
                {

                    if (ddlAnimalTypeEdit.Items[i].ToString() == sdr[1].ToString())
                    {
                        ddlAnimalTypeEdit.Items[i].Selected = true;
                    }
                }

                //if (sdr[1].ToString() == "Bird")
                //{
                //    string bird = "Bird";
                //    ddlAnimalTypeEdit.Items.FindByText(bird).Selected = true;
                //}
                //else if (sdr[1].ToString() == "Mammal")
                //{
                //    string mammal = "Mammal";
                //    ddlAnimalTypeEdit.Items.FindByText(mammal).Selected = true;
                //}
                //else if (sdr[1].ToString() == "Reptile")
                //{
                //    string reptile = "Reptile";
                //    ddlAnimalTypeEdit.Items.FindByText(reptile).Selected = true;
                //}
                //else
                //{
                //    string animalSelection = "--Animal Type--";
                //    ddlAnimalTypeEdit.Items.FindByText(animalSelection).Selected = true;
                //}

                txtBoxAnimalName.Text = sdr[2].ToString();
                //ddlStatus.SelectedItem.Text = sdr[5].ToString();

                for (int i = 0; i<ddlStatus.Items.Count; i++)
                {
                    if(ddlStatus.Items[i].ToString() == sdr[5].ToString())
                    {
                        ddlStatus.Items[i].Selected = true;
                    }
                }
                //ddlAnimalTypeEdit.Sele = sdr[1].ToString();

                //lblLastUpdated.Text = sdr["LastUpdated"].ToString();
                //lblLastUpdatedBy.Text = sdr["LastUpdatedBy"].ToString();

            }
            SqlDataReader sdr1 = add.ExecuteReader();
            //while (sdr1.Read())
            //{
            //    for (int i = 0; i < ddlAnimalTypeEdit.Items.Count; i++)
            //    {
                    
            //        if (ddlAnimalTypeEdit.Items[i].ToString() == sdr1.GetString(0))
            //        {
            //            ddlAnimalTypeEdit.Items[i].Selected = true;
            //            break;
            //        }
            //        else
            //        {
            //            continue;
            //        }
            //    }
            //}
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

        update.CommandText = "update animal set animalType = @animalType, animalName = @animalName, lastUpdated = @lastUpdated, lastUpdatedBy = @lastUpdatedBy, status = @status where animalID = @animalID";
        update.Parameters.AddWithValue("@animalType", ddlAnimalTypeEdit.SelectedItem.Text);
        update.Parameters.AddWithValue("@animalName", txtBoxAnimalName.Text);
        update.Parameters.AddWithValue("@animalID", ddlAnimal.SelectedItem.Value);
        update.Parameters.AddWithValue("@lastUpdated", DateTime.Today);
        update.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers");
        update.Parameters.AddWithValue("@status", ddlStatus.SelectedItem.Text);
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
        GridView1.DataBind();
        GridView2.DataBind();
        GridView3.DataBind();
        txtBoxAnimalName.Text = "";




    }
    //protected void btnDelete_Click(object sender, EventArgs e)
    //{
    //    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
    //    // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
    //    String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
    //    sc.ConnectionString = cs;
    //    sc.Open();
    //    System.Data.SqlClient.SqlCommand delete = new System.Data.SqlClient.SqlCommand();
    //    delete.Connection = sc;
    //    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);
    //    //call read array
    //    SqlConnection con = new SqlConnection(cs);
    //    delete.CommandText = "Delete from Animal where AnimalID = @AnimalID";
    //    delete.Parameters.AddWithValue("@AnimalID", ddlAnimal.SelectedItem.Value);
    //    delete.ExecuteNonQuery();
    //    ddlAnimal.Items.Clear();
    //    //call read array
    //    con.Open();
    //    if (con.State == System.Data.ConnectionState.Open)
    //    {
    //        string read = "Select * from Animal";
    //        SqlCommand cmd = new SqlCommand(read, con);
    //        SqlDataReader myRead = cmd.ExecuteReader();
    //        while (myRead.Read())
    //        {
    //            ddlAnimal.Items.Add(new ListItem(myRead["AnimalName"].ToString(), myRead["AnimalID"].ToString()));
    //        }
    //        // ddlAnimal.DataBind();
    //    }
    //    txtAnimalName.Text = "";
    //    gridAnimalMammal.DataBind();
    //    gridReptile.DataBind();
    //    gridBird.DataBind();

    //}

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        gridSearch.DataBind();
        //gridAnimalMammal.Visible = false;
        //gridBird.Visible = false;
        //gridReptile.Visible = false;
        gridSearch.Visible = true;


        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand search = new System.Data.SqlClient.SqlCommand();
        search.Connection = sc;
        SqlConnection con = new SqlConnection(cs);
        //string searchAnimal = txtSearch.Text;

        //DataTable dt = new DataTable();
        //SqlDataAdapter adapt = new SqlDataAdapter("Select AnimalType, AnimalName, Status from Animal where UPPER(AnimalName) like UPPER('" + searchAnimal + "%') or UPPER(AnimalType) like UPPER('"+ searchAnimal+"%') or UPPER(status) like UPPER('"+ searchAnimal+"%')", con);

        //adapt.Fill(dt);
        //
        //gridSearch.DataSource = dt;
       // gridSearch.DataBind();
    }
}


