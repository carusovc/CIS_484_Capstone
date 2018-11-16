﻿
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class AnimalMonthlyWildlifeReport : System.Web.UI.Page
{
    public string selectedAnimal;

    System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {

        SearchDiv.Visible = false;
        if (!IsPostBack)
        {

            drpAnimalType.Items.Add("Bird");
            drpAnimalType.Items.Add("Mammal");
            drpAnimalType.Items.Add("Reptile");

            // insert.CommandText = "select * from dbo.Animal where animalType = 'bird'";

            ShowData();

        }


    }

    protected void ShowData()
    {

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        //sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";


        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();


        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);


        DataTable dt = new DataTable();
        //con = new SqlConnection(sc);
        //con.Open();
        SqlCommand cmd = new SqlCommand("SELECT  Animal.AnimalName, SUM(CASE WHEN Program.onoff = 1 THEN 1 ELSE 0 END) AS TotalOnSitePrograms, " +
            "SUM(CASE WHEN Program.onoff = 0 THEN 1 ELSE 0 END) AS TotalOffSitePrograms, Count(ProgramAnimal.ProgramID) AS TotalLivePrograms, SUM(Program.NumberOfChildren) AS NumberOfChildren, " +
            "SUM(Program.NumberOfAdults) AS NumberOfAdults FROM Animal, " +
            "Program, ProgramAnimal WHERE(Animal.AnimalType = @AnimalType) AND Animal.AnimalID = ProgramAnimal.AnimalID AND ProgramAnimal.ProgramID = Program.ProgramID " +
            "GROUP BY Animal.AnimalName, Animal.AnimalType ORDER BY Animal.AnimalName", sc);
        cmd.Parameters.AddWithValue("@AnimalType", drpAnimalType.Text.ToString());
        SqlDataAdapter adapt = new SqlDataAdapter(cmd);
        adapt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            AnimalLiveGrid.DataSource = dt;
            AnimalLiveGrid.DataBind();
        }
        sc.Close();
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ShowData();

    }


    protected void btnVisualize_Click(object sender, EventArgs e)
    {
        Response.Redirect("TabAnimalReports.aspx");
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SearchDiv.Visible = true;
        gridSearch.DataBind();


        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand search = new System.Data.SqlClient.SqlCommand();
        search.Connection = sc;
        SqlConnection con = new SqlConnection(cs);
        string searchAnimal = txtSearch.Text;

        DataTable dt = new DataTable();

        SqlDataAdapter adapt = new SqlDataAdapter("Select a.AnimalType, a.AnimalName, (Count(p.AnimalID) + COUNT(o.AnimalID)) as TotalPrograms from Animal a full join ProgramAnimal p on a.AnimalID = p.AnimalID full join OnlineAnimal o on a.animalID = o.animalID where UPPER(a.AnimalName) like UPPER('" + searchAnimal + "%') or UPPER(a.AnimalType) like UPPER('" + searchAnimal + "%') group by a.animalName, a.animalType", con);

        adapt.Fill(dt);

        gridSearch.DataSource = dt;
        gridSearch.DataBind();
    }

    private void ExportToExcel()
    {

        GridView1.AllowPaging = false;
        ShowData();
        String animalReport = "Animal Type: " + drpAnimalType.SelectedValue.ToString() + " Report ";
        String filename = "Created on: " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();
        HttpResponse response = HttpContext.Current.Response;

        StringWriter sw3 = new StringWriter();
        HtmlTextWriter htW3 = new HtmlTextWriter(sw3);

        StringWriter sw = new StringWriter();
        HtmlTextWriter htW = new HtmlTextWriter(sw);

        StringWriter sw2 = new StringWriter();
        HtmlTextWriter htW2 = new HtmlTextWriter(sw2);


        response.Clear();
        response.Buffer = true;
        response.Charset = "";
        response.ContentType = "application/vnd.xls";
        response.AddHeader("content-disposition", "attachment; filename=\"" + animalReport + filename + "\"" + ".xls");


        string headerTable = @"<Table>" + animalReport + " " + filename + "<tr><td></td></tr></Table>";
        string headerTable1 = @"<Table>" + drpAnimalType.SelectedValue.ToString() + " Totals Based on Live Programs <tr><td></td></tr></Table>";

        string headerTable2 = @"<Table>" + drpAnimalType.SelectedValue.ToString() + " Totals Based on Online Programs <tr><td></td></tr></Table>";
        string headerTable3 = @"<Table> Count of " + drpAnimalType.SelectedValue.ToString() + " Total Program Involvement <tr><td></td></tr></Table>";

        string blankline = @"<Table><tr><td></td></tr></Table>";
        Response.Write(headerTable);
        Response.Write(headerTable3);
        GridView1.RenderControl(htW3);
        Response.Output.Write(sw3.ToString());
        Response.Write(blankline);

        Response.Write(headerTable1);
        AnimalLiveGrid.RenderControl(htW);
        Response.Output.Write(sw.ToString());
        Response.Write(blankline);

        Response.Write(headerTable2);
        gridOnlinePrograms.RenderControl(htW2);
        Response.Output.Write(sw2.ToString());
        Response.Write(blankline);


        Response.End();

    }

    public override void VerifyRenderingInServerForm(Control control)
    {

    }
    protected void btnVisualizeMonthly_Click(object sender, EventArgs e)
    {
        Response.Redirect("TabMonthlyReports.aspx");
    }
    protected void btnMonthsToExcel_Click(object sender, EventArgs e)
    {

        //// Export Selected Rows to Excel file Here

        // GridView gvExport = gridOnlineAnimalsTotals;
        string title = DropDownList1.SelectedValue.ToString() + ", " + drpYear.SelectedValue.ToString() + " Monthly Live & Online Programs WLC Report ";
        string filename = "Created on: " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();
        Response.Clear();
        Response.Buffer = true;
        //Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filename + "\"");
        Response.AddHeader("content-disposition", "attachment;filename=\"" + title + filename + ".xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.xls";
        StringWriter sw = new StringWriter();
        StringWriter sw2 = new StringWriter();

        HtmlTextWriter htW = new HtmlTextWriter(sw);
        HtmlTextWriter htW2 = new HtmlTextWriter(sw2);


        string headerTable1 = @"<Table>" + DropDownList1.SelectedValue.ToString() + " Totals Based on Live Programs <tr><td></td></tr></Table>";
        string headerTable2 = @"<Table>" + DropDownList1.SelectedValue.ToString() + " Totals Based on  Online Programs <tr><td></td></tr></Table>";

        string headerTable = @"<Table>" + title + " " + filename + "<tr><td></td></tr></Table>";
        string blankline = @"<Table><tr><td></td></tr></Table>";
        Response.Write(headerTable);
        Response.Write(headerTable1);
        gridLivePrograms.RenderControl(htW);
        gridOnlineAnimalsTotals.RenderControl(htW2);
        Response.Output.Write(sw.ToString());
        Response.Write(blankline);


        Response.Write(headerTable2);

        Response.Output.Write(sw2.ToString());
        Response.End();

    }
    protected void btnToExcel_Click1(object sender, EventArgs e)
    {

        ExportToExcel();

    }

    protected void btnExportLiveYearlyInformation_Click(object sender, EventArgs e)
    {

        //// Export Selected Rows to Excel file Here

        // GridView gvExport = gridPrograms;
        string title = drpYear.SelectedValue.ToString() + " Yearly Live & Online Programs WLC Report ";
        string filename = "Created on: " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=" + title + filename + ".xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.xls";
        StringWriter sw = new StringWriter();
        StringWriter sw2 = new StringWriter();
        HtmlTextWriter htW = new HtmlTextWriter(sw);
        HtmlTextWriter htW2 = new HtmlTextWriter(sw2);

        string headerTable1 = @"<Table> Totals Based on Live Programs <tr><td></td></tr></Table>";
        string headerTable2 = @"<Table> Totals Based on Online Programs <tr><td></td></tr></Table>";
        string headerTable = @"<Table>" + title + " " + filename + "<tr><td></td></tr></Table>";
        string blankline = @"<Table><tr><td></td></tr></Table>";
        Response.Write(headerTable);
        Response.Write(headerTable1);

        gridPrograms.RenderControl(htW);

        gridOnlinePrograms.RenderControl(htW2);

        Response.Output.Write(sw.ToString());
        Response.Write(blankline);
        Response.Write(headerTable2);
        Response.Output.Write(sw2.ToString());
        Response.End();

    }

}
