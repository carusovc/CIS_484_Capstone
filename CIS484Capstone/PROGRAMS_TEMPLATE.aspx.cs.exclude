using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class Programs : System.Web.UI.Page
{

    int index;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!this.IsPostBack)
        {
            createAccordianUsingRepeaterLive();
            createAccordianUsingRepeaterOnline();
        }


        index = 1;



        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;


        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);

    }

   

    private static DataTable GetData(string query)
    {
        string constr = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = query;
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataSet ds = new DataSet())
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }
    }



    protected void OnItemDataBoundLive(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string ProgramID = (e.Item.FindControl("hfProgramIDLive") as HiddenField).Value;
            Repeater rptProgramLLLive = e.Item.FindControl("rptProgramLLLive") as Repeater;
            Repeater rptProgramLL2Live = e.Item.FindControl("rptProgramLL2Live") as Repeater;
            Repeater rptProgramLL3Live = e.Item.FindControl("rptProgramLL3Live") as Repeater;


            rptProgramLLLive.DataSource = GetData(string.Format("SELECT ProgramID, Status, NumberOfChildren, NumberOfAdults From Program WHERE ProgramID = " + ProgramID + "", ProgramID));
            rptProgramLLLive.DataBind();

            rptProgramLL2Live.DataSource = GetData(string.Format("SELECT ProgramID, ProgramAddress, CityCounty AS City, State From Program WHERE ProgramID = " + ProgramID + "", ProgramID));
            rptProgramLL2Live.DataBind();

            rptProgramLL3Live.DataSource = GetData(string.Format("SELECT OnOff, ProgramID, PaymentNeeded, ExtraComments AS Comments From Program WHERE ProgramID = " + ProgramID + "", ProgramID));
            rptProgramLL3Live.DataBind();


        }
    }

    public void createAccordianUsingRepeaterLive()
    {

        rptProgramHLLive.DataSource = GetData("SELECT ProgramID, convert(varchar, ProgramDate,101) as ProgramDate, ProgramType.ProgramName AS ProgramType, Organization.OrgName As Organization from Program z inner join ProgramType on z.ProgramTypeID = ProgramType.ProgramTypeID inner join Organization on z.OrgID = Organization.OrgID;"); //inner join Organization on z.OrgID = Organization.OrgID
        rptProgramHLLive.DataBind();
    }



    // GO TO ONLINE

    protected void OnItemDataBoundOnline(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string OnlineProgramID = (e.Item.FindControl("hfProgramIDOnline") as HiddenField).Value;
            Repeater rptProgramLLOnline = e.Item.FindControl("rptProgramLLOnline") as Repeater;
            Repeater rptProgramLL2Online = e.Item.FindControl("rptProgramLL2Online") as Repeater;
            Repeater rptProgramLL3Online = e.Item.FindControl("rptProgramLL3Online") as Repeater;

            //Repeater rptProgramLL2 = e.Item.FindControl("rptProgramLL2") as Repeater;

            rptProgramLLOnline.DataSource = GetData(string.Format("SELECT NumberOfKids, NumberOfPeople, TeacherName From OnlineProgram WHERE OnlineProgramID = " + OnlineProgramID + "", OnlineProgramID));
            rptProgramLLOnline.DataBind();


            rptProgramLL2Online.DataSource = GetData(string.Format("SELECT City, State, Country From OnlineProgram WHERE OnlineProgramID = " + OnlineProgramID + "", OnlineProgramID));
            rptProgramLL2Online.DataBind();

            rptProgramLL3Online.DataSource = GetData(string.Format("SELECT ContactEmail, ExtraComments AS Comments From OnlineProgram WHERE OnlineProgramID = " + OnlineProgramID + "", OnlineProgramID));
            rptProgramLL3Online.DataBind();


        }
    }

    public void createAccordianUsingRepeaterOnline()
    {
        //rptProgramHL.DataSource = GetData("SELECT OrgID, OrgName from Organization");


        rptProgramHLOnline.DataSource = GetData("SELECT OnlineProgramID, convert(varchar, ProgramDate,101) as ProgramDate, OnlineProgramType.OnlineProgramTypeName AS ProgramType from OnlineProgram z inner join OnlineProgramType on z.OnlineProgramTypeID = OnlineProgramType.OnlineProgramTypeID;"); //inner join Organization on z.OrgID = Organization.OrgID
        rptProgramHLOnline.DataBind();
    }


}