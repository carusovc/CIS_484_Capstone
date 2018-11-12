using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections;
using System.Text;
using System.Threading.Tasks;



public partial class YearlyInvoices : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        lblResponse.Text = "";
        //GridView1.DataBind();
        if (!IsPostBack)
        {


           // PopulateData();

        }
    }
    private void PopulateData()
    {
    //  GridView2.DataBind();
      //  GridView1.DataBind();


    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
    }
    protected void exportBtn_ClickAv(object sender, EventArgs e)
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
                lblResponse.Text = "Your export has been successful";
                //break;
            }
            else
            {
                string script = "alert('Please select invoices you would like to export.');";
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(Button1, this.GetType(), "Test", script, true);
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
            string invoiceyear = drpYear.SelectedValue.ToString() + " Yearly Invoices ";
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

    protected void exportBtn2_ClickAv(object sender, EventArgs e)
    {
        // Export Selected Rows to Excel file Here

        // need to check is any row selected 
        bool isSelected = false;
        foreach (GridViewRow i in GridView2.Rows)
        {
            CheckBox cb = (CheckBox)i.FindControl("chkSelect");


            if (cb != null && cb.Checked)
            {
                isSelected = true;
                lblResponse.Text = "Your export has been successful";
                //break;
            }
            else
            {
                string script = "alert('Please select invoices you would like to export.');";
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(btnExportGrid2, this.GetType(), "Test", script, true);
            }
        }

        // export here
        if (isSelected)
        {
            GridView gvExport = GridView2;
            // this below line for not export checkbox to excel file
            gvExport.Columns[0].Visible = false;
            foreach (GridViewRow i in GridView2.Rows)
            {
                gvExport.Rows[i.RowIndex].Visible = false;
                CheckBox cb = (CheckBox)i.FindControl("chkSelect");
                if (cb != null && cb.Checked)
                {
                    gvExport.Rows[i.RowIndex].Visible = true;
                }
            }
            string invoiceyear = drpYear.SelectedValue.ToString() + " Cancelled Yearly Invoice ";
            string filename = "Created on: " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=" + invoiceyear + filename + ".xls");
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
    protected void btnAddPaymentForm(object sender, EventArgs e)

    {

    }
    private decimal TotalNotCancelled = (decimal)0.0;
    private decimal TotalCancelled = (decimal)0.0;
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {


        // check row type
        if (e.Row.RowType == DataControlRowType.DataRow)
            // if row type is DataRow, add ProductSales value to TotalSales
            TotalNotCancelled += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "PaymentAmount"));
        else if (e.Row.RowType == DataControlRowType.Footer)
            // If row type is footer, show calculated total value
            // Since this example uses sales in dollars, I formatted output as currency
            e.Row.Cells[2].Text = String.Format("{0:c}", TotalNotCancelled);

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
            e.Row.Cells[2].Text = String.Format("{0:c}", TotalCancelled);




    }
}

