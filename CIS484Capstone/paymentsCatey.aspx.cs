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


public partial class paymentsCatey : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridData();
        }

    }
     protected void btnExport_Click()
    {
        //exported selected rows to excel file
        bool isSelected = false;
        foreach(GridViewRow i in GridView1.Rows)
        {
            //foreach (GridViewRow c in GridView2.Rows)
            //{
                CheckBox cb = (CheckBox)i.FindControl("chkSelect");
                if (cb != null && cb.Checked)
                {
                    isSelected = true;
                    break;
                }
           // }
        }

        if(isSelected)
        {
            GridView prExport = GridView1;

            prExport.Columns[0].Visible = false;
            foreach (GridViewRow i in GridView1.Rows)
            {
                prExport.Rows[i.RowIndex].Visible = false;
                CheckBox cb = (CheckBox)i.FindControl("chkSelect");
                if (cb != null && cb.Checked)
                {
                    prExport.Rows[i.RowIndex].Visible = true;
                }
            }

            ExportToExcel(prExport);
           
            string filename = "Payment_Invoice" + drpOrg.SelectedValue.ToString() + "_" + drpMonth.SelectedValue.ToString() + "_" + drpYear.SelectedValue.ToString();

          //  ds.WriteXml(@"C:\Users\labpatron\Desktop\" + filename + ".xls");
        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        base.VerifyRenderingInServerForm(control);
    }

    private void ExportToExcel(GridView GridView1)
    {
        try
        {
            Response.Clear();
            Response.AddHeader("content-disposition", "attachment; filename=FileName.xls");
            Response.Charset = "";
            // If you want the option to open the Excel file without saving than
            // comment out the line below
            // Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.xls";
            System.IO.StringWriter stringWrite = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
            GridView1.RenderControl(htmlWrite);
            Response.Write(stringWrite.ToString());
            Response.End();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        //sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";


        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;



        SqlCommand cmd = new SqlCommand("SELECT * FROM PaymentRecord", sc);

        sc.Open();

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();

        da.Fill(ds);

        //string excelname = "Program_Report";
        //string current = DateTime.Today.ToShortDateString();
        string filename = "Program_Report" + DateTime.Now.Year.ToString() + "_" + DateTime.Now.Month.ToString() + "_" + DateTime.Now.Day.ToString();

        ds.WriteXml(@"C:\Users\labpatron\Desktop\" + filename + ".xls");
        sc.Close();
    }





    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnExport_Click();
    }


    /// <summary>
    /// This Method is used to bind gridview
    /// </summary>
    private void BindGridData()
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        //sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";


        //String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        //sc.ConnectionString = cs;
        //SqlCommand cmd = new SqlCommand("SELECT [PaymentAmount], [CheckNumber],  [PaymentType], [OrgName],[PaymentID],[Invoice] FROM [PaymentRecord] inner join Organization on  PaymentRecord.OrgID = Organization.OrgID", sc);
        //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //DataSet ds = new DataSet();
        //da.Fill(ds);
        //GridView1.DataSource = ds;
        //GridView1.DataBind();
    }
    
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        SaveCheckedValues();
        GridView1.PageIndex = e.NewPageIndex;
        BindGridData();
        PopulateCheckedValues();
    }

    /// <summary>
    /// This event is used to export gridview data to Excel document
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnExportExcel_Click(object sender, EventArgs e)
    {
        string filename = "Payment_Invoice" + drpOrg.SelectedValue.ToString() + "_" + drpMonth.SelectedValue.ToString() + "_" + drpYear.SelectedValue.ToString();
        ExportFunction("attachment;filename="+ filename + ".xls", "application/vnd.ms-excel");
    }
    /// <summary>
    /// This event is used to export gridview data to word document
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnWord_Click(object sender, EventArgs e)
    {
        string filename = "Payment_Invoice" + drpOrg.SelectedValue.ToString() + "_" + drpMonth.SelectedValue.ToString() + "_" + drpYear.SelectedValue.ToString();
        ExportFunction("attachment;filename=filename=" + filename + ".doc", "application/vnd.ms-word");
    }
    /// <summary>
    /// This Function is used to generate Excel or word document with gridview checkbox selected values
    /// </summary>
    /// <param name="header"></param>
    /// <param name="contentType"></param>
    private void ExportFunction(string header, string contentType)
    {
        SaveCheckedValues();
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", header);
        Response.Charset = "";
        Response.ContentType = contentType;
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        GridView1.AllowPaging = false;
        BindGridData();
        GridView1.HeaderRow.Style.Add("background-color", "#FFFFFF");
        GridView1.HeaderRow.Cells[0].Visible = false;
        for (int i = 0; i < GridView1.HeaderRow.Cells.Count; i++)
        {
            GridView1.HeaderRow.Cells[i].Style.Add("background-color", "#df5015");
            GridView1.HeaderRow.Cells[i].Style.Add("color", "#FFFFFF");
        }
        if (ViewState["CHECKED_ITEMS"] != null)
        {
            ArrayList CheckBoxArray = (ArrayList)ViewState["CHECKED_ITEMS"];
            int rowIdx = 0;
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                GridViewRow row = GridView1.Rows[i];
                row.Visible = false;
                int index = (int)GridView1.DataKeys[row.RowIndex].Value;
                if (CheckBoxArray.Contains(index))
                {
                    row.Visible = true;
                    row.Cells[0].Visible = false;
                }
            }
        }
        GridView1.RenderControl(hw);
        Response.Output.Write(sw.ToString());
        Response.End();
    }
    /// <summary>
    ///This method is used to populate the saved checked status of checkbox values
    /// </summary>
    private void PopulateCheckedValues()
    {
        ArrayList userdetails = (ArrayList)ViewState["CHECKED_ITEMS"];
        if (userdetails != null && userdetails.Count > 0)
        {
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                int index = (int)GridView1.DataKeys[gvrow.RowIndex].Value;
                if (userdetails.Contains(index))
                {
                    CheckBox myCheckBox = (CheckBox)gvrow.FindControl("chkSelect");
                    myCheckBox.Checked = true;
                }
            }
        }
    }
    /// <summary>
    /// This method is used to save the checkedstate of checkbox values
    /// </summary>
    private void SaveCheckedValues()
    {
        ArrayList userdetails = new ArrayList();
        int index = -1;
        foreach (GridViewRow gvrow in GridView1.Rows)
        {
            index = (int)GridView1.DataKeys[gvrow.RowIndex].Value;
            bool result = ((CheckBox)gvrow.FindControl("chkSelect")).Checked;
            // Check in the Session
            if (ViewState["CHECKED_ITEMS"] != null)
                userdetails = (ArrayList)ViewState["CHECKED_ITEMS"];
            if (result)
            {
                if (!userdetails.Contains(index))
                    userdetails.Add(index);
            }
            else
                userdetails.Remove(index);
        }
        if (userdetails != null && userdetails.Count > 0)
            ViewState["CHECKED_ITEMS"] = userdetails;
    }
}