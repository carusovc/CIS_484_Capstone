using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
// Updated Last 10.22.19 at 4:35 pm
public partial class AdminPages_AdminLogin : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // connect to database to retrieve stored password string
        try
        {

            //AWS connection
            //SqlConnection cn = new SqlConnection();
            //cn.ConnectionString = "Data Source=wildlifecenteraws.cpe6s6lt7jmj.us-east-1.rds.amazonaws.com;Initial Catalog=WildTech;Persist Security Info=True;User ID=Master;Password=Wildlife";


            //localhost connection
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server=LOCALHOST;Database=WildTech;Trusted_Connection=Yes;";
            lblStatus.Text = "Database Connection Successful";

            //cn.Open();
            sc.Open();
            System.Data.SqlClient.SqlCommand findPass = new System.Data.SqlClient.SqlCommand();
            findPass.Connection = sc;
           // findPass.Connection = cn;
            // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
            findPass.CommandText = "select PasswordHash from Pass where Username = @Username";
            findPass.Parameters.Add(new SqlParameter("@Username", txtUsername.Text));

            SqlDataReader reader = findPass.ExecuteReader(); // create a reader

            if (reader.HasRows) // if the username exists, it will continue
            {
                while (reader.Read()) // this will read the single record that matches the entered username
                {
                    string storedHash = reader["PasswordHash"].ToString(); // store the database password into this variable

                    if (PasswordHash.ValidatePassword(txtPassword.Text, storedHash)) // if the entered password matches what is stored, it will show success
                    {
                        lblStatus.Text = "Success!";
                        btnLogin.Enabled = false;
                        txtUsername.Enabled = false;
                        txtPassword.Enabled = false;
                        Response.Redirect("~/Landing.aspx", false);

                        Session["USER_ID"] = txtUsername.Text;
                    }
                    else
                        lblStatus.Text = "Password is wrong.";
                }
            }
            else // if the username doesn't exist, it will show failure
                lblStatus.Text = "Incorrect Username or Password. Please Try again.";



            //cn.Close();
            sc.Close();
        }
        catch
        {
            lblStatus.Text = "Database Error.";
        }
    }

    protected void lnkCreate_Click(object sender, EventArgs e)
    {
        Response.Redirect("createUser.aspx", false);
    }

    //Method to show password on checkbox clicked
    protected void chkShowPassword_CheckedChanged(object sender, EventArgs e)
    {
        if (chkShowPassword.Checked)
        {
            txtPassword.TextMode = TextBoxMode.SingleLine;
            this.txtPassword.Text = txtPassword.Text;
        }
        else
        {
            txtPassword.TextMode = TextBoxMode.Password;
            txtPassword.Attributes.Add("value", txtPassword.Text);
            this.txtPassword.Text = txtPassword.Text;
        }

    }

    protected void btnCreateNewUser_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("AdminPages/createUser.aspx", false);
    }
}
