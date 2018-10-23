using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Configuration;
using System.Data;

public partial class createUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        if (txtFirstName.Text != "" && txtLastName.Text != "" && txtPassword.Text != "" && txtUsername.Text != "") // all fields must be filled out
        {
            if (validatePassword(txtPassword.Text.ToString()) == true)
            {


                // COMMIT VALUES
                try
                {
                    //AWS connection
                    //SqlConnection cn = new SqlConnection();
                    //cn.ConnectionString = "Data Source=wildlifecenteraws.cpe6s6lt7jmj.us-east-1.rds.amazonaws.com;Initial Catalog=WildTek;Persist Security Info=True;User ID=Master;Password=Wildlife";

                    //local host connection
                    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
                    sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;"; // connect to WildTek database
                    lblStatus.Text = "Database Connection Successful";

                    //cn.Open();
                   
                    sc.Open();

                    bool exists = false;

                    // create a command to check if the username exists
                    SqlCommand cmd = new SqlCommand("select Count(*) from [dbo].[Person] where Username = @UserName", sc);

                    cmd.Parameters.AddWithValue("@UserName", txtUsername.Text);

                    exists = (int)cmd.ExecuteScalar() > 0;
                    // exists = Convert.ToBoolean(cmd.ExecuteScalar());



                    // if exists, show a message error
                    if (!exists)
                    {
                        System.Data.SqlClient.SqlCommand createUser = new System.Data.SqlClient.SqlCommand();
                        createUser.Connection = sc;
                        //createUser.Connection = cn;
                        // INSERT USER RECORD
                        createUser.CommandText = "insert into[dbo].[Person] values(@FName, @LName, @Username)";
                        createUser.Parameters.Add(new SqlParameter("@FName", txtFirstName.Text));
                        createUser.Parameters.Add(new SqlParameter("@LName", txtLastName.Text));
                        createUser.Parameters.Add(new SqlParameter("@Username", txtUsername.Text));
                        createUser.ExecuteNonQuery();

                        System.Data.SqlClient.SqlCommand setPass = new System.Data.SqlClient.SqlCommand();
                        setPass.Connection = sc;
                        //setPass.Connection = cn;
                        // INSERT PASSWORD RECORD AND CONNECT TO USER
                        setPass.CommandText = "insert into[dbo].[Pass] values((select max(userid) from person), @Username, @Password)";
                        setPass.Parameters.Add(new SqlParameter("@Username", txtUsername.Text));
                        setPass.Parameters.Add(new SqlParameter("@Password", PasswordHash.HashPassword(txtPassword.Text))); // hash entered password
                        setPass.ExecuteNonQuery();


                        sc.Close();
                        //cn.Close();

                        lblStatus.Text = "User committed!";
                        txtFirstName.Enabled = false;
                        txtLastName.Enabled = false;
                        txtUsername.Enabled = false;
                        txtPassword.Enabled = false;
                        btnSubmit.Enabled = false;
                        chkShowPassword.Visible = false;
                    }
                    else
                    {
                        lblStatus.Text = "This username " + txtUsername.Text + " has been created already.";
                    }

                }

                catch (SqlException)
                {
                    lblStatus.Text = "fix error.";
                }
                catch
                {
                    lblStatus.Text = "Database Error - User not committed.";
                }
            }
        }
        else
            lblStatus.Text = "Fill in a value for all fields.";
    }

    protected void lnkLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Landing.aspx", false);
    }

    protected void lnkAnother_Click(object sender, EventArgs e)
    {
        txtFirstName.Enabled = true;
        txtLastName.Enabled = true;
        txtUsername.Enabled = true;
        txtPassword.Enabled = true;
        btnSubmit.Enabled = true;
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtUsername.Text = "";
        txtPassword.Text = "";
        chkShowPassword.Visible = true;
    }

    private bool validatePassword(string password)
    {
        bool temp;

        // Regular expression to validate password
        string regPassword = @"^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$";
        // Creates an instance of Regex class
        Regex r = new Regex(regPassword);

        // Checks if given password is valid and return value
        if (r.IsMatch(password))
        {
            temp = true;
        }
        else
        {
            temp = false;
            lblStatus.Text = "Invalid password or username. Please try again.";
        }

        return temp;
    }

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

    public static bool CheckUserName(string username)
    {
        bool status = false;
        string constr = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("CheckUserAvailability", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", username.Trim());
                conn.Open();
                status = Convert.ToBoolean(cmd.ExecuteScalar());
                conn.Close();
            }
        }
        return status;
    }
}