using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections;
using System.Text;
using System.Threading.Tasks;



public partial class Invoices : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //try
        //{
        //    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        //    //sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        //    String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        //    sc.ConnectionString = cs;
        //    sc.Open();
        //    // lblWelcome.Text = "Welcome, " + Session["USER_ID"].ToString() + "!";

        //    SqlConnection con = new SqlConnection(cs);

        //    con.Open();

        //    //string str = "select * from Person where username= @username";
        //    System.Data.SqlClient.SqlCommand str = new System.Data.SqlClient.SqlCommand();
        //    str.Connection = sc;
        //    str.Parameters.Clear();

            str.CommandText = "select * from Person where username= @username";
            str.Parameters.AddWithValue("@username", HttpUtility.HtmlEncode(Session["USER_ID"]));
            str.ExecuteNonQuery();


        //    //SqlCommand com = new SqlCommand(str, con);

        //    SqlDataAdapter da = new SqlDataAdapter(str);

        //    DataSet ds = new DataSet();

        //    da.Fill(ds);

            lblWelcome.Text = "Welcome, " + HttpUtility.HtmlEncode(ds.Tables[0].Rows[0]["Firstname"].ToString()) + " ";



        //}
        //catch
        //{
        //    Session.RemoveAll();
        //    Response.Redirect("Default.aspx", false);
        //}

    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
    }
    protected void btn_lgout_Click(object sender, EventArgs e)
    {


        //Session.Clear();
        //Session.Abandon();
        Session.RemoveAll();

        Session["USER_ID"] = null;

        Response.Redirect("Default.aspx");
    }

    protected void exportBtnCancelled(object sender, EventArgs e)
    {
        // Export Selected Rows to Excel file Here

        // need to check is any row selected 
        bool isSelected = false;


        foreach (GridViewRow i in CancelledPaymentGrid.Rows)
        {
            CheckBox cb = (CheckBox)i.FindControl("chkSelect");
            if (cb != null && cb.Checked)
            {
                isSelected = true;

                //break;
            }
            else
            {
                string script = "alert('Please select invoices you would like to export.');";
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(btnExportCancelled, this.GetType(), "Test", script, true);
            }
        }

        // export here
        if (isSelected)
        {
            GridView gvExport = CancelledPaymentGrid;
            // this below line for not export checkbox to excel file
            gvExport.Columns[0].Visible = false;
            foreach (GridViewRow i in CancelledPaymentGrid.Rows)
            {
                gvExport.Rows[i.RowIndex].Visible = false;
                CheckBox cb = (CheckBox)i.FindControl("chkSelect");
                if (cb != null && cb.Checked)
                {

                    gvExport.Rows[i.RowIndex].Visible = true;

                }
            }
            string invoiceyear = drpMonth2.SelectedValue.ToString() + ", " + drpYear2.SelectedValue.ToString() + " Cancelled Invoices ";
            string filename = "Created on: " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();
            Response.Clear();
            Response.Buffer = true;
            //Response.AddHeader("content-disposition", "attachment;filename=\"" + invoiceyear + filename + "\"");
            Response.AddHeader("content-disposition", "attachment;filename=\"" + invoiceyear + filename + ".xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htW = new HtmlTextWriter(sw);


            gvExport.RenderControl(htW);
            // string filename2 = /*drpOrg.SelectedValue.ToString() +*/ " Invoice - " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();

            string headerTable = @"<Table>" + invoiceyear + " " + filename + "</td></tr><tr><td></td></tr></Table>";

            Response.Write(headerTable);
            Response.Output.Write(sw.ToString());
            Response.End();


        }

    }

    protected void exportBtnYearly_Click(object sender, EventArgs e)
    {

        // Export Selected Rows to Excel file Here

        // need to check is any row selected 
        bool isSelected = false;
        foreach (GridViewRow i in YearlyInvoiceGrid.Rows)
        {
            CheckBox cb = (CheckBox)i.FindControl("chkSelect");

            if (cb != null && cb.Checked)
            {
                isSelected = true;
                //lblResponse.Text = "Your export has been successful";
                //break;
            }
            else
            {
                string script = "alert('Please select invoices you would like to export.');";
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(btnyearly, this.GetType(), "Test", script, true);
            }

        }

        // export here
        if (isSelected)
        {
            GridView gvExport = YearlyInvoiceGrid;


            // this below line for not export checkbox to excel file
            gvExport.Columns[0].Visible = false;

            foreach (GridViewRow i in YearlyInvoiceGrid.Rows)
            {

                gvExport.Rows[i.RowIndex].Visible = false;

                CheckBox cb = (CheckBox)i.FindControl("chkSelect");

                if (cb != null && cb.Checked)
                {
                    gvExport.Rows[i.RowIndex].Visible = true;

                }

            }
            string invoiceyear = drpYear3.SelectedValue.ToString() + " Yearly Invoices ";
            string filename = "Created on: " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();
            Response.Clear();
            Response.Buffer = true;
            //Response.AddHeader("content-disposition", "attachment;filename=\"" + invoiceyear + filename + "\"");

            Response.AddHeader("content-disposition", "attachment;filename=" + invoiceyear + filename + ".xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htW = new HtmlTextWriter(sw);




            gvExport.RenderControl(htW);
            // string filename2 = /*drpOrg.SelectedValue.ToString() +*/ " Invoice - " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();


            string headerTable = @"<Table><tr><td>" + invoiceyear + " " + filename + "</td></tr><tr><td></td></tr></Table>";

            Response.Write(headerTable);
            Response.Output.Write(sw.ToString());


            Response.End();

        }
    }



    private decimal TotalNotCancelled = (decimal)0.0;
    private decimal TotalCancelled = (decimal)0.0;
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {


        // check row type
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // if row type is DataRow, add ProductSales value to TotalSales
            TotalNotCancelled += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "PaymentAmount"));
            DataRowView drv = e.Row.DataItem as DataRowView;
            if (drv["Paid"].ToString().Equals("N"))
            {
                e.Row.CssClass = "alert alert-danger";
            }
            else if (drv["Paid"].ToString().Equals("Y"))
            {
                e.Row.CssClass = "alert alert-success";
            }
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
            // If row type is footer, show calculated total value
            // Since this example uses sales in dollars, I formatted output as currency
            e.Row.Cells[2].Text = String.Format("{0:c}", HttpUtility.HtmlEncode(TotalNotCancelled));

    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        // check row type
        if (e.Row.RowType == DataControlRowType.DataRow)
            // if row type is DataRow, add ProductSales value to TotalSales
            TotalCancelled += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "PaymentAmount"));
        else if (e.Row.RowType == DataControlRowType.Footer)
            // If row type is footer, show calculated total value
            // Since this example uses sales in dollars, I formatted output as currency
            e.Row.Cells[2].Text = String.Format("{0:c}", HttpUtility.HtmlEncode(TotalCancelled));





    }
    protected void YearlyInvoiceGrid_RowDataBound(object sender, GridViewRowEventArgs e)
    {


        // check row type
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // if row type is DataRow, add ProductSales value to TotalSales
            // TotalNotCancelled += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "PaymentAmount"));
            DataRowView drv = e.Row.DataItem as DataRowView;
            if (drv["Paid"].ToString().Equals("N"))
            {
                e.Row.CssClass = "alert alert-danger";
            }

            else if (drv["Paid"].ToString().Equals("Y"))
            {
                e.Row.CssClass = "alert alert-success";
            }
        }
        //else if (e.Row.RowType == DataControlRowType.Footer)
        // If row type is footer, show calculated total value
        // Since this example uses sales in dollars, I formatted output as currency
        // e.Row.Cells[2].Text = String.Format("{0:c}", TotalNotCancelled);

    }
    //protected void exportBtnYearly_Click(object sender, EventArgs e)
    //{

    //    // Export Selected Rows to Excel file Here

    //    // need to check is any row selected 
    //    bool isSelected = false;
    //    foreach (GridViewRow i in YearlyInvoiceGrid.Rows)
    //    {
    //        CheckBox cb = (CheckBox)i.FindControl("chkSelect");

    //        if (cb != null && cb.Checked)
    //        {
    //            isSelected = true;
    //            //break;
    //        }
    //        else
    //        {
    //            string script = "alert('Please select invoices you would like to export.');";
    //            System.Web.UI.ScriptManager.RegisterClientScriptBlock(btnyearly, this.GetType(), "Test", script, true);
    //        }

    //    }

    //    // export here
    //    if (isSelected)
    //    {
    //        GridView gvExport = YearlyInvoiceGrid;


    //        // this below line for not export checkbox to excel file
    //        gvExport.Columns[0].Visible = false;

    //        foreach (GridViewRow i in YearlyInvoiceGrid.Rows)
    //        {

    //            gvExport.Rows[i.RowIndex].Visible = false;

    //            CheckBox cb = (CheckBox)i.FindControl("chkSelect");

    //            if (cb != null && cb.Checked)
    //            {
    //                gvExport.Rows[i.RowIndex].Visible = true;

    //            }

    //        }
    //        string invoiceyear = drpYear.SelectedValue.ToString() + " Yearly Invoices ";
    //        string filename = "Created on: " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();
    //        Response.Clear();
    //        Response.Buffer = true;
    //        //Response.AddHeader("content-disposition", "attachment;filename=\"" + invoiceyear + filename + "\"");

    //        Response.AddHeader("content-disposition", "attachment;filename=" + invoiceyear + filename + ".xls");
    //        Response.Charset = "";
    //        Response.ContentType = "application/vnd.ms-excel";
    //        StringWriter sw = new StringWriter();
    //        HtmlTextWriter htW = new HtmlTextWriter(sw);




    //        gvExport.RenderControl(htW);
    //        // string filename2 = /*drpOrg.SelectedValue.ToString() +*/ " Invoice - " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();


    //        string headerTable = @"<Table><tr><td>" + invoiceyear + " " + filename + "</td></tr><tr><td></td></tr></Table>";

    //        Response.Write(headerTable);
    //        Response.Output.Write(sw.ToString());


    //        Response.End();

    //    }
    //}
    protected void cancelInvoice(object sender, EventArgs e)
    {
        //GridView GridView1 = (GridView)sender;
        // Are there checked boxes?

        foreach (GridViewRow i in GridView1.Rows)
        {
            CheckBox cb = (CheckBox)i.FindControl("chkSelect");
            if (cb != null && cb.Checked)
            {
                System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
                String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
                sc.ConnectionString = cs;
                SqlConnection con = new SqlConnection(cs);
                sc.Open();
                System.Data.SqlClient.SqlCommand update = new System.Data.SqlClient.SqlCommand();
                update.Connection = sc;
                update.CommandText = "Update PaymentRecord set CancelledInvoices = @cancelledInvoice where PaymentID = @paymentID";
                update.Parameters.AddWithValue("@cancelledInvoice", 'Y');
                update.Parameters.AddWithValue("@paymentID", Convert.ToInt32(i.Cells[7].Text));
                update.ExecuteNonQuery();
                GridView1.DataBind();
                CancelledPaymentGrid.DataBind();
                sc.Close();
            }
            else
            {
                continue;
            }
        }
    }

    protected void btnAddPayment_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }

    protected void exportBtnInvoices_ClickAv(object sender, EventArgs e)
    {
        // Export Selected Rows to Excel file Here

        // need to check is any row selected 
        bool isSelected = false;
        foreach (GridViewRow i in GridView1.Rows)
        {
            CheckBox cb = (CheckBox)i.FindControl("chkSelect");
            if (cb != null && cb.Checked)
            {
                isSelected = true;

                //break;
            }
            else
            {
                string script = "alert('Please select invoices you would like to export.');";
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(btnExportGrid, this.GetType(), "Test", script, true);
            }
        }

        // export here
        if (isSelected)
        {
            GridView gvExport = GridView1;
            // this below line for not export checkbox to excel file
            gvExport.Columns[0].Visible = false;
            foreach (GridViewRow i in GridView1.Rows)
            {
                gvExport.Rows[i.RowIndex].Visible = false;
                CheckBox cb = (CheckBox)i.FindControl("chkSelect");
                if (cb != null && cb.Checked)
                {
                    gvExport.Rows[i.RowIndex].Visible = true;
                }
            }

            string invoiceyear = drpMonth.SelectedValue.ToString() + ", " + drpYear.SelectedValue.ToString() + " Cancelled Invoices ";
            string filename = "Created on: " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=\"" + invoiceyear + filename + ".xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htW = new HtmlTextWriter(sw);


            gvExport.RenderControl(htW);
            // string filename2 = /*drpOrg.SelectedValue.ToString() +*/ " Invoice - " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();

            string headerTable = @"<Table>" + invoiceyear + " " + filename + "</td></tr><tr><td></td></tr></Table>";

            Response.Write(headerTable);
            Response.Output.Write(sw.ToString());
            Response.End();

        }


    }




}


