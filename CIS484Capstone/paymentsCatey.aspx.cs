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



public partial class paymentsCatey : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PopulateData();
           
        }
    }
    private void PopulateData()
    {
        GridView1.DataBind();
       
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
                break;
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
            string filename = drpOrg.SelectedValue.ToString() + " Invoice -" + DateTime.Now.Year.ToString() + "-" + DateTime.Now.Month.ToString() + "-" + DateTime.Now.Day.ToString();
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=" +filename + ".xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htW = new HtmlTextWriter(sw);
            gvExport.RenderControl(htW);
            string filename2 = drpOrg.SelectedValue.ToString() + " Invoice - " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();

            string headerTable = @"<Table><tr><td>Invoice for "+ filename2 + " </td></tr><tr><td></td></tr></Table>";
            
            Response.Write(headerTable);
            Response.Output.Write(sw.ToString());
            Response.End();

        }


    }

   
 int total = 0;
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            total += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "PaymentAmount"));
        }
        if (e.Row.RowType == DataControlRowType.Footer)
        {
           Label lbltotalAmount = (Label)e.Row.FindControl("lbltotal");
            lbltotalAmount.Text = total.ToString();
        }
    }

}