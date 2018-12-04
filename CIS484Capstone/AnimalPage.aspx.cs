using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.IO;



public partial class AnimalPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#EditAnimalModal').modal('show');});</script>", false);

        AnimalAddDiv.Visible = true;
        AnimalEditDiv.Visible = true;
        AnimalSearchDiv.Visible = false;


        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;

        try
        {
            SqlConnection con = new SqlConnection(cs);

            con.Open();

            //string str = "select * from Person where username= @username";
            System.Data.SqlClient.SqlCommand str = new System.Data.SqlClient.SqlCommand();
            str.Connection = sc;
            str.Parameters.Clear();

            str.CommandText = "select * from Person where username= @username";
            str.Parameters.AddWithValue("@username", Session["USER_ID"]);
            str.ExecuteNonQuery();

            //SqlCommand com = new SqlCommand(str, con);

            SqlDataAdapter da = new SqlDataAdapter(str);

            DataSet ds = new DataSet();

            da.Fill(ds);

            lblWelcome.Text = "Welcome, " + HttpUtility.HtmlEncode(ds.Tables[0].Rows[0]["Firstname"].ToString()) + " ";


        }
        catch
        {
            Session.RemoveAll();
            Response.Redirect("Default.aspx", false);
        }



        if (!IsPostBack)
        {
            

            //call read array
            SqlConnection conAnimal = new SqlConnection(cs);
            conAnimal.Open();
            if (conAnimal.State == System.Data.ConnectionState.Open)
            {
                string read = "Select * from Animal Order By AnimalName";

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
    protected void btn_lgout_Click(object sender, EventArgs e)
    {


        //Session.Clear();
        //Session.Abandon();
        Session.RemoveAll();

        Session["USER_ID"] = null;

        Response.Redirect("Default.aspx");
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
        System.Data.SqlClient.SqlCommand retrieveImage = new System.Data.SqlClient.SqlCommand();

        sc.Open();
        insert.Connection = sc;
        retrieveImage.Connection = sc;

        String animalType = HttpUtility.HtmlEncode(ddlAnimalType.SelectedItem.Text);
        String animalName = HttpUtility.HtmlEncode(txtAnimalName.Text);
        DateTime lastUpdated = DateTime.Today;
        String lastUpdatedBy = HttpUtility.HtmlEncode(Session["USER_ID"].ToString());


        Animal newAnimal = new Animal(animalType, animalName);
        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        using (Stream fs = FileUpload1.PostedFile.InputStream)
        {
            using (BinaryReader br = new BinaryReader(fs))
            {
                byte[] bytes = br.ReadBytes((Int32)fs.Length);

                insert.CommandText = "Insert into Animal (animalType, animalName, lastUpdated, lastUpdatedBy, status, AnimalImage) values (@animalType, @animalName, @lastUpdated, @lastUpdatedBy, @status, @animalImage)";
                insert.Parameters.AddWithValue("@animalType", newAnimal.getAnimalType());
                insert.Parameters.AddWithValue("@animalName", newAnimal.getAnimalName());
                insert.Parameters.AddWithValue("@lastUpdated", lastUpdated);
                insert.Parameters.AddWithValue("@lastUpdatedBy", lastUpdatedBy);
                insert.Parameters.AddWithValue("@status", ddlAnimalStatus.SelectedItem.Text);
                insert.Parameters.AddWithValue("@animalImage", bytes);

                insert.ExecuteNonQuery();

            }
        }

        lblLastUpdated.Text = "Last Updated: " + HttpUtility.HtmlEncode(lastUpdated);
        lblLastUpdatedBy.Text = "Last Updated By: " + HttpUtility.HtmlEncode(lastUpdatedBy);


        //retrieveImage.CommandText = "Select AnimalImage from Animal where animalID = @animalID";
        //retrieveImage.Parameters.AddWithValue("@animalID", ddlAnimal.SelectedItem.Value);

        //byte[] image = (byte[])retrieveImage.ExecuteScalar();
        //System.Drawing.Image newImage = ByteArrayToImage(image);




        //animalImage.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(image);




        txtAnimalName.Text = HttpUtility.HtmlEncode("");
        gridAnimalMammal.DataBind();
        gridReptile.DataBind();
        gridBird.DataBind();
        ddlAnimal.DataBind();
        GridView1.DataBind();
    }

    public System.Drawing.Image ByteArrayToImage(byte[] byteArrayIn)
    {
        using (var ms = new MemoryStream(byteArrayIn))
        {
            return System.Drawing.Image.FromStream(ms);
        }
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

                for (int i = 0; i < ddlAnimalTypeEdit.Items.Count; i++)
                {

                    if (ddlAnimalTypeEdit.Items[i].ToString() == sdr[1].ToString())
                    {
                        ddlAnimalTypeEdit.Items[i].Selected = true;
                    }
                }


                txtBoxAnimalName.Text = HttpUtility.HtmlEncode(sdr[2].ToString());

                for (int i = 0; i < ddlStatus.Items.Count; i++)
                {
                    if (ddlStatus.Items[i].ToString() == sdr[5].ToString())
                    {
                        ddlStatus.Items[i].Selected = true;
                    }
                }


            }

        }
        catch (Exception ex)
        {
            throw ex;
        }

        //UpdatePanel2.Update();
    }

    protected void btnUpdate1_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand update = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand imageInsert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand();
        imageInsert.Connection = sc;
        select.Connection = sc;

        update.Connection = sc;

        SqlConnection con = new SqlConnection(cs);

        update.CommandText = "update animal set animalType = @animalType, animalName = @animalName, lastUpdated = @lastUpdated, lastUpdatedBy = @lastUpdatedBy, status = @status where animalID = @animalID";
        update.Parameters.AddWithValue("@animalType", ddlAnimalTypeEdit.SelectedItem.Text);
        update.Parameters.AddWithValue("@animalName", txtBoxAnimalName.Text);
        update.Parameters.AddWithValue("@animalID", ddlAnimal.SelectedItem.Value);
        update.Parameters.AddWithValue("@lastUpdated", DateTime.Today);
        update.Parameters.AddWithValue("@lastUpdatedBy", HttpUtility.HtmlEncode(Session["USER_ID"].ToString()));
        update.Parameters.AddWithValue("@status", ddlStatus.SelectedItem.Text);
        update.ExecuteNonQuery();

        //select.CommandText = "select animalImage from Animal where AnimalID = @animalID";
        //select.Parameters.AddWithValue("@animalID", ddlAnimal.SelectedItem.Value);
        //SqlDataReader sdr = select.ExecuteReader();
        //if (sdr[0].ToString() == null)
        //{

        //    string filename = Path.GetFileName(FileUpload2.PostedFile.FileName);
        //    using (Stream fs = FileUpload2.PostedFile.InputStream)
        //    {
        //        using (BinaryReader br = new BinaryReader(fs))
        //        {
        //            byte[] bytes = br.ReadBytes((Int32)fs.Length);
        //            imageInsert.CommandText = "update Animal set animalImage = @animalImage where animalID = @animalID";
        //            imageInsert.Parameters.AddWithValue("@animalImage", bytes);
        //            imageInsert.Parameters.AddWithValue("@animalID", ddlAnimal.SelectedItem.Value);
        //            imageInsert.ExecuteNonQuery();
        //        }
        //    }

        //}

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        SqlConnection con2 = new SqlConnection(cs);

        ddlAnimal.Items.Clear();
        //call read array
        con.Open();
        if (con.State == System.Data.ConnectionState.Open)
        {

            string read = "Select * from Animal Order by AnimalName";
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
        txtBoxAnimalName.Text = HttpUtility.HtmlEncode("");




    }

    protected void gridBird_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            System.Web.UI.HtmlControls.HtmlImage imageControl = (System.Web.UI.HtmlControls.HtmlImage)e.Row.FindControl("imageControl");
            if (((DataRowView)e.Row.DataItem)["AnimalImage"] != DBNull.Value)
            {
                imageControl.Src = "data:image/png;base64," + Convert.ToBase64String((byte[])(((DataRowView)e.Row.DataItem))["AnimalImage"]);
                imageControl.Width = 75;

            }
        }
    }

    protected void gridMammal_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            System.Web.UI.HtmlControls.HtmlImage imageControl = (System.Web.UI.HtmlControls.HtmlImage)e.Row.FindControl("imageControl");
            if (((DataRowView)e.Row.DataItem)["AnimalImage"] != DBNull.Value)
            {
                imageControl.Src = "data:image/png;base64," + Convert.ToBase64String((byte[])(((DataRowView)e.Row.DataItem))["AnimalImage"]);
                imageControl.Width = 75;
            }
        }
    }

    protected void gridReptile_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            System.Web.UI.HtmlControls.HtmlImage imageControl = (System.Web.UI.HtmlControls.HtmlImage)e.Row.FindControl("imageControl");
            if (((DataRowView)e.Row.DataItem)["AnimalImage"] != DBNull.Value)
            {
                imageControl.Src = "data:image/png;base64," + Convert.ToBase64String((byte[])(((DataRowView)e.Row.DataItem))["AnimalImage"]);
                imageControl.Width = 100;
            }
        }
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
        AnimalSearchDiv.Visible = true;
        gridSearch.DataBind();
        //gridAnimalMammal.Visible = false;
        //gridBird.Visible = false;
        //gridReptile.Visible = false;
        //gridSearch.Visible = true;



        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand search = new System.Data.SqlClient.SqlCommand();
        search.Connection = sc;
        SqlConnection con = new SqlConnection(cs);
        string searchAnimal = HttpUtility.HtmlEncode(txtSearch.Text);

        DataTable dt = new DataTable();
        SqlDataAdapter adapt = new SqlDataAdapter("Select AnimalType, AnimalName, Status from Animal where UPPER(AnimalName) like UPPER('" + searchAnimal + "%') or UPPER(AnimalType) like UPPER('" + searchAnimal + "%') or UPPER(status) like UPPER('" + searchAnimal + "%')", con);

        adapt.Fill(dt);

        gridSearch.DataSource = dt;
        gridSearch.DataBind();
    }

  
}