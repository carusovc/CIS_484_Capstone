﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;


public partial class Programs : System.Web.UI.Page
{

    int index = 1;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!this.IsPostBack)
        {
            createAccordianUsingRepeaterLive(0);
            createAccordianUsingRepeaterOnline(0);
            createAccordianUsingRepeaterAll(0);
        }


        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;


        //online postback
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);
        if (!IsPostBack)
        {


            //call read array
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {

                string read = "SELECT OnlineProgramID, convert(varchar, ProgramDate,101) as ProgramDate, OnlineProgramType.OnlineProgramTypeName AS ProgramType from OnlineProgram z inner join OnlineProgramType on z.OnlineProgramTypeID = OnlineProgramType.OnlineProgramTypeID      ";
                string onlineProgramRead = "Select * from OnlineProgramType";
                string educatorsRead = "Select * from Educators";

                SqlCommand cmd1 = new SqlCommand(onlineProgramRead, con);
                SqlCommand cmd2 = new SqlCommand(educatorsRead, con);
                SqlCommand cmd = new SqlCommand(read, con);
                SqlDataReader myRead = cmd.ExecuteReader();
                SqlDataReader myRead1 = cmd1.ExecuteReader();
                SqlDataReader myRead2 = cmd2.ExecuteReader();





                while (myRead.Read())
                {

                    ddlOnlineProgramID.Items.Add(new ListItem(myRead["ProgramDate"].ToString() + "--" + myRead["ProgramType"].ToString(), myRead["OnlineProgramID"].ToString()));
                }

                while (myRead1.Read())
                {
                    ddlOnlineProgramType.Items.Add(new ListItem(myRead1["OnlineProgramTypeName"].ToString(), myRead1["OnlineProgramTypeID"].ToString()));
                }

                //while (myRead2.Read())
                //{
                //    ddlOTeacher.Items.Add(new ListItem(myRead2["EducatorFirstName"].ToString(), myRead2["EducatorID"].ToString()));
                //}
                //ddlOnlineProgramID.DataBind();



                if (AddGrade.Items.Count < 2)
                {

                    string gradeRead = "Select * from Grade";
                    SqlCommand cmd3 = new SqlCommand(gradeRead, con);
                    SqlDataReader myRead3 = cmd3.ExecuteReader();

                    while (myRead3.Read())
                    {

                        lstOGrades.Items.Add(new ListItem(myRead3["GradeLevel"].ToString(), myRead3["GradeID"].ToString()));
                    }

                }


            }

            if (lstOEducators.Items.Count < 2)
            {

                string educatorRead = "Select * from Educators order by EducatorFirstName";
                SqlCommand cmd4 = new SqlCommand(educatorRead, con);
                SqlDataReader myRead4 = cmd4.ExecuteReader();

                while (myRead4.Read())
                {

                    lstOEducators.Items.Add(new ListItem(myRead4["EducatorFirstName"].ToString() + " " + myRead4["EducatorLastName"].ToString(), myRead4["EducatorID"].ToString()));
                }


            }

            if (lstOBirds.Items.Count < 2)
            {

                string birdRead = "Select * from Animal where AnimalType = 'Bird' order by AnimalName";
                SqlCommand cmd5 = new SqlCommand(birdRead, con);
                SqlDataReader myRead5 = cmd5.ExecuteReader();

                while (myRead5.Read())
                {

                    lstOBirds.Items.Add(new ListItem(myRead5["AnimalName"].ToString(), myRead5["AnimalID"].ToString()));
                }


            }

            if (lstOReptiles.Items.Count < 2)
            {

                string reptileRead = "Select * from Animal where AnimalType = 'Reptile' order by AnimalName";
                SqlCommand cmd6 = new SqlCommand(reptileRead, con);
                SqlDataReader myRead6 = cmd6.ExecuteReader();

                while (myRead6.Read())
                {

                    lstOReptiles.Items.Add(new ListItem(myRead6["AnimalName"].ToString(), myRead6["AnimalID"].ToString()));
                }


            }

            if (lstOMammals.Items.Count < 2)
            {

                string mammalRead = "Select * from Animal where AnimalType = 'Mammal' order by AnimalName";
                SqlCommand cmd7 = new SqlCommand(mammalRead, con);
                SqlDataReader myRead7 = cmd7.ExecuteReader();

                while (myRead7.Read())
                {

                    lstOMammals.Items.Add(new ListItem(myRead7["AnimalName"].ToString(), myRead7["AnimalID"].ToString()));
                }


            }
        }

        // Live postback
        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);
        if (!IsPostBack)
        {
            ProgramDate.Value = "";
            ProgramTime.Value = "";
            ddlProgram.SelectedValue = "0";
            dropDownOrganization.SelectedValue = "0";
            lstSelectEducatorsLive.ClearSelection();
            lstSelectBirdsLive.ClearSelection();
            lstSelectReptilesLive.ClearSelection();
            lstSelectMammalsLive.ClearSelection();
            //Status.SelectedValue = "0";
            Payment.SelectedValue = "0";
            OnOff.Value = "";
            Address.Value = "";
            CityCounty.Value = "";
            statesDropDown.ClearSelection();
            lstGrades.ClearSelection();
            NumOfChildren.Value = "";
            NumOfAdults.Value = "";
            Comments.Value = "";



            //call read array
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                //Live Program
                string read = "Select * from Program";
                string programNameRead = "Select * from ProgramType order by ProgramName";
                string organizationRead = "Select * from Organization";
                string educatorReadStatement = "Select * from Educators order by EducatorFirstName";


                SqlCommand cmd = new SqlCommand(read, con);
                SqlCommand cmd1 = new SqlCommand(programNameRead, con);
                SqlCommand cmd2 = new SqlCommand(organizationRead, con);
                SqlCommand cmdLive3 = new SqlCommand(educatorReadStatement, con);

                SqlDataReader myRead = cmd.ExecuteReader();
                SqlDataReader myRead1 = cmd1.ExecuteReader();
                SqlDataReader myRead2 = cmd2.ExecuteReader();
                SqlDataReader myReadLive3 = cmdLive3.ExecuteReader();

                if (ddlProgram.Items.Count < 2)
                {
                    while (myRead1.Read())
                    {
                        ddlProgram.Items.Add(new ListItem(myRead1["ProgramName"].ToString(), myRead1["ProgramTypeID"].ToString()));
                        ddlProgramType.Items.Add(new ListItem(myRead1["ProgramName"].ToString(), myRead1["ProgramTypeID"].ToString()));
                    }
                }
                if (dropDownOrganization.Items.Count < 2)
                {
                    while (myRead2.Read())
                    {
                        dropDownOrganization.Items.Add(new ListItem(myRead2["OrgName"].ToString(), myRead2["OrgID"].ToString()));
                        ddlOrganization.Items.Add(new ListItem(myRead2["OrgName"].ToString(), myRead2["OrgID"].ToString()));
                    }
                }

                if (lstSelectEducatorsLive.Items.Count < 2)
                {
                    while (myReadLive3.Read())
                    {
                        lstSelectEducatorsLive.Items.Add(new ListItem(myReadLive3["EducatorFirstName"].ToString() + " " + myReadLive3["EducatorLastName"].ToString(), myReadLive3["EducatorID"].ToString()));
                        drpEducators.Items.Add(new ListItem(myReadLive3["EducatorFirstName"].ToString() + " " + myReadLive3["EducatorLastName"].ToString(), myReadLive3["EducatorID"].ToString()));

                    }
                }

                if (lstSelectBirdsLive.Items.Count < 2)
                {
                    string readStatement = "Select * from Animal where AnimalType = 'Bird' order by AnimalName";
                    SqlCommand cmdLive = new SqlCommand(readStatement, con);
                    SqlDataReader myReadLive = cmdLive.ExecuteReader();

                    while (myReadLive.Read())
                    {

                        lstSelectBirdsLive.Items.Add(new ListItem(myReadLive["AnimalName"].ToString(), myReadLive["AnimalID"].ToString()));
                    }
                }

                if (lstSelectReptilesLive.Items.Count < 2)
                {
                    string readStatement = "Select * from Animal where AnimalType = 'Reptile' order by AnimalName";
                    SqlCommand cmdLive = new SqlCommand(readStatement, con);
                    SqlDataReader myReadLive = cmdLive.ExecuteReader();

                    while (myReadLive.Read())
                    {
                        lstSelectReptilesLive.Items.Add(new ListItem(myReadLive["AnimalName"].ToString(), myReadLive["AnimalID"].ToString()));
                    }
                }

                if (lstSelectMammalsLive.Items.Count < 2)
                {
                    string readStatement = "Select * from Animal where AnimalType = 'Mammal' order by AnimalName";
                    SqlCommand cmdLive = new SqlCommand(readStatement, con);
                    SqlDataReader myReadLive = cmdLive.ExecuteReader();

                    while (myReadLive.Read())
                    {
                        lstSelectMammalsLive.Items.Add(new ListItem(myReadLive["AnimalName"].ToString(), myReadLive["AnimalID"].ToString()));
                    }
                }

                if (lstGrades.Items.Count < 2)
                {
                    string readStatement = "Select * from Grade";
                    SqlCommand cmdLive = new SqlCommand(readStatement, con);
                    SqlDataReader myReadLive = cmdLive.ExecuteReader();

                    while (myReadLive.Read())
                    {

                        lstGrades.Items.Add(new ListItem(myReadLive["GradeLevel"].ToString(), myReadLive["GradeID"].ToString()));
                    }

                }




                //Online Program
                string readOnline = "Select * from OnlineProgram";
                string onlineProgramRead = "Select * from OnlineProgramType";
                string educatorsRead = "Select * from Educators order by EducatorFirstName";

                SqlCommand cmdOnline = new SqlCommand(readOnline, con);
                SqlCommand cmdOnline1 = new SqlCommand(onlineProgramRead, con);
                SqlCommand cmdOnline2 = new SqlCommand(educatorsRead, con);

                SqlDataReader myReadOnline = cmdOnline.ExecuteReader();
                SqlDataReader myReadOnline1 = cmdOnline1.ExecuteReader();
                SqlDataReader myReadOnline2 = cmdOnline2.ExecuteReader();



                //Online Program
                //while (myReadOnline.Read())
                //{

                //    lstOnlineProgramType.Items.Add(new ListItem(myReadOnline["OnlineProgramID"].ToString(), myReadOnline["OnlineProgramID"].ToString()));
                //}

                while (myReadOnline1.Read())
                {
                    lstOnlineProgramType.Items.Add(new ListItem(myReadOnline1["OnlineProgramTypeName"].ToString(), myReadOnline1["OnlineProgramTypeID"].ToString()));
                }



                if (OnlineGrades.Items.Count < 2)
                {

                    string gradeOnlineRead = "Select * from Grade";
                    SqlCommand cmdOnline3 = new SqlCommand(gradeOnlineRead, con);
                    SqlDataReader myOnlineRead3 = cmdOnline3.ExecuteReader();

                    while (myOnlineRead3.Read())
                    {

                        OnlineGrades.Items.Add(new ListItem(myOnlineRead3["GradeLevel"].ToString(), myOnlineRead3["GradeID"].ToString()));
                    }

                }

                if (lstOnlineEducators.Items.Count < 2)
                {

                    string educatorRead = "Select * from Educators order by EducatorFirstName";
                    SqlCommand cmd4 = new SqlCommand(educatorRead, con);
                    SqlDataReader myRead4 = cmd4.ExecuteReader();

                    while (myRead4.Read())
                    {

                        lstOnlineEducators.Items.Add(new ListItem(myRead4["EducatorFirstName"].ToString() + " " + myRead4["EducatorLastName"].ToString(), myRead4["EducatorID"].ToString()));
                    }


                }

                if (lstBirdOnline.Items.Count < 2)
                {

                    string birdRead = "Select * from Animal where AnimalType = 'Bird' order by AnimalName";
                    SqlCommand cmd5 = new SqlCommand(birdRead, con);
                    SqlDataReader myRead5 = cmd5.ExecuteReader();

                    while (myRead5.Read())
                    {

                        lstBirdOnline.Items.Add(new ListItem(myRead5["AnimalName"].ToString(), myRead5["AnimalID"].ToString()));
                    }


                }

                if (lstReptilesOnline.Items.Count < 2)
                {

                    string reptileRead = "Select * from Animal where AnimalType = 'Reptile' order by AnimalName";
                    SqlCommand cmd6 = new SqlCommand(reptileRead, con);
                    SqlDataReader myRead6 = cmd6.ExecuteReader();

                    while (myRead6.Read())
                    {

                        lstReptilesOnline.Items.Add(new ListItem(myRead6["AnimalName"].ToString(), myRead6["AnimalID"].ToString()));
                    }


                }

                if (lstMammalsOnline.Items.Count < 2)
                {

                    string mammalRead = "Select * from Animal where AnimalType = 'Mammal' order by AnimalName";
                    SqlCommand cmd7 = new SqlCommand(mammalRead, con);
                    SqlDataReader myRead7 = cmd7.ExecuteReader();

                    while (myRead7.Read())
                    {

                        lstMammalsOnline.Items.Add(new ListItem(myRead7["AnimalName"].ToString(), myRead7["AnimalID"].ToString()));
                    }


                }


                // Edit Live Program

                if (ddlProgramID.Items.Count < 2)
                {
                    string readStatement = "SELECT ProgramID, convert(varchar, ProgramDate,101) as ProgramDate, ProgramType.ProgramName AS ProgramType, Organization.OrgName As Organization from Program z inner join ProgramType on z.ProgramTypeID = ProgramType.ProgramTypeID inner join Organization on z.OrgID = Organization.OrgID";
                    SqlCommand cmdLive = new SqlCommand(readStatement, con);
                    SqlDataReader myReadLive = cmdLive.ExecuteReader();


                    while (myReadLive.Read())
                    {
                        ddlProgramID.Items.Add(new ListItem(myReadLive["ProgramDate"].ToString() + "--" + myReadLive["ProgramType"].ToString(), myReadLive["ProgramID"].ToString()));
                    }
                }

                if (ddlBirds.Items.Count < 2)
                {
                    string readStatement = "Select * from Animal where AnimalType = 'Bird' order by AnimalName";
                    SqlCommand cmdLive = new SqlCommand(readStatement, con);
                    SqlDataReader myReadLive = cmdLive.ExecuteReader();

                    while (myReadLive.Read())
                    {

                        ddlBirds.Items.Add(new ListItem(myReadLive["AnimalName"].ToString(), myReadLive["AnimalID"].ToString()));
                    }
                }

                if (ddlReptiles.Items.Count < 2)
                {
                    string readStatement = "Select * from Animal where AnimalType = 'Reptile' order by AnimalName";
                    SqlCommand cmdLive = new SqlCommand(readStatement, con);
                    SqlDataReader myReadLive = cmdLive.ExecuteReader();

                    while (myReadLive.Read())
                    {
                        ddlReptiles.Items.Add(new ListItem(myReadLive["AnimalName"].ToString(), myReadLive["AnimalID"].ToString()));
                    }
                }

                if (lstMammals.Items.Count < 2)
                {
                    string readStatement = "Select * from Animal where AnimalType = 'Mammal' order by AnimalName";
                    SqlCommand cmdLive = new SqlCommand(readStatement, con);
                    SqlDataReader myReadLive = cmdLive.ExecuteReader();

                    while (myReadLive.Read())
                    {
                        lstMammals.Items.Add(new ListItem(myReadLive["AnimalName"].ToString(), myReadLive["AnimalID"].ToString()));
                    }
                }

                if (AddGrade.Items.Count < 2)
                {
                    string readStatement = "Select * from Grade";
                    SqlCommand cmdLive = new SqlCommand(readStatement, con);
                    SqlDataReader myReadLive = cmdLive.ExecuteReader();

                    while (myReadLive.Read())
                    {

                        AddGrade.Items.Add(new ListItem(myReadLive["GradeLevel"].ToString(), myReadLive["GradeID"].ToString()));
                    }

                }
            }
        }

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
            Repeater rptNewLiveProgramLL4 = e.Item.FindControl("rptNewLiveProgramLL4") as Repeater;



            rptProgramLLLive.DataSource = GetData(string.Format("SELECT ProgramID, Status, NumberOfChildren, NumberOfAdults From Program WHERE ProgramID = " + ProgramID + "", ProgramID));
            rptProgramLLLive.DataBind();

            rptProgramLL2Live.DataSource = GetData(string.Format("SELECT ProgramID, ProgramAddress, CityCounty AS City, State From Program WHERE ProgramID = " + ProgramID + "", ProgramID));
            rptProgramLL2Live.DataBind();

            rptProgramLL3Live.DataSource = GetData(string.Format("SELECT Case when OnOff = 1 then 'On' else 'Off' end as 'OnOffSite', ProgramID, Case when paid = 'Y' then 'Not Paid' else 'Paid' end as 'Paid?', ExtraComments AS Comments From Program WHERE ProgramID = " + ProgramID + "", ProgramID));
            rptProgramLL3Live.DataBind();

            rptNewLiveProgramLL4.DataSource = GetData(string.Format("SELECT ProgramID, pa.AnimalID, (CASE WHEN AnimalType ='Bird' Then AnimalName ELSE NULL END) AS 'Birds', (CASE WHEN AnimalType = 'Mammal' Then AnimalName ELSE NULL END) AS 'Mammals', (CASE WHEN AnimalType = 'Reptile' Then AnimalName ELSE NULL END) AS 'Reptiles' FROM ProgramAnimal pa inner join Animal on pa.AnimalID = Animal.AnimalID where ProgramID = " + ProgramID + "", ProgramID));
            rptNewLiveProgramLL4.DataBind();



        }
    }

    public void createAccordianUsingRepeaterLive(int orderType)
    {


        // 0 = Default
        // 1 = Date
        // 2 = Program Type

        switch (orderType)
        {

            case 0:
                rptProgramHLLive.DataSource = GetData("SELECT ProgramID, convert(varchar, ProgramDate,101) as ProgramDate, ProgramType.ProgramName AS ProgramType, Organization.OrgName As Organization from Program z inner join ProgramType on z.ProgramTypeID = ProgramType.ProgramTypeID inner join Organization on z.OrgID = Organization.OrgID;"); //inner join Organization on z.OrgID = Organization.OrgID
                rptProgramHLLive.DataBind();
                break;
            case 1:
                rptProgramHLLive.DataSource = GetData("SELECT ProgramID, convert(varchar, ProgramDate,101) as ProgramDate, ProgramType.ProgramName AS ProgramType, Organization.OrgName As Organization from Program z inner join ProgramType on z.ProgramTypeID = ProgramType.ProgramTypeID inner join Organization on z.OrgID = Organization.OrgID order by ProgramDate DESC;"); //inner join Organization on z.OrgID = Organization.OrgID
                rptProgramHLLive.DataBind();
                break;
            case 2:
                rptProgramHLLive.DataSource = GetData("SELECT ProgramID, convert(varchar, ProgramDate,101) as ProgramDate, ProgramType.ProgramName AS ProgramType, Organization.OrgName As Organization from Program z inner join ProgramType on z.ProgramTypeID = ProgramType.ProgramTypeID inner join Organization on z.OrgID = Organization.OrgID order by ProgramType;"); //inner join Organization on z.OrgID = Organization.OrgID
                rptProgramHLLive.DataBind();
                break;
        }


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
            Repeater rptNewOnlineProgramLL4 = e.Item.FindControl("rptNewOnlineProgramLL4") as Repeater;


            //Repeater rptProgramLL2 = e.Item.FindControl("rptProgramLL2") as Repeater;

            rptProgramLLOnline.DataSource = GetData(string.Format("SELECT NumberOfKids, NumberOfPeople, TeacherName From OnlineProgram WHERE OnlineProgramID = " + OnlineProgramID + "", OnlineProgramID));
            rptProgramLLOnline.DataBind();


            rptProgramLL2Online.DataSource = GetData(string.Format("SELECT City, State, Country From OnlineProgram WHERE OnlineProgramID = " + OnlineProgramID + "", OnlineProgramID));
            rptProgramLL2Online.DataBind();

            rptProgramLL3Online.DataSource = GetData(string.Format("SELECT ContactEmail, ExtraComments AS Comments, SecondaryEmail From OnlineProgram WHERE OnlineProgramID = " + OnlineProgramID + "", OnlineProgramID));
            rptProgramLL3Online.DataBind();

            rptNewOnlineProgramLL4.DataSource = GetData(string.Format("SELECT OnlineProgramID, oa.AnimalID, (CASE WHEN AnimalType ='Bird' Then AnimalName ELSE NULL END) AS 'Birds', (CASE WHEN AnimalType = 'Mammal' Then AnimalName ELSE NULL END) AS 'Mammals', (CASE WHEN AnimalType = 'Reptile' Then AnimalName ELSE NULL END) AS 'Reptiles' FROM OnlineAnimal oa inner join Animal on oa.AnimalID = Animal.AnimalID where OnlineProgramID = " + OnlineProgramID + "", OnlineProgramID));
            rptNewOnlineProgramLL4.DataBind();


        }
    }

    public void createAccordianUsingRepeaterOnline(int orderType)
    {


        // 0 = Default
        // 1 = Date
        // 2 = Program Type

        switch (orderType)
        {

            case 0:
                rptProgramHLOnline.DataSource = GetData("SELECT OnlineProgramID, convert(varchar, ProgramDate,101) as ProgramDate, OnlineProgramType.OnlineProgramTypeName AS ProgramType from OnlineProgram z inner join OnlineProgramType on z.OnlineProgramTypeID = OnlineProgramType.OnlineProgramTypeID;"); //inner join Organization on z.OrgID = Organization.OrgID
                rptProgramHLOnline.DataBind();
                break;
            case 1:
                rptProgramHLOnline.DataSource = GetData("SELECT OnlineProgramID, convert(varchar, ProgramDate,101) as ProgramDate, OnlineProgramType.OnlineProgramTypeName AS ProgramType from OnlineProgram z inner join OnlineProgramType on z.OnlineProgramTypeID = OnlineProgramType.OnlineProgramTypeID order by ProgramDate DESC;"); //inner join Organization on z.OrgID = Organization.OrgID
                rptProgramHLOnline.DataBind();
                break;
            case 2:
                rptProgramHLOnline.DataSource = GetData("SELECT OnlineProgramID, convert(varchar, ProgramDate,101) as ProgramDate, OnlineProgramType.OnlineProgramTypeName AS ProgramType from OnlineProgram z inner join OnlineProgramType on z.OnlineProgramTypeID = OnlineProgramType.OnlineProgramTypeID order by ProgramType;"); //inner join Organization on z.OrgID = Organization.OrgID
                rptProgramHLOnline.DataBind();
                break;
        }


    }

    //GO FOR ALL

    protected void OnItemDataBoundAll(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            string ProgramID = (e.Item.FindControl("hfProgramIDAll") as HiddenField).Value;
            string tempProgramCategory = (e.Item.FindControl("hfProgramCategory") as HiddenField).Value;
            Repeater rptAllLL1 = e.Item.FindControl("rptAllLL1") as Repeater;
            Repeater rptAllLL2 = e.Item.FindControl("rptAllLL2") as Repeater;
            Repeater rptAllLL3 = e.Item.FindControl("rptAllLL3") as Repeater;
            Repeater rptAllLL4 = e.Item.FindControl("rptAllLL4") as Repeater;




            if (tempProgramCategory.ToString().Equals("Live Program"))
            {
                // Query 1 for Live
                rptAllLL1.DataSource = GetData(string.Format("SELECT ProgramCategory, LiveProgramStatus as Field1, Case when LiveProgramPaid = 'Y' then 'Not Paid' else 'Paid' end AS Field2, Case when LiveProgramOnOff = 1 then 'On' else 'Off' end AS Field3 From AllPrograms WHERE AllProgramID = " + ProgramID + "", ProgramID));
                rptAllLL1.DataBind();

                // Query 2 for Live
                rptAllLL2.DataSource = GetData(string.Format("SELECT ProgramCategory, EventMonth as Field4, NumberOfChildren AS Field5, NumberOfAdults AS Field6 From AllPrograms WHERE AllProgramID = " + ProgramID + "", ProgramID));
                rptAllLL2.DataBind();

                // Query 3 for Live
                rptAllLL3.DataSource = GetData(string.Format("SELECT ProgramCategory, LiveProgramStreetAddress as Field7, CityCounty AS Field8, State AS Field9 From AllPrograms WHERE AllProgramID = " + ProgramID + "", ProgramID));
                rptAllLL3.DataBind();

                // Query 4 for Live
                rptAllLL4.DataSource = GetData(string.Format("SELECT ProgramCategory, ExtraComments as Field10, LastUpdatedBy AS Field11, LastUpdated AS Field12 From AllPrograms WHERE AllProgramID = " + ProgramID + "", ProgramID));
                rptAllLL4.DataBind();



            }
            else if (tempProgramCategory.ToString().Equals("Online Program"))
            {
                // Query 1 for Online
                rptAllLL1.DataSource = GetData(string.Format("SELECT ProgramCategory, OnlineTeacherName AS Field1, OnlinePrimaryContactEmail AS Field2, OnlineSecondaryEmail AS Field3 From AllPrograms WHERE AllProgramID = " + ProgramID + "", ProgramID));
                rptAllLL1.DataBind();

                // Query 2 for Live
                rptAllLL2.DataSource = GetData(string.Format("SELECT ProgramCategory, EventMonth as Field4, NumberOfChildren AS Field5, NumberOfAdults AS Field6 From AllPrograms WHERE AllProgramID = " + ProgramID + "", ProgramID));
                rptAllLL2.DataBind();

                // Query 3 for Live
                rptAllLL3.DataSource = GetData(string.Format("SELECT ProgramCategory, CityCounty as Field7, State AS Field8, OnlineProgramCountry AS Field9 From AllPrograms WHERE AllProgramID = " + ProgramID + "", ProgramID));
                rptAllLL3.DataBind();

                // Query 4 for Live
                rptAllLL4.DataSource = GetData(string.Format("SELECT ProgramCategory, ExtraComments as Field10, LastUpdatedBy AS Field11, LastUpdated AS Field12 From AllPrograms WHERE AllProgramID = " + ProgramID + "", ProgramID));
                rptAllLL4.DataBind();


            }





        }
    }


    public void createAccordianUsingRepeaterAll(int orderType)
    {
        // 0 = Default
        // 1 = Date
        // 2 = Program Type

        switch (orderType)
        {

            case 0:
                rptProgramHLAll.DataSource = GetData("Select AllProgramID, ProgramCategory, convert(varchar, ProgramDate,101) as ProgramDate, ProgramType From AllPrograms;");
                rptProgramHLAll.DataBind();

                break;
            case 1:
                rptProgramHLAll.DataSource = GetData("Select AllProgramID, ProgramCategory, convert(varchar, ProgramDate,101) as ProgramDate, ProgramType From AllPrograms Order by ProgramDate DESC;");
                rptProgramHLAll.DataBind();
                break;
            case 2:
                rptProgramHLAll.DataSource = GetData("Select AllProgramID, ProgramCategory, convert(varchar, ProgramDate,101) as ProgramDate, ProgramType From AllPrograms Order by ProgramType;");
                rptProgramHLAll.DataBind();
                break;


        }



    }

    protected void btnExportLive_Click(object sender, EventArgs e)
    {

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        String animalReport = "Live Programs Listing";
        String filename = "Created on: " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();
        string onlineName = animalReport + filename;

        SqlCommand cmd = new SqlCommand("Select pt.ProgramName, CONVERT(VARCHAR(15), ProgramDate, 101) as ProgramDate, CONVERT(VARCHAR(15), ProgramTime, 100) as ProgramTime, o.OrgName, ProgramAddress,CityCounty, State, Status, NumberOfChildren, NumberOfAdults," +
            "Case when OnOff = 1 then 'On' else 'Off' end as 'On or Off Site', Case when Paid = 'Y' then 'Not Paid' else 'Paid' end as 'Paid?', ExtraComments FROM Program p inner join ProgramType pt on  p.programtypeid = pt.programtypeid inner join Organization o on p.orgid = o.orgid", sc);

        sc.Open();

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        ds.WriteXml(@"C:\Users\labpatron\Desktop\" + animalReport + ".xls");

        sc.Close();
        string script = "alert('File Successfully Exported to Desktop');";
        System.Web.UI.ScriptManager.RegisterClientScriptBlock(btnExportLive, this.GetType(), "Test", script, true);

    }
    public override void VerifyRenderingInServerForm(Control control)
    {

    }


    protected void btnExportOnline_Click(object sender, EventArgs e)
    {

        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        String animalReport = "Online Programs Listing";
        String filename = "Created on: " + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Day.ToString() + "/" + DateTime.Now.Year.ToString();
        string onlineName = animalReport + filename;

        // string query = "SELECT ProgramDate, NumberOfKids, NumberOfPeople, City, State, Country, TeacherName, ContactEmail, ExtraComments FROM OnlineProgram";



        SqlCommand cmd = new SqlCommand("Select OnlineProgramTypeName, CONVERT(VARCHAR(15), ProgramDate, 101) as ProgramDate, NumberOfKids, NumberOfPeople, " +
            "City, State, Country, TeacherName  as Educator, ContactEmail, ExtraComments, SecondaryEmail FROM OnlineProgram op inner join OnlineProgramType opt on  op.onlineprogramtypeid = opt.onlineprogramtypeid", sc);

        sc.Open();

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        ds.WriteXml(@"C:\Users\labpatron\Desktop\" + animalReport + ".xls");


        sc.Close();
        string script = "alert('File Successfully Exported to Desktop');";
        System.Web.UI.ScriptManager.RegisterClientScriptBlock(btnExportOnline, this.GetType(), "Test", script, true);
    }


    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        // Create new sql commands
        System.Data.SqlClient.SqlCommand update = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullGradeID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand updateGrade = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullEducatorID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand updateEducator = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand deleteEducator = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand deleteGrade = new System.Data.SqlClient.SqlCommand();

        System.Data.SqlClient.SqlCommand pullAnimalID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand updateAnimal = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand deleteAnimal = new System.Data.SqlClient.SqlCommand();


        // Create the sql connections between the commands at sc
        update.Connection = sc;
        pullGradeID.Connection = sc;
        updateGrade.Connection = sc;
        pullEducatorID.Connection = sc;
        updateEducator.Connection = sc;
        deleteEducator.Connection = sc;
        deleteGrade.Connection = sc;
        pullAnimalID.Connection = sc;
        updateAnimal.Connection = sc;
        deleteAnimal.Connection = sc;

        // Clear the parameters for deleting associated table inserts
        deleteEducator.Parameters.Clear();
        deleteGrade.Parameters.Clear();
        deleteAnimal.Parameters.Clear();

        int tempProgramID = Convert.ToInt32(ddlProgramID.SelectedItem.Value);
        SqlConnection con = new SqlConnection(cs);
        DateTime programDate = Convert.ToDateTime(txtProgramDate.Text);
        String month = programDate.ToString("MMMM");
        update.CommandText = "update program set programTypeID = @programTypeID, orgID = @orgID, status = @status, programAddress = @programAddress, citycounty = @cityCounty, state = @state, onOff = @onOff, numberOfChildren = @numOfChildren," +
            "numberOfAdults = @numofAdults, Paid= @paid, programDate = @programDate, programTime = @programTime, eventMonth = @month, extraComments = @comments, lastUpdated = @lastUpdated, lastUpdatedBy = @lastUpdatedBy where programID = @programID";
        update.Parameters.AddWithValue("@programTypeID", ddlProgramType.SelectedItem.Value);
        update.Parameters.AddWithValue("@orgID", ddlOrganization.SelectedItem.Value);
        update.Parameters.AddWithValue("@status", txtStatus.Text.ToString());

        update.Parameters.AddWithValue("@programAddress", txtAddress.Text);
        update.Parameters.AddWithValue("@cityCounty", txtCity.Text + ", " + txtCounty.Text);

        //update.Parameters.AddWithValue("@state", ddlState1.SelectedValue);
        update.Parameters.AddWithValue("@state", txtState.Text.ToString());

        update.Parameters.AddWithValue("@onOff", rboOnOff.SelectedIndex);
        update.Parameters.AddWithValue("@numOfChildren", txtNumOfChildren.Text);
        update.Parameters.AddWithValue("@numofAdults", txtNumOfAdults.Text);
        update.Parameters.AddWithValue("@paid", rboPayment.SelectedIndex);
        update.Parameters.AddWithValue("@programDate", txtProgramDate.Text);
        update.Parameters.AddWithValue("@programTime", txtProgramTime.Text);
        update.Parameters.AddWithValue("@month", month);
        update.Parameters.AddWithValue("@comments", txtComments.Text);

        update.Parameters.AddWithValue("@lastUpdated", DateTime.Today);
        update.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers");
        update.Parameters.AddWithValue("@programID", tempProgramID);
        update.ExecuteNonQuery();

        lblLastUpdated.Text = "Last Updated: " + DateTime.Today;
        lblLastUpdatedBy.Text = "Last Updated By: " + "WildTek Developers";


        // Delete Educators from associated table
        deleteEducator.CommandText = "Delete from ProgramEducators where programID = @programID";
        deleteEducator.Parameters.AddWithValue("@programID", tempProgramID);
        deleteEducator.ExecuteNonQuery();

        // Delete grades from associated table
        deleteGrade.CommandText = "Delete from ProgramGrades where programID = @programID";
        deleteGrade.Parameters.AddWithValue("@programID", tempProgramID);
        deleteGrade.ExecuteNonQuery();

        // Delete animals from associated tables
        deleteAnimal.CommandText = "Delete from ProgramAnimal where programID = @programID";
        deleteAnimal.Parameters.AddWithValue("@programID", tempProgramID);
        deleteAnimal.ExecuteNonQuery();

        // Add updated educators to associated table
        foreach (ListItem li in drpEducators.Items)
        {

            if (li.Selected == true)
            {
                pullEducatorID.Parameters.Clear();
                updateEducator.Parameters.Clear();


                //// Pulls Educator Name based on the selected educator
                //// MAY NEED TO CHANGE IF WE COMPOSITE EDUCATORS
                pullEducatorID.CommandText = "SELECT EducatorID From Educators WHERE EducatorFirstName + ' ' + EducatorLastName = @EducatorName";
                pullEducatorID.Parameters.AddWithValue("@EducatorName", li.Text);
                int tempEducatorID = (int)pullEducatorID.ExecuteScalar();

                //// Inserts programID and EducatorID into Assocaited table ProgramEducators
                updateEducator.CommandText = "Insert into ProgramEducators (ProgramID, EducatorID, LastUpdated, LastUpdatedBy) values (@programID, @educatorID, @lastUpdated, @lastUpdatedBy)";
                updateEducator.Parameters.AddWithValue("@programID", tempProgramID);
                updateEducator.Parameters.AddWithValue("@educatorID", tempEducatorID);
                updateEducator.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateEducator.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateEducator.ExecuteNonQuery();
            }
            else
            {
                continue;
            }
        }

        //Live Program
        foreach (ListItem li in AddGrade.Items)
        {
            if (li.Selected == true)
            {
                pullGradeID.Parameters.Clear();
                updateGrade.Parameters.Clear();
                pullGradeID.CommandText = "SELECT GradeID From Grade WHERE GradeLevel = @GradeLevel";
                pullGradeID.Parameters.AddWithValue("@GradeLevel", li.Text);
                int tempGradeID = (int)pullGradeID.ExecuteScalar();

                //// Insert ProgramID and GradeID into Assocaited table ProgrameID
                updateGrade.CommandText = "Insert into ProgramGrades (ProgramID, GradeID, LastUpdated, LastUpdatedBy) values (@programID, @gradeID, @lastUpdated, @lastUpdatedBy)";
                updateGrade.Parameters.AddWithValue("@programID", tempProgramID);
                updateGrade.Parameters.AddWithValue("@gradeID", tempGradeID);
                updateGrade.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateGrade.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateGrade.ExecuteNonQuery();
            }
            else
            {
                continue;
            }
        }

        //Live Program
        //Pull animalID
        //Insert into onlineAnimal table (selected birds)
        foreach (ListItem li in ddlBirds.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                updateAnimal.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                updateAnimal.CommandText = "Insert into ProgramAnimal (ProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@programID, @animalID, @lastUpdated, @lastUpdatedBy)";
                updateAnimal.Parameters.AddWithValue("@programID", tempProgramID);
                updateAnimal.Parameters.AddWithValue("@animalID", tempAnimalID);
                updateAnimal.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateAnimal.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateAnimal.ExecuteNonQuery();
            }
            else
            {
                continue;
            }

        }

        //Live Program
        //Pull animalID
        //Insert into onlineAnimal table (selected mammals)
        foreach (ListItem li in lstMammals.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                updateAnimal.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                updateAnimal.CommandText = "Insert into ProgramAnimal (ProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@programID, @animalID, @lastUpdated, @lastUpdatedBy)";
                updateAnimal.Parameters.AddWithValue("@programID", tempProgramID);
                updateAnimal.Parameters.AddWithValue("@animalID", tempAnimalID);
                updateAnimal.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateAnimal.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateAnimal.ExecuteNonQuery();
            }
            else
            {
                continue;
            }

        }

        //Live Program
        //Pull animalID
        //Insert into onlineAnimal table (selected reptiles)
        foreach (ListItem li in ddlReptiles.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                updateAnimal.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                updateAnimal.CommandText = "Insert into ProgramAnimal (ProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@programID, @animalID, @lastUpdated, @lastUpdatedBy)";
                updateAnimal.Parameters.AddWithValue("@programID", tempProgramID);
                updateAnimal.Parameters.AddWithValue("@animalID", tempAnimalID);
                updateAnimal.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateAnimal.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateAnimal.ExecuteNonQuery();
            }
            else
            {
                continue;
            }

        }


        //System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        //SqlConnection con2 = new SqlConnection(cs);

        //ddlProgramID.Items.Clear();
        ////call read array
        //con.Open();
        //if (con.State == System.Data.ConnectionState.Open)
        //{

        //    string read = "SELECT ProgramID, convert(varchar, ProgramDate,101) as ProgramDate, ProgramType.ProgramName AS ProgramType, Organization.OrgName As Organization from Program z inner join ProgramType on z.ProgramTypeID = ProgramType.ProgramTypeID inner join Organization on z.OrgID = Organization.OrgID";
        //    SqlCommand cmd = new SqlCommand(read, con);
        //    SqlDataReader myRead = cmd.ExecuteReader();

        //    while (myRead.Read())
        //    {

        //        ddlProgramID.Items.Add((new ListItem(myRead["ProgramID"].ToString(), myRead["ProgramID"].ToString())) + ": " + (new ListItem(myRead["ProgramDate"].ToString(), myRead["ProgramDate"].ToString())) + "--" + (new ListItem(myRead["ProgramType"].ToString(), myRead["ProgramType"].ToString())));


        //    }

        //}
        ddlProgramID.SelectedIndex = 0;
        ddlProgramType.SelectedIndex = 0;
        ddlOrganization.SelectedIndex = 0;
        txtStatus.Text = "";
        txtAddress.Text = "";
        txtCity.Text = "";
        txtCounty.Text = "";
        txtState.Text = "";
        txtNumOfChildren.Text = "";
        txtNumOfAdults.Text = "";
        txtProgramDate.Text = "";
        txtProgramTime.Text = "";
        rboOnOff.ClearSelection();
        rboPayment.ClearSelection();
        drpEducators.ClearSelection();
        ddlBirds.ClearSelection();
        ddlReptiles.ClearSelection();
        lstMammals.ClearSelection();
        AddGrade.ClearSelection();
        txtComments.Text = "";

    }

    //Live Program ID
    protected void ddlProgramID_SelectedIndexChanged1(object sender, EventArgs e)
    {
        //ddlState1.ClearSelection();
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand programType = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand organization = new System.Data.SqlClient.SqlCommand();

        System.Data.SqlClient.SqlCommand pullEducators = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullGrades = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullBird = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullReptile = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullMammal = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        programType.Connection = sc;
        organization.Connection = sc;

        pullEducators.Connection = sc;
        pullGrades.Connection = sc;
        pullBird.Connection = sc;
        pullReptile.Connection = sc;
        pullMammal.Connection = sc;

        insert.Parameters.Clear();
        programType.Parameters.Clear();

        organization.Parameters.Clear();
        pullBird.Parameters.Clear();
        pullEducators.Parameters.Clear();
        pullGrades.Parameters.Clear();
        pullMammal.Parameters.Clear();
        pullReptile.Parameters.Clear();



        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);

        //call read array
        SqlConnection con = new SqlConnection(cs);
        string tempProgramID = ddlProgramID.SelectedItem.Value;
        ddlProgramType.ClearSelection();
        ddlOrganization.ClearSelection();

        insert.CommandText = "select ProgramID, ProgramTypeID, OrgID, Status, ProgramAddress, CityCounty, State, OnOff, NumberOfChildren, NumberOfAdults, paid, convert(varchar, ProgramDate,101) as ProgramDate, CONVERT(VARCHAR(15), ProgramTime, 108) as ProgramTime, EventMonth, ExtraComments, LastUpdated, LastUpdatedBy from Program where" +
                          " ProgramID = @ProgramID";
        insert.Parameters.AddWithValue("@ProgramID", tempProgramID);

        programType.CommandText = "Select ProgramType.ProgramName from ProgramType inner join Program on ProgramType.ProgramTypeID = Program.ProgramTypeID where Program.ProgramID = @programID";
        programType.Parameters.AddWithValue("@programID", tempProgramID);

        organization.CommandText = "Select Organization.OrgName from Organization inner join Program on Organization.OrgID = Program.OrgID where Program.ProgramID = @programID";
        organization.Parameters.AddWithValue("@programID", tempProgramID);

        pullEducators.CommandText = "Select ProgramEducators.EducatorID, Educators.EducatorFirstName + ' ' + Educators.EducatorLastName as EducatorsName from ProgramEducators inner join Educators on Educators.EducatorID = ProgramEducators.EducatorID where ProgramID = @ProgramID";
        pullEducators.Parameters.AddWithValue("@ProgramID", tempProgramID);

        pullGrades.CommandText = "Select Grade.GradeLevel from Grade inner join ProgramGrades on Grade.GradeID = ProgramGrades.GradeID where ProgramID = @ProgramID";
        pullGrades.Parameters.AddWithValue("@ProgramID", tempProgramID);

        pullBird.CommandText = "Select Animal.AnimalName from Animal inner join ProgramAnimal on Animal.AnimalID = ProgramAnimal.AnimalID where Animal.AnimalType = 'bird' and ProgramID = @ProgramID";
        pullBird.Parameters.AddWithValue("@ProgramID", tempProgramID);

        pullReptile.CommandText = "Select Animal.AnimalName from Animal inner join ProgramAnimal on Animal.AnimalID = ProgramAnimal.AnimalID where Animal.AnimalType = 'reptile' and ProgramID = @ProgramID";
        pullReptile.Parameters.AddWithValue("@ProgramID", tempProgramID);

        pullMammal.CommandText = "Select Animal.AnimalName from Animal inner join ProgramAnimal on Animal.AnimalID = ProgramAnimal.AnimalID where Animal.AnimalType = 'mammal' and ProgramID = @ProgramID";
        pullMammal.Parameters.AddWithValue("@ProgramID", tempProgramID); //ddlProgramID.SelectedItem.Value

        try
        {
            con.Open();
            SqlDataReader sdr = insert.ExecuteReader();
            SqlDataReader sdr1 = programType.ExecuteReader();
            SqlDataReader sdr2 = organization.ExecuteReader();
            SqlDataReader sdr3 = pullEducators.ExecuteReader();
            SqlDataReader sdr4 = pullGrades.ExecuteReader();
            SqlDataReader sdr5 = pullBird.ExecuteReader();
            SqlDataReader sdr6 = pullReptile.ExecuteReader();
            SqlDataReader sdr7 = pullMammal.ExecuteReader();

            while (sdr.Read())
            {

                String cityCounty = sdr[5].ToString();
                String[] words = cityCounty.Split(',');
                String city = words[0];
                String county = words[1];
                //txtProgramType.Text = sdr[1].ToString();
                //txtOrganization.Text = sdr[2].ToString();
                txtStatus.Text = sdr[3].ToString();
                txtAddress.Text = sdr[4].ToString();
                txtCity.Text = city;
                txtCounty.Text = county;
                txtState.Text = sdr[6].ToString();
                for (int i = 0; i < ddlProgramType.Items.Count; i++)
                {
                    if (ddlProgramType.Items[i].Value.ToString() == sdr[1].ToString())
                    {
                        ddlProgramType.Items[i].Selected = true;

                    }
                }
                for (int i = 0; i < ddlOrganization.Items.Count; i++)
                {
                    if (ddlOrganization.Items[i].Value.ToString() == sdr[2].ToString())
                    {
                        ddlOrganization.Items[i].Selected = true;

                    }
                }
                //for (int i = 0; i < ddlState1.Items.Count; i++)
                //{

                //    if (ddlState1.Items[i].ToString() == sdr[6].ToString())
                //    {
                //        ddlState1.Items[i].Selected = true;
                //    }
                //}

                //for (int i = 0; i < ddlStatus.Items.Count; i++)
                //{
                //    if (ddlStatus.Items[i].ToString() == sdr[3].ToString())
                //    {
                //        ddlStatus.Items[i].Selected = true;
                //    }
                //}

                if (sdr[7].ToString() == "1")
                {
                    rboOnOff.SelectedIndex = 0;
                }
                else
                {
                    rboOnOff.SelectedIndex = 1;
                }
                //rboOnOff.SelectedItem.Value = sdr[7].ToString();
                txtNumOfChildren.Text = sdr[8].ToString();
                txtNumOfAdults.Text = sdr[9].ToString();

                if (sdr[10].ToString() == "1")
                {
                    rboPayment.SelectedIndex = 0;
                }
                else
                {
                    rboPayment.SelectedIndex = 1;
                }
                //rboPayment.SelectedItem.Value = sdr[10].ToString();
                txtProgramDate.Text = sdr[11].ToString();
                txtProgramTime.Text = sdr[12].ToString();
                //txtMonth.Text = sdr[13].ToString();
                txtComments.Text = sdr[14].ToString();
                lblLastUpdated.Text = "Last Updated: " + sdr[15].ToString();
                lblLastUpdatedBy.Text = "Last Updated By: " + sdr[16].ToString();
            }


            //while (sdr1.Read())
            //{
            //    for (int i = 0; i < ddlProgramType.Items.Count; i++)
            //    {
            //        if (ddlProgramType.Items[i].ToString() == sdr1[0].ToString())
            //        {
            //            ddlProgramType.Items[i].Selected = true;

            //        }
            //    }
            //    //ddlProgramType.SelectedItem.Text = sdr1[0].ToString();
            //}

            //while (sdr2.Read())
            //{
            //    for (int i = 0; i < ddlOrganization.Items.Count; i++)
            //    {
            //        if (ddlOrganization.Items[i].ToString() == sdr2[0].ToString())
            //        {
            //            ddlOrganization.Items[i].Selected = true;

            //        }
            //    }
            //    //ddlOrganization.SelectedItem.Text = sdr2[0].ToString();
            //}

            while (sdr3.Read())
            {
                drpEducators.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < drpEducators.Items.Count; i++)
                {
                    string p = drpEducators.Items[i].ToString();
                    string educators = sdr3.GetString(1);
                    if (p == sdr3.GetString(1))
                    {
                        drpEducators.Items[i].Selected = true;

                    }
                }
                //txtTempEducators.Text += sdr3[1].ToString() + " ";
            }
            while (sdr4.Read())
            {
                AddGrade.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < AddGrade.Items.Count; i++)
                {
                    string p = AddGrade.Items[i].ToString();
                    string grades = sdr4.GetString(0);
                    if (p == sdr4.GetString(0))
                    {
                        AddGrade.Items[i].Selected = true;

                    }
                }
                //txtTempGrades.Text += sdr4[0].ToString() + " ";
            }

            while (sdr5.Read())
            {
                ddlBirds.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < ddlBirds.Items.Count; i++)
                {
                    string p = ddlBirds.Items[i].ToString();
                    string birds = sdr5.GetString(0);
                    if (p == sdr5.GetString(0))
                    {
                        ddlBirds.Items[i].Selected = true;

                    }

                }
                //txtTempBirds.Text += sdr5[0].ToString() + " ";
            }

            while (sdr6.Read())
            {
                ddlReptiles.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < ddlReptiles.Items.Count; i++)
                {
                    string p = ddlReptiles.Items[i].ToString();
                    string reptiles = sdr6.GetString(0);
                    if (p == sdr6.GetString(0))
                    {
                        ddlReptiles.Items[i].Selected = true;

                    }

                }
                //txtTempReptiles.Text += sdr6[0].ToString() + " ";
            }

            while (sdr7.Read())
            {
                lstMammals.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < lstMammals.Items.Count; i++)
                {
                    string p = lstMammals.Items[i].ToString();
                    string mammals = sdr7.GetString(0);
                    if (p == sdr7.GetString(0))
                    {
                        lstMammals.Items[i].Selected = true;

                    }

                }
                //txtTempMammals.Text += sdr7[0].ToString() + " ";
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    //Live Program Delete
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand delete1 = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand delete2 = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand delete3 = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand delete4 = new System.Data.SqlClient.SqlCommand();

        delete1.Connection = sc;
        delete2.Connection = sc;
        delete3.Connection = sc;
        delete4.Connection = sc;


        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);

        //call read array
        SqlConnection con = new SqlConnection(cs);
        string tempProgramID = ddlProgramID.SelectedItem.Value;
        tempProgramID = tempProgramID.Substring(0, 1);

        delete1.CommandText = "Delete from ProgramEducators where ProgramID = @ProgramID";
        delete1.Parameters.AddWithValue("@ProgramID", tempProgramID);

        delete2.CommandText = "Delete from ProgramAnimal where ProgramID = @ProgramID";
        delete2.Parameters.AddWithValue("@ProgramID", tempProgramID);

        delete3.CommandText = "Delete from ProgramGrades where ProgramID = @ProgramID";
        delete3.Parameters.AddWithValue("@ProgramID", tempProgramID);

        delete4.CommandText = "Delete from Program where ProgramID = @ProgramID";
        delete4.Parameters.AddWithValue("@ProgramID", tempProgramID);


        delete1.ExecuteNonQuery();
        delete2.ExecuteNonQuery();
        delete3.ExecuteNonQuery();
        delete4.ExecuteNonQuery();

        ddlProgramID.Items.Clear();
        //call read array
        con.Open();
        if (con.State == System.Data.ConnectionState.Open)
        {

            string read = "SELECT ProgramID, convert(varchar, ProgramDate,101) as ProgramDate, ProgramType.ProgramName AS ProgramType, Organization.OrgName As Organization from Program z inner join ProgramType on z.ProgramTypeID = ProgramType.ProgramTypeID inner join Organization on z.OrgID = Organization.OrgID";
            SqlCommand cmd = new SqlCommand(read, con);
            SqlDataReader myRead = cmd.ExecuteReader();

            while (myRead.Read())
            {

                ddlProgramID.Items.Add((new ListItem(myRead["ProgramID"].ToString(), myRead["ProgramID"].ToString())) + ": " + (new ListItem(myRead["ProgramDate"].ToString(), myRead["ProgramDate"].ToString())) + "--" + (new ListItem(myRead["ProgramType"].ToString(), myRead["ProgramType"].ToString())));


            }


        }



    }



    protected void btnDelete2_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand delete1 = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand delete2 = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand delete3 = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand delete4 = new System.Data.SqlClient.SqlCommand();

        delete1.Connection = sc;
        delete2.Connection = sc;
        delete3.Connection = sc;
        delete4.Connection = sc;


        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);
        string tempOnlineProgramID = ddlOnlineProgramID.SelectedItem.Value.Substring(0, 1);
        //call read array
        SqlConnection con = new SqlConnection(cs);
        delete1.CommandText = "Delete from OnlineEducators where OnlineProgramID = @onlineProgramID";
        delete1.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);

        delete2.CommandText = "Delete from OnlineAnimal where OnlineProgramID = @onlineProgramID";
        delete2.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);

        delete3.CommandText = "Delete from OnlineProgramGrades where OnlineProgramID = @onlineProgramID";
        delete3.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);

        delete4.CommandText = "Delete from OnlineProgram where OnlineProgramID = @onlineProgramID";
        delete4.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);


        delete1.ExecuteNonQuery();
        delete2.ExecuteNonQuery();
        delete3.ExecuteNonQuery();
        delete4.ExecuteNonQuery();

        ddlOnlineProgramID.Items.Clear();
        //call read array
        con.Open();
        if (con.State == System.Data.ConnectionState.Open)
        {

            string read = "SELECT OnlineProgramID, convert(varchar, ProgramDate,101) as ProgramDate, OnlineProgramType.OnlineProgramTypeName AS ProgramType from OnlineProgram z inner join OnlineProgramType on z.OnlineProgramTypeID = OnlineProgramType.OnlineProgramTypeID      ";
            SqlCommand cmd = new SqlCommand(read, con);
            SqlDataReader myRead = cmd.ExecuteReader();

            while (myRead.Read())
            {

                ddlOnlineProgramID.Items.Add(new ListItem(myRead["OnlineProgramID"].ToString(), myRead["OnlineProgramID"].ToString()) + ": " + new ListItem(myRead["ProgramDate"].ToString(), myRead["ProgramDate"].ToString()) + "--" + new ListItem(myRead["ProgramType"].ToString(), myRead["ProgramType"].ToString()));
            }


        }
    }

    protected void btnSubmitLive_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";

        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;


        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand programEducatorInsert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand programAnimalInsert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand programGradeInsert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullProgramID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullEducatorID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullAnimalID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullGradeID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullOrgID = new System.Data.SqlClient.SqlCommand();






        insert.Connection = sc;
        pullOrgID.Connection = sc;
        programEducatorInsert.Connection = sc;
        programAnimalInsert.Connection = sc;
        programGradeInsert.Connection = sc;
        pullProgramID.Connection = sc;
        pullEducatorID.Connection = sc;
        pullAnimalID.Connection = sc;
        pullGradeID.Connection = sc;


        ////Program class attributes
        byte onOff = Convert.ToByte(OnOff.Value);
        string status = txtStatus.Text.ToString();
        int programTypeID = Convert.ToInt32(ddlProgram.SelectedItem.Value);
        string programAddress = Address.Value;
        int numOfChildren = Convert.ToInt32(NumOfChildren.Value);
        int numOfAdult = Convert.ToInt32(NumOfAdults.Value);
        char waitForPayment = Convert.ToChar(Payment.SelectedItem.Value);
        DateTime programDate = Convert.ToDateTime(ProgramDate.Value);
        string programTime = ProgramTime.Value;
        string extraComments = Comments.Value;
        string cityCounty = CityCounty.Value;
        string state = statesDropDown.SelectedItem.Text;

        //// TEMPORARY UPDATED AND UPDATEDBY
        string tempLastUpdatedBy = "TempWildTekDevs";
        DateTime tempLastUpdated = DateTime.Now;

        ////Organization class attributes
        int orgID = Convert.ToInt32(dropDownOrganization.SelectedItem.Value);




        Program newProgram = new Program(onOff, status, programAddress, cityCounty, programTypeID, numOfChildren, numOfAdult, waitForPayment, programDate, programTime, extraComments);


        insert.CommandText = "insert into dbo.Program (programTypeID, orgID, status, programAddress, CityCounty, state, onOff, numberOfChildren, numberOfAdults, paid, programDate, programTime, EventMonth, ExtraComments, LastUpdated, LastUpdatedBy) values "
            + "(@programTypeID, @orgID, @status, @programAddress, @cityCounty, @state, @onOff, @numberOfChildren, @numberOfAdults, @paid, @programDate, @programTime, @eventMonth, @extraComments, @lastUpdated, @lastUpdatedBy)";

        insert.Parameters.AddWithValue("@programTypeID", newProgram.getProgramTypeID());
        insert.Parameters.AddWithValue("@orgID", orgID);
        insert.Parameters.AddWithValue("@programAddress", newProgram.getProgramAddress());
        insert.Parameters.AddWithValue("@cityCounty", newProgram.getCityCounty());
        insert.Parameters.AddWithValue("@State", statesDropDown.SelectedItem.Text);
        insert.Parameters.AddWithValue("@onOff", newProgram.getOnOff());
        insert.Parameters.AddWithValue("@numberOfChildren", newProgram.getNumOfChildren());
        insert.Parameters.AddWithValue("@numberOfAdults", newProgram.getNumOfAdult());
        insert.Parameters.AddWithValue("@paid", newProgram.getWaitForPayment());
        insert.Parameters.AddWithValue("@programDate", newProgram.getDate());
        insert.Parameters.AddWithValue("@programTime", newProgram.getTime());
        insert.Parameters.AddWithValue("@eventMonth", newProgram.getDate().ToString("MMMM"));
        insert.Parameters.AddWithValue("@status", newProgram.getStatus());
        insert.Parameters.AddWithValue("@extraComments", newProgram.getComments());
        insert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
        insert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
                                                                             //insert.Parameters.AddWithValue("@grade", newProgram.getGrade());

        insert.ExecuteNonQuery();

        // Pulls Program ID
        pullProgramID.CommandText = "SELECT MAX(ProgramID) From Program";
        int tempProgramID = (int)pullProgramID.ExecuteScalar();

        // Pulls Educator Name based on the selected educator
        foreach (ListItem li in lstSelectEducatorsLive.Items)
        {
            if (li.Selected == true)
            {
                pullEducatorID.Parameters.Clear();
                programEducatorInsert.Parameters.Clear();


                //// Pulls Educator Name based on the selected educator
                //// MAY NEED TO CHANGE IF WE COMPOSITE EDUCATORS
                pullEducatorID.CommandText = "SELECT EducatorID From Educators WHERE (EducatorFirstName + ' ' + EducatorLastName) = @EducatorName";
                pullEducatorID.Parameters.AddWithValue("@EducatorName", li.Text);
                int tempEducatorID = (int)pullEducatorID.ExecuteScalar();
                // string stempProgramID = ddlProgram.SelectedItem.Value.Substring(0, 1);

                //// Inserts programID and EducatorID into Assocaited table ProgramEducators
                programEducatorInsert.CommandText = "INSERT INTO ProgramEducators (ProgramID, EducatorID, LastUpdated, LastUpdatedBy) values (@programID, @educatorID, @lastUpdated, @lastUpdatedBy)";
                programEducatorInsert.Parameters.AddWithValue("@programID", tempProgramID);
                programEducatorInsert.Parameters.AddWithValue("@educatorID", tempEducatorID);
                programEducatorInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
                programEducatorInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
                programEducatorInsert.ExecuteNonQuery();
            }
            else
            {
                continue;
            }
        }


        // Pull program animal based on selected Animal
        foreach (ListItem li in lstSelectBirdsLive.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                programAnimalInsert.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                programAnimalInsert.CommandText = "INSERT INTO ProgramAnimal (ProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@programID, @animalID, @lastUpdated, @lastUpdatedBy)";
                programAnimalInsert.Parameters.AddWithValue("@programID", tempProgramID);
                programAnimalInsert.Parameters.AddWithValue("@animalID", tempAnimalID);
                programAnimalInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
                programAnimalInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
                programAnimalInsert.ExecuteNonQuery();
            }
            else
            {
                continue;
            }

        }

        foreach (ListItem li in lstSelectMammalsLive.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                programAnimalInsert.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                programAnimalInsert.CommandText = "INSERT INTO ProgramAnimal (ProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@programID, @animalID, @lastUpdated, @lastUpdatedBy)";
                programAnimalInsert.Parameters.AddWithValue("@programID", tempProgramID);
                programAnimalInsert.Parameters.AddWithValue("@animalID", tempAnimalID);
                programAnimalInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
                programAnimalInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
                programAnimalInsert.ExecuteNonQuery();
            }
            else
            {
                continue;
            }
        }

        foreach (ListItem li in lstSelectReptilesLive.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                programAnimalInsert.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                programAnimalInsert.CommandText = "INSERT INTO ProgramAnimal (ProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@programID, @animalID, @lastUpdated, @lastUpdatedBy)";
                programAnimalInsert.Parameters.AddWithValue("@programID", tempProgramID);
                programAnimalInsert.Parameters.AddWithValue("@animalID", tempAnimalID);
                programAnimalInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
                programAnimalInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
                programAnimalInsert.ExecuteNonQuery();
            }
            else
            {
                continue;
            }
        }


        //// Pull program grade based on selected Grade
        foreach (ListItem li in lstGrades.Items)
        {
            if (li.Selected == true)
            {
                pullGradeID.Parameters.Clear();
                programGradeInsert.Parameters.Clear();
                pullGradeID.CommandText = "SELECT GradeID From Grade WHERE GradeLevel = @GradeLevel";
                pullGradeID.Parameters.AddWithValue("@GradeLevel", li.Text);
                int tempGradeID = (int)pullGradeID.ExecuteScalar();

                //// Insert ProgramID and GradeID into Assocaited table ProgrameID
                programGradeInsert.CommandText = "INSERT INTO ProgramGrades (ProgramID, GradeID, LastUpdated, LastUpdatedBy) values (@programID, @gradeID, @lastUpdated, @lastUpdatedBy)";
                programGradeInsert.Parameters.AddWithValue("@programID", tempProgramID);
                programGradeInsert.Parameters.AddWithValue("@gradeID", tempGradeID);
                programGradeInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
                programGradeInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
                programGradeInsert.ExecuteNonQuery();
            }
            else
            {
                continue;
            }
        }

        ProgramDate.Value = "";
        ProgramTime.Value = "";
        ddlProgram.SelectedValue = "0";
        dropDownOrganization.SelectedValue = "0";
        lstSelectEducatorsLive.ClearSelection();
        lstSelectBirdsLive.ClearSelection();
        lstSelectReptilesLive.ClearSelection();
        lstSelectMammalsLive.ClearSelection();
        //Status.SelectedValue = "0";
        Payment.SelectedValue = "0";
        OnOff.Value = "";
        Address.Value = "";
        CityCounty.Value = "";
        statesDropDown.ClearSelection();
        lstGrades.ClearSelection();
        NumOfChildren.Value = "";
        NumOfAdults.Value = "";
        Comments.Value = "";
    }

    protected void btnSubmitOnline_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

        //sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;

        sc.Open();
        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullOnlineProgramID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullAnimalID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand onlineAnimalInsert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullEducatorID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand onlineEducatorsInsert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullGradeID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand onlineProgramGradesInsert = new System.Data.SqlClient.SqlCommand();

        insert.Connection = sc;

        pullOnlineProgramID.Connection = sc;
        pullAnimalID.Connection = sc;
        onlineAnimalInsert.Connection = sc;

        pullEducatorID.Connection = sc;
        onlineEducatorsInsert.Connection = sc;

        pullGradeID.Connection = sc;
        onlineProgramGradesInsert.Connection = sc;

        //Online Program ;
        //int onlineProgramTypeID = Convert.ToInt32(ddlProgramType.SelectedItem.Value);
        int typeID = Convert.ToInt32(lstOnlineProgramType.SelectedValue);
        int numOfKids = Convert.ToInt32(OnlineNumOfChildren.Value);
        int numOfPeople = Convert.ToInt32(OnlineNumOfAdults.Value);
        string city = OnlineCityCounty.Value;
        string stateTerritory = OnlineState.SelectedValue;
        string country = ddlCountry.SelectedValue.ToString();
        string teacherName = AddOnlineTeacher.Value;
        string contactEmail = ContactEmail.Value;
        string extraComments = OnlineComments.Value;
        string secondaryEmail = SecondaryEmail.Value;
        DateTime programDate = Convert.ToDateTime(ProgramDate.Value);
        string programTime = ProgramTime.Value;

        //Temporary LastUpdated and LastUpdatedBy
        DateTime tempLastUpdated = DateTime.Today;
        String tempLastUpdatedBy = "TempWildTekDevs";

        // OnlineProgram table inserts
        OnlineProgram newOnlineProgram = new OnlineProgram(programDate, typeID, numOfKids, numOfPeople, city, stateTerritory, country, teacherName, contactEmail, extraComments, secondaryEmail);

        insert.CommandText = "insert into dbo.OnlineProgram (programDate, month, onlineProgramTypeID, numberOfKids, numberOfPeople, city, state, country, teacherName, contactEmail, extraComments, lastUpdated, lastUpdatedBy, secondaryEmail) " +
            "values (@programDate, @month, @typeID, @numOfKids, @numofPeople, @city, @state, @country, @teacherName, @contactEmail, @extraComments, @lastUpdated, @lastUpdatedBy, @secondaryEmail)";

        insert.Parameters.AddWithValue("@programDate", newOnlineProgram.getDate());
        insert.Parameters.AddWithValue("@month", newOnlineProgram.getDate().ToString("MMMM"));
        insert.Parameters.AddWithValue("@typeID", newOnlineProgram.getType());
        insert.Parameters.AddWithValue("@numOfKids", newOnlineProgram.getKidsInClass());
        insert.Parameters.AddWithValue("@numOfPeople", newOnlineProgram.getNumOfPeople());
        insert.Parameters.AddWithValue("@city", newOnlineProgram.getCity());
        insert.Parameters.AddWithValue("@state", newOnlineProgram.getstateTerritory());
        insert.Parameters.AddWithValue("@country", newOnlineProgram.getCountry());
        insert.Parameters.AddWithValue("@teacherName", newOnlineProgram.getTeacher());
        insert.Parameters.AddWithValue("@contactEmail", newOnlineProgram.getEmail());
        insert.Parameters.AddWithValue("@extraComments", newOnlineProgram.getComments());
        insert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated);
        insert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy);
        insert.Parameters.AddWithValue("@secondaryEmail", newOnlineProgram.getSecondaryEmail());

        insert.ExecuteNonQuery();

        //Pull onlineProgramID
        pullOnlineProgramID.CommandText = "Select MAX(onlineProgramID) from OnlineProgram";
        int tempOnlineProgramID = (int)pullOnlineProgramID.ExecuteScalar();


        // Pulls Educator Name based on the selected educator
        foreach (ListItem li in lstOnlineEducators.Items)
        {
            if (li.Selected == true)
            {
                pullEducatorID.Parameters.Clear();
                onlineEducatorsInsert.Parameters.Clear();


                //// Pulls Educator Name based on the selected educator
                //// MAY NEED TO CHANGE IF WE COMPOSITE EDUCATORS
                pullEducatorID.CommandText = "SELECT EducatorID From Educators WHERE EducatorFirstName = @EducatorFN";
                pullEducatorID.Parameters.AddWithValue("@EducatorFN", li.Text);
                int tempEducatorID = (int)pullEducatorID.ExecuteScalar();

                //// Inserts programID and EducatorID into Assocaited table ProgramEducators
                onlineEducatorsInsert.CommandText = "Insert into OnlineEducators (OnlineProgramID, EducatorID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @educatorID, @lastUpdated, @lastUpdatedBy)";
                onlineEducatorsInsert.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
                onlineEducatorsInsert.Parameters.AddWithValue("@educatorID", tempEducatorID);
                onlineEducatorsInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
                onlineEducatorsInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
                onlineEducatorsInsert.ExecuteNonQuery();
            }
            else
            {
                continue;
            }
        }

        //Pull animalID
        //Insert into onlineAnimal table
        foreach (ListItem li in lstBirdOnline.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                onlineAnimalInsert.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                onlineAnimalInsert.CommandText = "Insert into OnlineAnimal (OnlineProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @animalID, @lastUpdated, @lastUpdatedBy)";
                onlineAnimalInsert.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
                onlineAnimalInsert.Parameters.AddWithValue("@animalID", tempAnimalID);
                onlineAnimalInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
                onlineAnimalInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
                onlineAnimalInsert.ExecuteNonQuery();
            }
            else
            {
                continue;
            }

        }

        foreach (ListItem li in lstMammalsOnline.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                onlineAnimalInsert.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                onlineAnimalInsert.CommandText = "Insert into OnlineAnimal (OnlineProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @animalID, @lastUpdated, @lastUpdatedBy)";
                onlineAnimalInsert.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
                onlineAnimalInsert.Parameters.AddWithValue("@animalID", tempAnimalID);
                onlineAnimalInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
                onlineAnimalInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
                onlineAnimalInsert.ExecuteNonQuery();
            }
            else
            {
                continue;
            }

        }

        foreach (ListItem li in lstReptilesOnline.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                onlineAnimalInsert.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);
                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();



                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                onlineAnimalInsert.CommandText = "Insert into OnlineAnimal (OnlineProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @animalID, @lastUpdated, @lastUpdatedBy)";
                onlineAnimalInsert.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
                onlineAnimalInsert.Parameters.AddWithValue("@animalID", tempAnimalID);
                onlineAnimalInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
                onlineAnimalInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
                onlineAnimalInsert.ExecuteNonQuery();
            }
            else
            {
                continue;
            }

        }

        //Insert into onlineProgramGrades table
        foreach (ListItem li in OnlineGrades.Items)
        {
            if (li.Selected == true)
            {
                pullGradeID.Parameters.Clear();
                onlineProgramGradesInsert.Parameters.Clear();
                pullGradeID.CommandText = "SELECT GradeID From Grade WHERE GradeLevel = @GradeLevel";
                pullGradeID.Parameters.AddWithValue("@GradeLevel", li.Text);
                int tempGradeID = (int)pullGradeID.ExecuteScalar();

                //// Insert ProgramID and GradeID into Assocaited table ProgrameID
                onlineProgramGradesInsert.CommandText = "Insert into OnlineProgramGrades (OnlineProgramID, GradeID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @gradeID, @lastUpdated, @lastUpdatedBy)";
                onlineProgramGradesInsert.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
                onlineProgramGradesInsert.Parameters.AddWithValue("@gradeID", tempGradeID);
                onlineProgramGradesInsert.Parameters.AddWithValue("@lastUpdated", tempLastUpdated); // LU
                onlineProgramGradesInsert.Parameters.AddWithValue("@lastUpdatedBy", tempLastUpdatedBy); // LUB
                onlineProgramGradesInsert.ExecuteNonQuery();
            }
            else
            {
                continue;
            }
        }
    }

    protected void ddlOrderBy_SelectedIndexChanged(object sender, EventArgs e)
    {
        int OrderSelect = ddlOrderBy.SelectedIndex;
        createAccordianUsingRepeaterAll(OrderSelect);
        createAccordianUsingRepeaterLive(OrderSelect);
        createAccordianUsingRepeaterOnline(OrderSelect);
    }

    protected void btnOnlineUpdate_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand update = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullGradeID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand updateGrade = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullEducatorID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand updateEducator = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand deleteEducator = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand deleteGrade = new System.Data.SqlClient.SqlCommand();

        System.Data.SqlClient.SqlCommand pullAnimalID = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand updateOnlineAnimal = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand deleteOnlineAnimal = new System.Data.SqlClient.SqlCommand();




        update.Connection = sc;
        pullGradeID.Connection = sc;
        updateGrade.Connection = sc;
        pullEducatorID.Connection = sc;
        updateEducator.Connection = sc;
        deleteEducator.Connection = sc;
        deleteGrade.Connection = sc;
        pullAnimalID.Connection = sc;
        updateOnlineAnimal.Connection = sc;
        deleteOnlineAnimal.Connection = sc;

        deleteEducator.Parameters.Clear();
        deleteGrade.Parameters.Clear();
        deleteOnlineAnimal.Parameters.Clear();

        SqlConnection con = new SqlConnection(cs);
        DateTime programDate = Convert.ToDateTime(txtOnlineProgramDate.Text);
        String month = programDate.ToString("MMMM");
        string tempOnlineProgramID = ddlOnlineProgramID.SelectedItem.Value;
        update.CommandText = "update onlineProgram set programDate = @programDate, month = @month, onlineProgramTypeID = @onlineTypeID, numberOfKids = @numOfKids, numberOfPeople = @numOfAdults, " +
            "city = @city, state= @state, country = @country, teacherName = @teacherName, contactEmail = @contactEmail, extraComments= @comments, secondaryEmail=@secondaryEmail where onlineProgramID = @onlineProgramID";
        update.Parameters.AddWithValue("onlineProgramID", tempOnlineProgramID);
        update.Parameters.AddWithValue("@programDate", txtOnlineProgramDate.Text);
        update.Parameters.AddWithValue("@month", month);
        update.Parameters.AddWithValue("@onlineTypeID", tempOnlineProgramID); // may need to be changed.
        update.Parameters.AddWithValue("@numOfKids", txtNumOfOnlineKids.Text);
        update.Parameters.AddWithValue("@numofAdults", txtNumOfOnlineAdults.Text);
        update.Parameters.AddWithValue("@city", txtOCity.Text);
        update.Parameters.AddWithValue("@state", txtOState.Text);
        update.Parameters.AddWithValue("@country", txtOCountry.Text);
        update.Parameters.AddWithValue("@teacherName", txtOnlineTeacher.Text);
        update.Parameters.AddWithValue("@contactEmail", txtOEmail.Text);
        update.Parameters.AddWithValue("@comments", txtOComments.Text);
        update.Parameters.AddWithValue("@lastUpdated", DateTime.Today);
        update.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers");
        update.Parameters.AddWithValue("@secondaryEmail", txtSecondaryEmail.Text);
        update.ExecuteNonQuery();

        lblLastUpdated.Text = "Last Updated: " + DateTime.Today;
        lblLastUpdatedBy.Text = "Last Updated By: " + "WildTek Developers";

        // Delete Educators from associated table
        deleteEducator.CommandText = "Delete from OnlineEducators where OnlineProgramID = @onlineProgramID";
        deleteEducator.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
        deleteEducator.ExecuteNonQuery();

        // Delete grades from associated table
        deleteGrade.CommandText = "Delete from OnlineProgramGrades where OnlineProgramID = @onlineProgramID";
        deleteGrade.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
        deleteGrade.ExecuteNonQuery();

        // Delete animals from associated tables
        deleteOnlineAnimal.CommandText = "Delete from OnlineAnimal where OnlineProgramID = @onlineProgramID";
        deleteOnlineAnimal.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
        deleteOnlineAnimal.ExecuteNonQuery();

        // Add updated educators to associated table
        foreach (ListItem li in lstOEducators.Items)
        {

            if (li.Selected == true)
            {
                pullEducatorID.Parameters.Clear();
                updateEducator.Parameters.Clear();


                //// Pulls Educator Name based on the selected educator
                //// MAY NEED TO CHANGE IF WE COMPOSITE EDUCATORS
                pullEducatorID.CommandText = "SELECT EducatorID From Educators WHERE EducatorFirstName = @EducatorFN";
                pullEducatorID.Parameters.AddWithValue("@EducatorFN", li.Text);
                int tempEducatorID = (int)pullEducatorID.ExecuteScalar();

                //// Inserts programID and EducatorID into Assocaited table ProgramEducators
                updateEducator.CommandText = "Insert into OnlineEducators (OnlineProgramID, EducatorID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @educatorID, @lastUpdated, @lastUpdatedBy)";
                updateEducator.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
                updateEducator.Parameters.AddWithValue("@educatorID", tempEducatorID);
                updateEducator.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateEducator.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateEducator.ExecuteNonQuery();
            }
            else
            {
                continue;
            }
        }

        foreach (ListItem li in lstOGrades.Items)
        {
            if (li.Selected == true)
            {
                pullGradeID.Parameters.Clear();
                updateGrade.Parameters.Clear();
                pullGradeID.CommandText = "SELECT GradeID From Grade WHERE GradeLevel = @GradeLevel";
                pullGradeID.Parameters.AddWithValue("@GradeLevel", li.Text);
                int tempGradeID = (int)pullGradeID.ExecuteScalar();

                //// Insert ProgramID and GradeID into Assocaited table ProgrameID
                updateGrade.CommandText = "Insert into OnlineProgramGrades (OnlineProgramID, GradeID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @gradeID, @lastUpdated, @lastUpdatedBy)";
                updateGrade.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
                updateGrade.Parameters.AddWithValue("@gradeID", tempGradeID);
                updateGrade.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateGrade.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateGrade.ExecuteNonQuery();
            }
            else
            {
                continue;
            }
        }


        //Pull animalID
        //Insert into onlineAnimal table (selected birds)
        foreach (ListItem li in lstOBirds.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                updateOnlineAnimal.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                updateOnlineAnimal.CommandText = "Insert into OnlineAnimal (OnlineProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @animalID, @lastUpdated, @lastUpdatedBy)";
                updateOnlineAnimal.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
                updateOnlineAnimal.Parameters.AddWithValue("@animalID", tempAnimalID);
                updateOnlineAnimal.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateOnlineAnimal.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateOnlineAnimal.ExecuteNonQuery();
            }
            else
            {
                continue;
            }

        }

        //Pull animalID
        //Insert into onlineAnimal table (selected mammals)
        foreach (ListItem li in lstOMammals.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                updateOnlineAnimal.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                updateOnlineAnimal.CommandText = "Insert into OnlineAnimal (OnlineProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @animalID, @lastUpdated, @lastUpdatedBy)";
                updateOnlineAnimal.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
                updateOnlineAnimal.Parameters.AddWithValue("@animalID", tempAnimalID);
                updateOnlineAnimal.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateOnlineAnimal.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateOnlineAnimal.ExecuteNonQuery();
            }
            else
            {
                continue;
            }

        }

        //Pull animalID
        //Insert into onlineAnimal table (selected reptiles)
        foreach (ListItem li in lstOReptiles.Items)
        {
            if (li.Selected == true)
            {
                pullAnimalID.Parameters.Clear();
                updateOnlineAnimal.Parameters.Clear();
                pullAnimalID.CommandText = "SELECT AnimalID From Animal WHERE AnimalName = @AnimalName";
                pullAnimalID.Parameters.AddWithValue("@AnimalName", li.Text);

                int tempAnimalID = (int)pullAnimalID.ExecuteScalar();

                // Insert ProgramID and AnimalID into Assocaited table ProgramAnimal
                updateOnlineAnimal.CommandText = "Insert into OnlineAnimal (OnlineProgramID, AnimalID, LastUpdated, LastUpdatedBy) values (@onlineProgramID, @animalID, @lastUpdated, @lastUpdatedBy)";
                updateOnlineAnimal.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);
                updateOnlineAnimal.Parameters.AddWithValue("@animalID", tempAnimalID);
                updateOnlineAnimal.Parameters.AddWithValue("@lastUpdated", DateTime.Today); // LU
                updateOnlineAnimal.Parameters.AddWithValue("@lastUpdatedBy", "WildTek Developers"); // LUB
                updateOnlineAnimal.ExecuteNonQuery();
            }
            else
            {
                continue;
            }

        }

        ddlOnlineProgramID.SelectedIndex = 0;
        ddlOnlineProgramType.SelectedIndex = 0;
        txtOnlineTeacher.Text = "";
        txtOCity.Text = "";
        txtOCountry.Text = "";
        txtOState.Text = "";
        txtNumOfOnlineKids.Text = "";
        txtNumOfOnlineAdults.Text = "";
        txtOnlineProgramDate.Text = "";
        txtOEmail.Text = "";
        rboOnOff.ClearSelection();
        rboPayment.ClearSelection();
        lstOEducators.ClearSelection();
        lstOBirds.ClearSelection();
        lstOReptiles.ClearSelection();
        lstOMammals.ClearSelection();
        lstOGrades.ClearSelection();
        txtOComments.Text = "";






        //ddlOnlineProgramID.Items.Clear();
        ////call read array
        //con.Open();
        //if (con.State == System.Data.ConnectionState.Open)
        //{

        //    string read = "SELECT OnlineProgramID, convert(varchar, ProgramDate,101) as ProgramDate, OnlineProgramType.OnlineProgramTypeName AS ProgramType from OnlineProgram z inner join OnlineProgramType on z.OnlineProgramTypeID = OnlineProgramType.OnlineProgramTypeID      ";
        //    SqlCommand cmd = new SqlCommand(read, con);
        //    SqlDataReader myRead = cmd.ExecuteReader();

        //    while (myRead.Read())
        //    {

        //        ddlOnlineProgramID.Items.Add(new ListItem(myRead["OnlineProgramID"].ToString(), myRead["OnlineProgramID"].ToString()) + ": " + new ListItem(myRead["ProgramDate"].ToString(), myRead["ProgramDate"].ToString()) + "--" + new ListItem(myRead["ProgramType"].ToString(), myRead["ProgramType"].ToString()));
        //        // ddlAnimal.DataBind();

        //    }
        //}
    }


    //MEG ADDED TO PROGRAMS.ASPX
    protected void ddlOnlineProgramID_SelectedIndexChanged1(object sender, EventArgs e)
    {
        ddlOnlineProgramType.ClearSelection();
        lstOEducators.ClearSelection();
        lstOGrades.ClearSelection();
        lstOBirds.ClearSelection();
        lstOReptiles.ClearSelection();
        lstOMammals.ClearSelection();



        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand onlineProgramType = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullEducators = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullGrades = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullBird = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullReptile = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand pullMammal = new System.Data.SqlClient.SqlCommand();
        insert.Connection = sc;
        onlineProgramType.Connection = sc;
        pullEducators.Connection = sc;
        pullGrades.Connection = sc;
        pullBird.Connection = sc;
        pullReptile.Connection = sc;
        pullMammal.Connection = sc;

        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);

        //call read array
        SqlConnection con = new SqlConnection(cs);

        insert.Parameters.Clear();
        onlineProgramType.Parameters.Clear();
        pullBird.Parameters.Clear();
        pullEducators.Parameters.Clear();
        pullGrades.Parameters.Clear();
        pullMammal.Parameters.Clear();
        pullReptile.Parameters.Clear();

        string tempOnlineProgramID = ddlOnlineProgramID.SelectedItem.Value;


        insert.CommandText = "select OnlineProgramID,  convert(varchar, ProgramDate,101) as ProgramDate, Month, OnlineProgramTypeID, NumberOfKids, NumberOfPeople, City, State, Country, TeacherName, ContactEmail, ExtraComments, LastUpdated, LastUpdatedBy, secondaryEmail from OnlineProgram where OnlineProgramID = @onlineProgramID";
        insert.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);

        onlineProgramType.CommandText = "Select OnlineProgramType.OnlineProgramTypeName from OnlineProgramType inner join OnlineProgram on OnlineProgramType.OnlineProgramTypeID = OnlineProgram.OnlineProgramTypeID where OnlineProgram.OnlineProgramID = @onlineProgramID";
        onlineProgramType.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);


        //pullEducators.CommandText = "Select Educators.EducatorFirstName from Educators inner join OnlineEducators on Educators.EducatorID = OnlineEducators.EducatorID where OnlineProgramID = @onlineProgramID";


        pullEducators.CommandText = "Select OnlineEducators.EducatorID, Educators.EducatorFirstName + ' ' + Educators.EducatorLastName as EducatorsName from OnlineEducators inner join Educators on Educators.EducatorID = OnlineEducators.EducatorID where OnlineProgramID = @onlineProgramID";
        pullEducators.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);

        pullGrades.CommandText = "Select Grade.GradeLevel from Grade inner join OnlineProgramGrades on Grade.GradeID = OnlineProgramGrades.GradeID where OnlineProgramID = @onlineProgramID";
        pullGrades.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);

        pullBird.CommandText = "Select Animal.AnimalName from Animal inner join OnlineAnimal on Animal.AnimalID = OnlineAnimal.AnimalID where Animal.AnimalType = 'bird' and OnlineProgramID = @onlineProgramID";
        pullBird.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);

        pullReptile.CommandText = "Select Animal.AnimalName from Animal inner join OnlineAnimal on Animal.AnimalID = OnlineAnimal.AnimalID where Animal.AnimalType = 'reptile' and OnlineProgramID = @onlineProgramID";
        pullReptile.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);

        pullMammal.CommandText = "Select Animal.AnimalName from Animal inner join OnlineAnimal on Animal.AnimalID = OnlineAnimal.AnimalID where Animal.AnimalType = 'mammal' and OnlineProgramID = @onlineProgramID";
        pullMammal.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);

        try
        {
            con.Open();
            SqlDataReader sdr = insert.ExecuteReader();
            SqlDataReader sdr1 = onlineProgramType.ExecuteReader();
            SqlDataReader sdr2 = pullEducators.ExecuteReader();
            SqlDataReader sdr3 = pullGrades.ExecuteReader();
            SqlDataReader sdr4 = pullBird.ExecuteReader();
            SqlDataReader sdr5 = pullReptile.ExecuteReader();
            SqlDataReader sdr6 = pullMammal.ExecuteReader();
            while (sdr.Read())
            {

                txtOnlineProgramDate.Text = sdr[1].ToString();
                txtNumOfOnlineKids.Text = sdr[4].ToString();
                txtNumOfOnlineAdults.Text = sdr[5].ToString();
                txtOCity.Text = sdr[6].ToString();
                txtOState.Text = sdr[7].ToString();
                txtOCountry.Text = sdr[8].ToString();
                txtOnlineTeacher.Text = sdr[9].ToString();
                txtOEmail.Text = sdr[10].ToString();
                txtOComments.Text = sdr[11].ToString();


                lblLastUpdated.Text = "Last Updated: " + sdr[12].ToString();
                lblLastUpdatedBy.Text = "Last Updated By: " + sdr[13].ToString();
            }


            while (sdr1.Read())
            {
                for (int i = 0; i < ddlOnlineProgramType.Items.Count; i++)
                {
                    if (ddlOnlineProgramType.Items[i].ToString() == sdr1[0].ToString())
                    {
                        ddlOnlineProgramType.Items[i].Selected = true;
                    }
                }
                //ddlOnlineProgramType.SelectedItem.Text = sdr1[0].ToString();
            }

            while (sdr2.Read())
            {
                lstOEducators.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < lstOEducators.Items.Count; i++)
                {
                    string p = lstOEducators.Items[i].ToString();
                    string educators = sdr2.GetString(1);
                    if (p == sdr2.GetString(1))
                    {
                        lstOEducators.Items[i].Selected = true;

                    }
                }
                //int id = Convert.ToInt32(sdr2[0].ToString());
                //drpEducators.SelectedIndex = id;


                //txtEducators.Text += sdr2.GetString(1) + " ";

                //int count = sdr2.GetInt32(0);
                //for (int i =0; i<count;i++)
                //{
                //    drpEducators.SelectedIndex = i;
                //}
            }
            while (sdr3.Read())
            {
                lstOGrades.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < lstOGrades.Items.Count; i++)
                {
                    string p = lstOGrades.Items[i].ToString();
                    string grades = sdr3.GetString(0);
                    if (p == sdr3.GetString(0))
                    {
                        lstOGrades.Items[i].Selected = true;

                    }
                }
                //txtTempGrade.Text += sdr3.GetString(0) + " ";
            }

            while (sdr4.Read())
            {
                lstOBirds.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < lstOBirds.Items.Count; i++)
                {
                    string p = lstOBirds.Items[i].ToString();
                    string birds = sdr4.GetString(0);
                    if (p == sdr4.GetString(0))
                    {
                        lstOBirds.Items[i].Selected = true;

                    }

                }
                //txtTempBird.Text += sdr4.GetString(0) + " ";
            }

            while (sdr5.Read())
            {
                lstOReptiles.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < lstOReptiles.Items.Count; i++)
                {
                    string p = lstOReptiles.Items[i].ToString();
                    string reptiles = sdr5.GetString(0);
                    if (p == sdr5.GetString(0))
                    {
                        lstOReptiles.Items[i].Selected = true;

                    }

                }
                //txtTempReptiles.Text += sdr5.GetString(0) + " ";
            }

            while (sdr6.Read())
            {
                lstOMammals.SelectionMode = ListSelectionMode.Multiple;
                for (int i = 0; i < lstOMammals.Items.Count; i++)
                {
                    string p = lstOMammals.Items[i].ToString();
                    string mammals = sdr6.GetString(0);
                    if (p == sdr6.GetString(0))
                    {
                        lstOMammals.Items[i].Selected = true;

                    }

                }
                //txtTempMammals.Text += sdr6.GetString(0) + " ";
            }

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }


    protected void btnOnlineDelete_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
        // sc.ConnectionString = @"Server=localhost;Database=WildTek;Trusted_Connection=Yes;";
        String cs = ConfigurationManager.ConnectionStrings["WildTekConnectionString"].ConnectionString;
        sc.ConnectionString = cs;
        sc.Open();

        System.Data.SqlClient.SqlCommand delete1 = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand delete2 = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand delete3 = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlCommand delete4 = new System.Data.SqlClient.SqlCommand();

        delete1.Connection = sc;
        delete2.Connection = sc;
        delete3.Connection = sc;
        delete4.Connection = sc;


        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ModalView", "<script>$function(){ $('#myModal').modal('show');});</script>", false);
        string tempOnlineProgramID = ddlOnlineProgramID.SelectedItem.Value.Substring(0, 1);
        //call read array
        SqlConnection con = new SqlConnection(cs);
        delete1.CommandText = "Deletfe from OnlineEducators where OnlineProgramID = @onlineProgramID";
        delete1.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);

        delete2.CommandText = "Delete from OnlineAnimal where OnlineProgramID = @onlineProgramID";
        delete2.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);

        delete3.CommandText = "Delete from OnlineProgramGrades where OnlineProgramID = @onlineProgramID";
        delete3.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);

        delete4.CommandText = "Delete from OnlineProgram where OnlineProgramID = @onlineProgramID";
        delete4.Parameters.AddWithValue("@onlineProgramID", tempOnlineProgramID);


        delete1.ExecuteNonQuery();
        delete2.ExecuteNonQuery();
        delete3.ExecuteNonQuery();
        delete4.ExecuteNonQuery();

        ddlOnlineProgramID.Items.Clear();
        //call read array
        con.Open();
        if (con.State == System.Data.ConnectionState.Open)
        {

            string read = "SELECT OnlineProgramID, convert(varchar, ProgramDate,101) as ProgramDate, OnlineProgramType.OnlineProgramTypeName AS ProgramType from OnlineProgram z inner join OnlineProgramType on z.OnlineProgramTypeID = OnlineProgramType.OnlineProgramTypeID      ";
            SqlCommand cmd = new SqlCommand(read, con);
            SqlDataReader myRead = cmd.ExecuteReader();

            while (myRead.Read())
            {

                ddlOnlineProgramID.Items.Add(new ListItem(myRead["OnlineProgramID"].ToString(), myRead["OnlineProgramID"].ToString()) + ": " + new ListItem(myRead["ProgramDate"].ToString(), myRead["ProgramDate"].ToString()) + "--" + new ListItem(myRead["ProgramType"].ToString(), myRead["ProgramType"].ToString()));
            }


        }
    }

}