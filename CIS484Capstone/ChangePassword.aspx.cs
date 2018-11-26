﻿using System;

using System.Collections.Generic;

using System.Configuration;

using System.Data;

using System.Data.SqlClient;

using System.Linq;

using System.Web;

using System.Web.Security;

using System.Web.UI;

using System.Web.UI.WebControls;

using System.Text.RegularExpressions;



public partial class ChangePassword : System.Web.UI.Page

{

    protected void Page_Load(object sender, EventArgs e)

    {

        if (!IsPostBack)

        {

            if (!IsPasswordResetLinkValid())

            {



                lblMessage.ForeColor = System.Drawing.Color.Red;

                lblMessage.Text = "Password Reset link has expired or is invalid";

            }

        }

    }



    protected void btnSave_Click(object sender, EventArgs e)

    {

        if (validatePassword(txtNewPassword.Text.ToString()) == true)

        {





            // COMMIT VALUES

            try

            {

                if (ChangeUserPassword())

                {

                    lblMessage.Text = "Password Changed Successfully!";

                }

                else

                {

                    lblMessage.ForeColor = System.Drawing.Color.Red;

                    lblMessage.Text = "Password Reset link has expired or is invalid";

                }

            }

            catch

            {

                lblMessage.Text = "Invalid password creation.";

            }

        }

    }



    private bool ExecuteSP(string SPName, List<SqlParameter> SPParameters)

    {

        string CS = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))

        {

            SqlCommand cmd = new SqlCommand(SPName, con);

            cmd.CommandType = CommandType.StoredProcedure;









            foreach (SqlParameter parameter in SPParameters)

            {

                cmd.Parameters.Add(parameter);

            }



            con.Open();





            return Convert.ToBoolean(cmd.ExecuteScalar());

        }

    }



    private bool IsPasswordResetLinkValid()

    {

        List<SqlParameter> paramList = new List<SqlParameter>()

    {

        new SqlParameter()

        {

            ParameterName = "@GUID",

           Value = Request.QueryString["uid"]

          // Value = Request.QueryString[personID]

 

        }

    };



        return ExecuteSP("spIsPasswordResetLinkValid", paramList);

    }



    private bool ChangeUserPassword()

    {

        List<SqlParameter> paramList = new List<SqlParameter>()

    {

        new SqlParameter()

        {



            ParameterName = "@GUID",

            Value = Request.QueryString["uid"]

        },

        new SqlParameter()

        {

            ParameterName = "@Password",

            //Value = FormsAuthentication.HashPasswordForStoringInConfigFile(txtNewPassword.Text, "SHA1")

            Value = PasswordHash.HashPassword(txtNewPassword.Text)

        }

    };



        return ExecuteSP("spChangePassword", paramList);

    }

    protected void chkShowPassword_CheckedChanged(object sender, EventArgs e)

    {

        if (chkShowPassword.Checked)

        {

            txtNewPassword.TextMode = TextBoxMode.SingleLine;

            this.txtNewPassword.Text = txtNewPassword.Text;

        }

        else

        {

            txtNewPassword.TextMode = TextBoxMode.Password;

            txtNewPassword.Attributes.Add("value", txtNewPassword.Text);

            this.txtNewPassword.Text = txtNewPassword.Text;

        }





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

            lblMessage.Text = "Invalid password creation. Please try again.";

        }



        return temp;

    }

}