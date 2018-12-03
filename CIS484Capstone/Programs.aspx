<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Programs.aspx.cs" Inherits="Programs" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">




    <%-- Needed - Coverage Check CVC 11/5/18 --%>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/sunny/jquery-ui.css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script type="text/javascript"></script>



    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="Scripts/moment.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.js"></script>
    <script src="Scripts/myCalendar.js"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.css" rel="stylesheet" />





    <script>
        $(function () {
            var icons = {
                header: "ui-icon-circle-arrow-e",
                activeHeader: "ui-icon-circle-arrow-s"
            };
            $("#accordion").accordion({
                icons: icons
            });
            $("#toggle").button().click(function () {
                if ($("#accordion").accordion("option", "icons")) {
                    $("#accordion").accordion("option", "icons", null);
                } else {
                    $("#accordion").accordion("option", "icons", icons);
                }
            });


        });



    </script>


    <%-- Needed Coverage Check 11/5/18 CVC --%>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $("body").on("click", "[src*=plus]", function () {
            $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>");
            $(this).attr("src", "images/minus.png");
        });
        $("body").on("click", "[src*=minus]", function () {
            $(this).attr("src", "images/plus.png");
            $(this).closest("tr").next().remove();
        });
    </script>

    <%-- Holding Tabs on Refresh --%>


    <meta charset="UTF-8">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.css" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/sb-admin.css" rel="stylesheet">
    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <link href="https://fortawesome.github.io/Font-Awesome/assets/font-awesome/css/font-awesome.css" rel="stylesheet">
    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Logo FOnt-->
    <link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet">

    <!-- Bootstrap v4 -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="screen">
    <link href="Content/Login.css" rel="stylesheet" type="text/css" media="screen">
    <link href="Content/sb-admin.css" rel="stylesheet" type="text/css" media="screen">

    <!-- Logo FOnt-->
    <link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet">

    <script>
        $(document).ready(function () {
            $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
                $('#calendar0').fullCalendar('render');
                $('#calendar1').fullCalendar('render');
            });
            $('#myTab a:first').tab('show');
        });
    </script>




    <%--<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand logo" href="Programs.aspx">Wildtek</a>
        </nav>--%>

    <div id="addProgramModal" class="modal" tabindex="-1" role="dialog" >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title text-center" style="font-size: 145% !important; color: #e2561d !important;" id="myTitle">Add Program</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>


                </div>
                <div class="modal-body">


                    <%-- Modal Step 1 - Selector--%>
                    <div id="SelectProgramType">
                        <span></span>
                        <h3>Enter your program basics</h3>

                        <div class="form-group">
                            <div class="form-group row">
                                <div class="col-3">
                                    <label id="lblProgramType" for="ProgramType">Type of Program:</label>
                                </div>
                                <div class="col-6">
                                    <select name="LiveOnline" id="LiveOnline" class="form-control">
                                        <option value=""></option>
                                        <option value="Live">Live Program</option>
                                        <option value="Online">Online Program</option>

                                    </select>
                                </div>
                            </div>
                            <p></p>
                            <div class="form-group row">
                                <div class="col-3">
                                    <label id="ProgramDateLabel" for="ProgramDate">Program Date:</label>
                                </div>
                                <div class="col-6">
                                    <input type="date" id="ProgramDate" class="form-control" runat="server" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-3">
                                    <label id="ProgramTimeLabel" for="ProgramTime">Program Time:</label>
                                </div>
                                <div class="col-6">
                                    <input type="time" id="ProgramTime" class="form-control" runat="server" />
                                </div>
                            </div>
                                <div class="modal-footer">
                                    <input type="button" class="btn btn-inside" id="btnEndSelectProgramType" value="Next" />
                                </div>

                        </div>
                    </div>


                    <%-- Modal Step 1.1 - Live Modal Form--%>
                    <div id="step11" class="hideMe">
                        <span></span>

                        <h4>Live Program Basics</h4>

                        <div class="form-group">

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="TypeLabel" for="Type">Program Type:</label>
                                </div>

                                <div class="col-7">
                                    <asp:DropDownList CssClass="form-control" ID="ddlProgram" runat="server" class="dropdown-menu radioButtonList">
                                        <asp:ListItem Text="--Select Program--" Value="0" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <p></p>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="OrganizationLabel" for="Organization">Organization:</label>
                                </div>
                                <div class="col-7">
                                    <asp:DropDownList CssClass="form-control" ID="dropDownOrganization" runat="server" class="dropdown-menu radioButtonList">
                                        <asp:ListItem Text="--Select Organization--" Value="0" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="EducatorLabelive" for="Educator">Educator:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox CssClass="form-control" ID="lstSelectEducatorsLive" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Educators--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>

                           <div class="form-group row">
                                <div class="col-5">
                                    <label id="VolunteerLabelive" for="Volunteer">Volunteer:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox CssClass="form-control" ID="lstSelectVolunteersLive" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Volunteers--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>



                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="SelectBirdsLive" for="SelectBirdsLive">Select Birds:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox ID="lstSelectBirdsLive" CssClass="form-control" runat="server" SelectionMode="Multiple" class="dropdown-menu" Placeholder="Select Birds">
                                        <asp:ListItem Text="--Select Birds--" Value="0" />

                                    </asp:ListBox>
                                </div>
                            </div>




                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="SelectReptilesLive" for="SelectReptilesLive">Select Reptiles:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox CssClass="form-control" ID="lstSelectReptilesLive" runat="server" SelectionMode="Multiple" class="dropdown-menu">
                                        <asp:ListItem Text="--Select Reptiles--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="SelectMammalsLive" for="SelectMammalLive">Select Mammals:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox ID="lstSelectMammalsLive" CssClass="form-control" runat="server" SelectionMode="Multiple" class="dropdown-menu">
                                        <asp:ListItem Text="--Select Mammals--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="StatusLabel" for="Status">Program Status:</label>
                                </div>
                                <div class="col-7">
                                    <%--                                    <select name="Program Status" id="Status" class="form-control">
                                        <option value="">--Select Status--</option>
                                        <option value="Not Complete">Not Complete</option>
                                        <option value="Complete">Complete</option>
                                    </select>--%>
                                    <asp:DropDownList CssClass="form-control" ID="Status" runat="server" class="dropdown-menu radioButtonList">
                                        <asp:ListItem Text="--Select Status--" Value="0" />
                                        <asp:ListItem Text="Not Complete" Value="Not Complete" />
                                        <asp:ListItem Text="Completed" Value="Completed" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="PaymentLabel" for="Payment">Payment Status:</label>
                                </div>
                                <div class="col-7">
                                    <%--                                    <select name="Payment Status" id="Payment" class="form-control">
                                        <option value=""></option>
                                        <option value="T1">Payment Complete</option>
                                        <option value="T2">Payment Not Complete</option>
                                    </select>--%>
                                    <asp:DropDownList CssClass="form-control" ID="Payment" runat="server" class="dropdown-menu radioButtonList">
                                        <asp:ListItem Text="--Select Payment Status--" Value="0" />
                                        <asp:ListItem Text="Payment Complete" Value="Y" />
                                        <asp:ListItem Text="Payment Not Complete" Value="N" />
                                    </asp:DropDownList>
                                </div>
                            </div>



                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="lblOnOff" for="OnOff">Was the program on or off Wildlife Center Campus?</label>
                                </div>
                                <div class="col-7">
                                    <select name="OnOff" id="OnOff" onchange="scheduleA.call(this, event)" class="form-control" runat="server">

                                        <option value=""></option>
                                        <option value="1">On</option>
                                        <option value="0">Off</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="AddressLabel" for="Address">Program Address</label>
                                </div>
                                <div class="col-7">
                                    <input type="text" id="Address" class="form-control" runat="server" />
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="CityCountyLabel" for="CityCounty">City County</label>
                                </div>
                                <div class="col-7">
                                    <input type="text" id="CityCounty" class="form-control" runat="server" />
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="StateLabel" for="State">State</label>
                                </div>
                                <div class="col-7">
                                    <asp:DropDownList ID="statesDropDown" runat="server" class="form-control" placeholder="Add State/Province">
                                        <asp:ListItem Value="Non-USA Territory"></asp:ListItem>
                                        <asp:ListItem Value="AL"></asp:ListItem>
                                        <asp:ListItem Value="AK"></asp:ListItem>
                                        <asp:ListItem Value="AZ"></asp:ListItem>
                                        <asp:ListItem Value="AR"></asp:ListItem>
                                        <asp:ListItem Value="CA"></asp:ListItem>
                                        <asp:ListItem Value="CO"></asp:ListItem>
                                        <asp:ListItem Value="CT"></asp:ListItem>
                                        <asp:ListItem Value="DE"></asp:ListItem>
                                        <asp:ListItem Value="FL"></asp:ListItem>
                                        <asp:ListItem Value="GA"></asp:ListItem>
                                        <asp:ListItem Value="HI"></asp:ListItem>
                                        <asp:ListItem Value="ID"></asp:ListItem>
                                        <asp:ListItem Value="IL"></asp:ListItem>
                                        <asp:ListItem Value="IN"></asp:ListItem>
                                        <asp:ListItem Value="IA"></asp:ListItem>
                                        <asp:ListItem Value="KS"></asp:ListItem>
                                        <asp:ListItem Value="KY"></asp:ListItem>
                                        <asp:ListItem Value="LA"></asp:ListItem>
                                        <asp:ListItem Value="ME"></asp:ListItem>
                                        <asp:ListItem Value="MD"></asp:ListItem>
                                        <asp:ListItem Value="MA"></asp:ListItem>
                                        <asp:ListItem Value="MI"></asp:ListItem>
                                        <asp:ListItem Value="MN"></asp:ListItem>
                                        <asp:ListItem Value="MS"></asp:ListItem>
                                        <asp:ListItem Value="MO"></asp:ListItem>
                                        <asp:ListItem Value="MT"></asp:ListItem>
                                        <asp:ListItem Value="NE"></asp:ListItem>
                                        <asp:ListItem Value="NV"></asp:ListItem>
                                        <asp:ListItem Value="NH"></asp:ListItem>
                                        <asp:ListItem Value="NJ"></asp:ListItem>
                                        <asp:ListItem Value="NM"></asp:ListItem>
                                        <asp:ListItem Value="NY"></asp:ListItem>
                                        <asp:ListItem Value="NC"></asp:ListItem>
                                        <asp:ListItem Value="ND"></asp:ListItem>
                                        <asp:ListItem Value="OH"></asp:ListItem>
                                        <asp:ListItem Value="OK"></asp:ListItem>
                                        <asp:ListItem Value="OR"></asp:ListItem>
                                        <asp:ListItem Value="PA"></asp:ListItem>
                                        <asp:ListItem Value="RI"></asp:ListItem>
                                        <asp:ListItem Value="SC"></asp:ListItem>
                                        <asp:ListItem Value="SD"></asp:ListItem>
                                        <asp:ListItem Value="TN"></asp:ListItem>
                                        <asp:ListItem Value="TX"></asp:ListItem>
                                        <asp:ListItem Value="UT"></asp:ListItem>
                                        <asp:ListItem Value="VT"></asp:ListItem>
                                        <asp:ListItem Value="VA"></asp:ListItem>
                                        <asp:ListItem Value="WA"></asp:ListItem>
                                        <asp:ListItem Value="WV"></asp:ListItem>
                                        <asp:ListItem Value="WI"></asp:ListItem>
                                        <asp:ListItem Value="WY"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="addContactEmail" for="LContactEmail">Contact Email</label>
                                </div>
                                <div class="col-7">
                                    <input type="text" id="LContactEmail" class="form-control" runat="server" />
                                </div>
                            </div>


                            <p></p>
                            <label id="AddGradeLabel" for="AddGrade">Grades</label>
                            <asp:ListBox class="form-control" ID="lstGrades" runat="server" placeholder="Add Grade" SelectionMode="Multiple">
                                <asp:ListItem Text="--Select Grades--" Value="0" />
                            </asp:ListBox>
                            <p></p>
                            <label id="NumOfChildrenLabel" for="NumOfChildren">Number Of Children</label>
                            <input type="number" id="NumOfChildren" class="form-control" runat="server" />
                            <p></p>

                            <label id="NumOfAdultsLabel" for="NumOfAdults">Number Of Adults</label>
                            <input type="number" id="NumOfAdults" class="form-control" runat="server" />
                            <p></p>


                            <label id="CommentsLabel" for="Comments">Additional Comments</label>
                            <textarea name="Comments" id="Comments" rows="5" cols="100" class="form-control" runat="server"></textarea>

                            <p></p>
<%--                            <input type="button" class="btn" id="btnBackLive" value="Back" />

                            <%--<input type="button" class="btn" id="btnEndstep14" value="Submit" OnClick="btnSubmitLive_Click"/>--%>
                            <%--<asp:Button ID="btnsubmitLiveProgram" class="btn" runat="server" Text="Submit" OnClick="btnSubmitLive_Click" />--%>

                        </div>
                       <div class="modal-footer">
                        <input type="button" class="btn btn-secondary" id="btnBackLive" value="Back" />

                            <%--<input type="button" class="btn" id="btnEndstep14" value="Submit" OnClick="btnSubmitLive_Click"/>--%>
                            <asp:Button ID="Button4" class="btn btn-inside" runat="server" Text="Submit" OnClick="btnSubmitLive_Click" />
                            </div>

                    </div>


                    <%--Modal Step 2.1 - Online Modal Form --%>
                    <div id="step21" class="hideMe">
                        <span>Online Program Basics</span>
                        <p></p>
                        <div class="form-group">
                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="OnlineTypeLabel" for="Type">Online Program Type:</label>
                                </div>

                                <div class="col-7">
                                    <asp:DropDownList CssClass="form-control" ID="lstOnlineProgramType" runat="server" SelectionMode="Multiple" class="dropdown-menu">
                                        <asp:ListItem Text="--Select Program Type--" Value="0" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="EducatorLabel" for="Educator">Educator:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox CssClass="form-control" ID="lstOnlineEducators" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Educators--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="VolunteerLabelOnline" for="Volunteer">Volunteer:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox CssClass="form-control" ID="lstOnlineVolunteers" runat="server" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Volunteers--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="SelectBirdsOnline" for="SelectBirdsOnline">Select Birds:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox ID="lstBirdOnline" CssClass="form-control" runat="server" SelectionMode="Multiple" class="dropdown-menu" Placeholder="Select Birds">
                                        <asp:ListItem Text="--Select Birds--" Value="0" />

                                    </asp:ListBox>
                                </div>
                            </div>




                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="SelectReptilesOnline" for="SelectReptilesOnline">Select Reptiles:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox CssClass="form-control" ID="lstReptilesOnline" runat="server" SelectionMode="Multiple" class="dropdown-menu">
                                        <asp:ListItem Text="--Select Reptiles--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="SelectMammalsOnline" for="SelectMammalOnline">Select Mammals:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox ID="lstMammalsOnline" CssClass="form-control" runat="server" SelectionMode="Multiple" class="dropdown-menu">
                                        <asp:ListItem Text="--Select Mammals--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="TeacherLabel" for="ContactEmail">Teacher Name:</label>
                                </div>
                                <div class="col-7">
                                    <input type="text" id="AddOnlineTeacher" class="form-control" runat="server" />
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="ContactEmailLabel" for="ContactEmail">Contact Email:</label>
                                </div>
                                <div class="col-7">
                                    <input type="email" id="ContactEmail" class="form-control" runat="server" />
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="SecondaryEmailLabel" for="SecondaryEmail">Secondary Email:</label>
                                </div>
                                <div class="col-7">
                                    <input type="email" id="SecondaryEmail" class="form-control" runat="server" />
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="OnlineCityCountyLabel" for="OnlineCityCounty">City or County</label>
                                </div>
                                <div class="col-7">
                                    <input type="text" id="OnlineCityCounty" class="form-control" runat="server" />
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="OnlineStateLabel" for="OnlineState">State</label>
                                </div>
                                <div class="col-7">

                                    <asp:DropDownList ID="OnlineState" runat="server" class="form-control" placeholder="Add State/Province">
                                        <asp:ListItem Value="Non-USA Territory"></asp:ListItem>
                                        <asp:ListItem Value="AL"></asp:ListItem>
                                        <asp:ListItem Value="AK"></asp:ListItem>
                                        <asp:ListItem Value="AZ"></asp:ListItem>
                                        <asp:ListItem Value="AR"></asp:ListItem>
                                        <asp:ListItem Value="CA"></asp:ListItem>
                                        <asp:ListItem Value="CO"></asp:ListItem>
                                        <asp:ListItem Value="CT"></asp:ListItem>
                                        <asp:ListItem Value="DE"></asp:ListItem>
                                        <asp:ListItem Value="FL"></asp:ListItem>
                                        <asp:ListItem Value="GA"></asp:ListItem>
                                        <asp:ListItem Value="HI"></asp:ListItem>
                                        <asp:ListItem Value="ID"></asp:ListItem>
                                        <asp:ListItem Value="IL"></asp:ListItem>
                                        <asp:ListItem Value="IN"></asp:ListItem>
                                        <asp:ListItem Value="IA"></asp:ListItem>
                                        <asp:ListItem Value="KS"></asp:ListItem>
                                        <asp:ListItem Value="KY"></asp:ListItem>
                                        <asp:ListItem Value="LA"></asp:ListItem>
                                        <asp:ListItem Value="ME"></asp:ListItem>
                                        <asp:ListItem Value="MD"></asp:ListItem>
                                        <asp:ListItem Value="MA"></asp:ListItem>
                                        <asp:ListItem Value="MI"></asp:ListItem>
                                        <asp:ListItem Value="MN"></asp:ListItem>
                                        <asp:ListItem Value="MS"></asp:ListItem>
                                        <asp:ListItem Value="MO"></asp:ListItem>
                                        <asp:ListItem Value="MT"></asp:ListItem>
                                        <asp:ListItem Value="NE"></asp:ListItem>
                                        <asp:ListItem Value="NV"></asp:ListItem>
                                        <asp:ListItem Value="NH"></asp:ListItem>
                                        <asp:ListItem Value="NJ"></asp:ListItem>
                                        <asp:ListItem Value="NM"></asp:ListItem>
                                        <asp:ListItem Value="NY"></asp:ListItem>
                                        <asp:ListItem Value="NC"></asp:ListItem>
                                        <asp:ListItem Value="ND"></asp:ListItem>
                                        <asp:ListItem Value="OH"></asp:ListItem>
                                        <asp:ListItem Value="OK"></asp:ListItem>
                                        <asp:ListItem Value="OR"></asp:ListItem>
                                        <asp:ListItem Value="PA"></asp:ListItem>
                                        <asp:ListItem Value="RI"></asp:ListItem>
                                        <asp:ListItem Value="SC"></asp:ListItem>
                                        <asp:ListItem Value="SD"></asp:ListItem>
                                        <asp:ListItem Value="TN"></asp:ListItem>
                                        <asp:ListItem Value="TX"></asp:ListItem>
                                        <asp:ListItem Value="UT"></asp:ListItem>
                                        <asp:ListItem Value="VT"></asp:ListItem>
                                        <asp:ListItem Value="VA"></asp:ListItem>
                                        <asp:ListItem Value="WA"></asp:ListItem>
                                        <asp:ListItem Value="WV"></asp:ListItem>
                                        <asp:ListItem Value="WI"></asp:ListItem>
                                        <asp:ListItem Value="WY"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="CountryLabel" for="Country">Country</label>
                                </div>
                                <div class="col-7">
                                    <asp:DropDownList ID="ddlCountry" runat="server" class="form-control" placeholder="Add Country">
                                        <asp:ListItem Value="--Select Country--"></asp:ListItem>
                                        <asp:ListItem Value="Afghanistan"></asp:ListItem>
                                        <asp:ListItem Value="Albania"></asp:ListItem>
                                        <asp:ListItem Value="Algeria"></asp:ListItem>
                                        <asp:ListItem Value="Andorra"></asp:ListItem>
                                        <asp:ListItem Value="Angola"></asp:ListItem>
                                        <asp:ListItem Value="Antigua and Barbuda"></asp:ListItem>
                                        <asp:ListItem Value="Argentina"></asp:ListItem>
                                        <asp:ListItem Value="Armenia"></asp:ListItem>
                                        <asp:ListItem Value="Australia"></asp:ListItem>
                                        <asp:ListItem Value="Austria"></asp:ListItem>
                                        <asp:ListItem Value="Azerbaijan"></asp:ListItem>
                                        <asp:ListItem Value="Bahamas"></asp:ListItem>
                                        <asp:ListItem Value="Bahrain"></asp:ListItem>
                                        <asp:ListItem Value="Bangladesh"></asp:ListItem>
                                        <asp:ListItem Value="Barbados"></asp:ListItem>
                                        <asp:ListItem Value="Belarus"></asp:ListItem>
                                        <asp:ListItem Value="Belgium"></asp:ListItem>
                                        <asp:ListItem Value="Belize"></asp:ListItem>
                                        <asp:ListItem Value="Benin"></asp:ListItem>
                                        <asp:ListItem Value="Bhutan"></asp:ListItem>
                                        <asp:ListItem Value="Bolivia"></asp:ListItem>
                                        <asp:ListItem Value="Bosnia and Herzegovina"></asp:ListItem>
                                        <asp:ListItem Value="Botswana"></asp:ListItem>
                                        <asp:ListItem Value="Brazil"></asp:ListItem>
                                        <asp:ListItem Value="Brunei"></asp:ListItem>
                                        <asp:ListItem Value="Bulgaria"></asp:ListItem>
                                        <asp:ListItem Value="Burkina Faso"></asp:ListItem>
                                        <asp:ListItem Value="Burundi"></asp:ListItem>
                                        <asp:ListItem Value="Côte d'Ivoire"></asp:ListItem>
                                        <asp:ListItem> Cabo Verde</asp:ListItem>
                                        <asp:ListItem Value="Cambodia"></asp:ListItem>
                                        <asp:ListItem Value="Cameroon"></asp:ListItem>
                                        <asp:ListItem Value="Canada"></asp:ListItem>
                                        <asp:ListItem Value="Central African Republic"></asp:ListItem>
                                        <asp:ListItem Value="Chad"></asp:ListItem>
                                        <asp:ListItem Value="Chile"></asp:ListItem>
                                        <asp:ListItem Value="China"></asp:ListItem>
                                        <asp:ListItem Value="Colombia"></asp:ListItem>
                                        <asp:ListItem Value="Comoros"></asp:ListItem>
                                        <asp:ListItem Value="Congo"></asp:ListItem>
                                        <asp:ListItem Value="Costa Rica"></asp:ListItem>
                                        <asp:ListItem Value="Croatia">Croatia</asp:ListItem>
                                        <asp:ListItem Value="Cuba"></asp:ListItem>
                                        <asp:ListItem Value="Cyprus"></asp:ListItem>
                                        <asp:ListItem Value="Czech Republic"></asp:ListItem>
                                        <asp:ListItem Value="Democratic Republic of the Congo"></asp:ListItem>
                                        <asp:ListItem Value="Denmark"></asp:ListItem>
                                        <asp:ListItem Value="Djibouti"></asp:ListItem>
                                        <asp:ListItem Value="Dominica"></asp:ListItem>
                                        <asp:ListItem Value="Dominican Republic"></asp:ListItem>
                                        <asp:ListItem Value="Ecuador"></asp:ListItem>
                                        <asp:ListItem Value="Egypt"></asp:ListItem>
                                        <asp:ListItem Value="El Salvador"></asp:ListItem>
                                        <asp:ListItem Value="Equatorial Guinea"></asp:ListItem>
                                        <asp:ListItem Value="Eritrea"></asp:ListItem>
                                        <asp:ListItem Value="Estonia"></asp:ListItem>
                                        <asp:ListItem Value="Ethiopia"></asp:ListItem>
                                        <asp:ListItem Value="Fiji"></asp:ListItem>
                                        <asp:ListItem Value="Finland"></asp:ListItem>
                                        <asp:ListItem Value="France"></asp:ListItem>
                                        <asp:ListItem Value="Gabon"></asp:ListItem>
                                        <asp:ListItem Value="Gambia"></asp:ListItem>
                                        <asp:ListItem Value="Georgia"></asp:ListItem>
                                        <asp:ListItem Value="Germany"></asp:ListItem>
                                        <asp:ListItem Value="Ghana"></asp:ListItem>
                                        <asp:ListItem Value="Greece"></asp:ListItem>
                                        <asp:ListItem Value="Grenada"></asp:ListItem>
                                        <asp:ListItem Value="Guatemala"></asp:ListItem>
                                        <asp:ListItem Value="Guinea"></asp:ListItem>
                                        <asp:ListItem Value="Guinea-Bissau"></asp:ListItem>
                                        <asp:ListItem Value="Guyana"></asp:ListItem>
                                        <asp:ListItem Value="Haiti"></asp:ListItem>
                                        <asp:ListItem Value="Holy See"></asp:ListItem>
                                        <asp:ListItem Value="Honduras"></asp:ListItem>
                                        <asp:ListItem Value="Hungary"></asp:ListItem>
                                        <asp:ListItem Value="Iceland"></asp:ListItem>
                                        <asp:ListItem Value="India"></asp:ListItem>
                                        <asp:ListItem Value="Indonesia"></asp:ListItem>
                                        <asp:ListItem Value="Iran"></asp:ListItem>
                                        <asp:ListItem Value="Iraq"></asp:ListItem>
                                        <asp:ListItem Value="Ireland"></asp:ListItem>
                                        <asp:ListItem Value="Israel"></asp:ListItem>
                                        <asp:ListItem Value="Italy"></asp:ListItem>
                                        <asp:ListItem Value="Jamaica"></asp:ListItem>
                                        <asp:ListItem Value="Japan"></asp:ListItem>
                                        <asp:ListItem Value="Jordan"></asp:ListItem>
                                        <asp:ListItem Value="Kazakhstan"></asp:ListItem>
                                        <asp:ListItem Value="Kenya"></asp:ListItem>
                                        <asp:ListItem Value="Kiribati"></asp:ListItem>
                                        <asp:ListItem Value="Kuwait"></asp:ListItem>
                                        <asp:ListItem Value="Kyrgyzstan"></asp:ListItem>
                                        <asp:ListItem Value="Laos"></asp:ListItem>
                                        <asp:ListItem Value="Latvia"></asp:ListItem>
                                        <asp:ListItem Value="Lebanon"></asp:ListItem>
                                        <asp:ListItem Value="Lesotho"></asp:ListItem>
                                        <asp:ListItem Value="Liberia"></asp:ListItem>
                                        <asp:ListItem Value="Libya"></asp:ListItem>
                                        <asp:ListItem Value="Liechtenstein"></asp:ListItem>
                                        <asp:ListItem Value="Lithuania"></asp:ListItem>
                                        <asp:ListItem Value="Luxembourg"></asp:ListItem>
                                        <asp:ListItem Value="Macedonia">Macedonia</asp:ListItem>
                                        <asp:ListItem Value="Madagascar"></asp:ListItem>
                                        <asp:ListItem Value="Malawi"></asp:ListItem>
                                        <asp:ListItem Value="Malaysia"></asp:ListItem>
                                        <asp:ListItem Value="Maldives"></asp:ListItem>
                                        <asp:ListItem Value="Mali"></asp:ListItem>
                                        <asp:ListItem Value="Malta"></asp:ListItem>
                                        <asp:ListItem Value="Marshall Islands"></asp:ListItem>
                                        <asp:ListItem Value="Mauritania"></asp:ListItem>
                                        <asp:ListItem Value="Mauritius"></asp:ListItem>
                                        <asp:ListItem Value="Mexico"></asp:ListItem>
                                        <asp:ListItem Value="Micronesia"></asp:ListItem>
                                        <asp:ListItem Value="Moldova"></asp:ListItem>
                                        <asp:ListItem Value="Monaco"></asp:ListItem>
                                        <asp:ListItem Value="Mongolia"></asp:ListItem>
                                        <asp:ListItem Value="Montenegro"></asp:ListItem>
                                        <asp:ListItem Value="Morocco"></asp:ListItem>
                                        <asp:ListItem Value="Mozambique"></asp:ListItem>
                                        <asp:ListItem Value="Myanmar (formerly Burma)"></asp:ListItem>
                                        <asp:ListItem Value="Namibia"></asp:ListItem>
                                        <asp:ListItem Value="Nauru"></asp:ListItem>
                                        <asp:ListItem Value="Nepal"></asp:ListItem>
                                        <asp:ListItem Value="Netherlands"></asp:ListItem>
                                        <asp:ListItem Value="New Zealand"></asp:ListItem>
                                        <asp:ListItem Value="Nicaragua"></asp:ListItem>
                                        <asp:ListItem Value="Nicaragua"></asp:ListItem>
                                        <asp:ListItem Value="Nigeria"></asp:ListItem>
                                        <asp:ListItem Value="North Korea"></asp:ListItem>
                                        <asp:ListItem Value="Norway"></asp:ListItem>
                                        <asp:ListItem Value="Oman"></asp:ListItem>
                                        <asp:ListItem Value="Pakistan"></asp:ListItem>
                                        <asp:ListItem Value="Palau"></asp:ListItem>
                                        <asp:ListItem Value="Palestine State"></asp:ListItem>
                                        <asp:ListItem Value="Panama"></asp:ListItem>
                                        <asp:ListItem Value="Papua New Guinea"></asp:ListItem>
                                        <asp:ListItem Value="Paraguay"></asp:ListItem>
                                        <asp:ListItem Value="Peru"></asp:ListItem>
                                        <asp:ListItem Value="Philippines"></asp:ListItem>
                                        <asp:ListItem Value="Poland"></asp:ListItem>
                                        <asp:ListItem Value="Portugal"></asp:ListItem>
                                        <asp:ListItem Value="Qatar"></asp:ListItem>
                                        <asp:ListItem Value="Romania"></asp:ListItem>
                                        <asp:ListItem Value="Russia"></asp:ListItem>
                                        <asp:ListItem Value="Rwanda"></asp:ListItem>
                                        <asp:ListItem Value="Saint Kitts and Nevis"></asp:ListItem>
                                        <asp:ListItem Value="Saint Lucia"></asp:ListItem>
                                        <asp:ListItem Value="Saint Vincent and the Grenadines"></asp:ListItem>
                                        <asp:ListItem Value="Samoa"></asp:ListItem>
                                        <asp:ListItem Value="San Marino"></asp:ListItem>
                                        <asp:ListItem Value="Sao Tome and Principe"></asp:ListItem>
                                        <asp:ListItem Value="Saudi Arabia"></asp:ListItem>
                                        <asp:ListItem Value="Senegal"></asp:ListItem>
                                        <asp:ListItem Value="Serbia"></asp:ListItem>
                                        <asp:ListItem Value="Seychelles"></asp:ListItem>
                                        <asp:ListItem Value="Sierra Leone"></asp:ListItem>
                                        <asp:ListItem Value="Singapore"></asp:ListItem>
                                        <asp:ListItem Value="Slovakia"></asp:ListItem>
                                        <asp:ListItem Value="Slovenia"></asp:ListItem>
                                        <asp:ListItem Value="Solomon Islands"></asp:ListItem>
                                        <asp:ListItem Value="Somalia	"></asp:ListItem>
                                        <asp:ListItem Value="South Africa"></asp:ListItem>
                                        <asp:ListItem Value="South Korea"></asp:ListItem>
                                        <asp:ListItem Value="South Sudan"></asp:ListItem>
                                        <asp:ListItem Value="Spain"></asp:ListItem>
                                        <asp:ListItem Value="Sri Lanka"></asp:ListItem>
                                        <asp:ListItem Value="Sudan"></asp:ListItem>
                                        <asp:ListItem Value="Suriname"></asp:ListItem>
                                        <asp:ListItem Value="Swaziland"></asp:ListItem>
                                        <asp:ListItem Value="Sweden"></asp:ListItem>
                                        <asp:ListItem Value="Switzerland"></asp:ListItem>
                                        <asp:ListItem Value="Syria"></asp:ListItem>
                                        <asp:ListItem Value="Tajikistan"></asp:ListItem>
                                        <asp:ListItem Value="Tanzania"></asp:ListItem>
                                        <asp:ListItem Value="Thailand"></asp:ListItem>
                                        <asp:ListItem Value="Timor-Leste"></asp:ListItem>
                                        <asp:ListItem Value="Togo"></asp:ListItem>
                                        <asp:ListItem Value="Tonga"></asp:ListItem>
                                        <asp:ListItem Value="Trinidad and Tobago"></asp:ListItem>
                                        <asp:ListItem Value="Tunisia"></asp:ListItem>
                                        <asp:ListItem Value="Turkey"></asp:ListItem>
                                        <asp:ListItem Value="Turkmenistan"></asp:ListItem>
                                        <asp:ListItem Value="Tuvalu"></asp:ListItem>
                                        <asp:ListItem Value="Uganda"></asp:ListItem>
                                        <asp:ListItem Value="Ukraine"></asp:ListItem>
                                        <asp:ListItem Value="United Arab Emirates"></asp:ListItem>
                                        <asp:ListItem Value="United Kingdom"></asp:ListItem>
                                        <asp:ListItem Value="United States"></asp:ListItem>
                                        <asp:ListItem Value="Uruguay"></asp:ListItem>
                                        <asp:ListItem Value="Uzbekistan"></asp:ListItem>
                                        <asp:ListItem Value="Vanuatu"></asp:ListItem>
                                        <asp:ListItem Value="Venezuela"></asp:ListItem>
                                        <asp:ListItem Value="Viet Nam"></asp:ListItem>
                                        <asp:ListItem Value="Yemen"></asp:ListItem>
                                        <asp:ListItem Value="Zambia"></asp:ListItem>
                                        <asp:ListItem Value="Zimbabwe"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>





                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="OnlineGradesLabel" for="OnlineGrades">Add Grades:</label>
                                </div>
                                <div class="col-7">
                                    <asp:ListBox CssClass="form-control" ID="OnlineGrades" runat="server" placeholder="Add Grade" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Grades--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="OnlineNumOfChildrenLabel" for="OnlineNumOfChildren">Number Of Children:</label>
                                </div>
                                <div class="col-7">
                                    <input type="number" id="OnlineNumOfChildren" class="form-control" runat="server" />
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="OnlineNumOfAdultsLabel" for="OnlineNumOfAdults">Number Of Adults:</label>
                                </div>
                                <div class="col-7">
                                    <input type="number" id="OnlineNumOfAdults" class="form-control" runat="server" />
                                </div>
                            </div>



                            <div class="form-group row">
                                <div class="col-5">
                                    <label id="OnlineCommentsLabel" for="OnlineComments">Additional Comments</label>
                                </div>
                                <div class="col-7">
                                    <textarea name="Comments" id="OnlineComments" rows="5" cols="100" class="form-control" runat="server"></textarea>
                                </div>
                            </div>

                            <div class="modal-footer">
                            <input type="button" class="btn btn-secondary " id="btnBackOnline" value="Back" />
                            <%--                            <input type="button" class="btn" id="btnEndstep24" value="Submit" />--%>
                            <asp:Button ID="Button5" class="btn btn-inside " runat="server" Text="Submit" OnClick="btnSubmitOnline_Click" />
                        </div>

<%--                            <input type="button" class="btn" id="btnBackOnline" value="Back" />
                            <%--                            <input type="button" class="btn" id="btnEndstep24" value="Submit" />--%>
                           <%-- <asp:Button ID="btnSubmitOnline" runat="server" Text="Submit" OnClick="btnSubmitOnline_Click" />--%>
                        </div>

                    </div>



                </div>
                <div class="modal-footer"></div>
            </div>
        </div>
    </div>


    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand " style="color: #FFBC7C; font-weight: 400; font-size: 150%;" href="Programs.aspx">Wildlife Center of Virginia</a>

        <div class="collapse navbar-collapse " id="navbarTogglerDemo03">
            <ul class="navbar-nav ml-auto mt-2 mt-lg-0 d-md-none">
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                        <%--<a class="nav-link" href="Programs.aspx">--%>

                        <span>Programs</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="Programs.aspx">View Programs</a>
                        <a class="dropdown-item" href="ProgramTheme.aspx">View Program Themes</a>
                    </div>
                </li>
                <%--      <li class="nav-item">
          <a class="nav-link" href="AnimalPage.aspx">
            <i class="fas fa-fw fa-book-open"></i>--%>
                <li class="nav-item dropdown no-arrow ">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">



                        <span>Animals</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="AnimalPage.aspx">View Animals</a>
                        <a class="dropdown-item" href="#" data-target="#AddAnimal" data-toggle="modal">Add New Animal</a>
                        <a class="dropdown-item" href="#" data-target="#UpdateAnimal" data-toggle="modal">Edit Animals</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow ">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                        <span>Reports</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="Report.aspx">Reports</a>
                        <%-- --%>
                        <%-- --%>
                        <a class="dropdown-item" href="TabLiveReports.aspx">Live Program</a>
                        <a class="dropdown-item" href="TabOnlineProgramReports.aspx">Online Program</a>
                        <a class="dropdown-item" href="TabGradeReport.aspx">Grade</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow active">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                        <span>Payment</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="Payment.aspx">New Payment Form</a>
                        <a class="dropdown-item" href="Invoices.aspx">Invoices</a>
                        <a class="dropdown-item" href="YearlyInvoices.aspx">Yearly Invoices</a>
                    </div>
                </li>

                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">


                        <%--<a class="nav-link" href="Programs.aspx">--%>
                        <%-- MERGE ISSUES BETWEEN MH AND Catch These Hands. COMMENTED OUT TILL FURTHER NEEDED --%>
                        <span>Programs</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="Programs.aspx">View Programs</a>
                        <a class="dropdown-item" href="ProgramTheme.aspx">View Program Themes</a>
                    </div>
                </li>
                <%--      <li class="nav-item">
          <a class="nav-link" href="AnimalPage.aspx">
            <i class="fas fa-fw fa-book-open"></i>--%>
                <%-- <li class="nav-item dropdown no-arrow ">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                        <span>Animals</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="AnimalPage.aspx">View Animals</a>
                        <a class="dropdown-item" href="#" data-target="#AddAnimal" data-toggle="modal">Add New Animal</a>
                        <a class="dropdown-item" href="#" data-target="#UpdateAnimal" data-toggle="modal">Edit Animals</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow ">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                        <span>Reports</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="AnimalMonthlyWildlifeReport.aspx">Animal</a>
                        <a class="dropdown-item" href="MonthlyWildlifeReport.aspx">Monthly</a>
                        <a class="dropdown-item" href="YearlyWildlifeReport.aspx">Yearly</a>
                        <a class="dropdown-item" href="TabLiveReports.aspx">Live Program</a>
                        <a class="dropdown-item" href="TabOnlineProgramReports.aspx">Online Program</a>
                        <a class="dropdown-item" href="TabGradeReport.aspx">Grade</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                        <span>Payment</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="Payment.aspx">New Payment Form</a>
                        <a class="dropdown-item" href="Invoices.aspx">Invoices</a>
                        <a class="dropdown-item" href="YearlyInvoices.aspx">Yearly Invoices</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                        <span>Organizations</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="#" data-target="#AddOrganization" data-toggle="modal">Add New Organization</a>
                        <a class="dropdown-item" href="#" data-target="#UpdateOrganization" data-toggle="modal">Edit Organizations</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                        <span>Educators</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="#" data-target="#AddEducator" data-toggle="modal">Add New Educator</a>
                        <a class="dropdown-item" href="#" data-target="#UpdateEducator" data-toggle="modal">Edit Educators</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow ">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                 <span>Volunteers</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="#" data-target="Volunteers.aspx" data-toggle="modal">Add New Volunteer</a>
                        <a class="dropdown-item" href="#" data-target="#AddVolunteer" data-toggle="modal">Add New Volunteer</a>
                        <a class="dropdown-item" href="#" data-target="#UpdateVolunteer" data-toggle="modal">Edit Volunteers</a>
                    </div>
                </li>
                <li class="nav-item " style="display: inline-block; white-space: nowrap;">
                    <a class="nav-link" href="createUser.aspx"> --%>
                <span>Organizations</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Organizations.aspx">View Organizations</a>
                    <a class="dropdown-item" href="#" data-target="#AddOrganization" data-toggle="modal">Add New Organization</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateOrganization" data-toggle="modal">Edit Organizations</a>
                </div>
                </li>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Educators</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Educators.aspx">View Educators</a>
                    <a class="dropdown-item" href="#" data-target="#AddEducator" data-toggle="modal">Add New Educator</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateEducator" data-toggle="modal">Edit Educators</a>
                </div>
            </li>
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                        <span>Volunteers</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="Volunteers.aspx">View Volunteers</a>
                        <a class="dropdown-item" href="#" data-target="#AddVolunteer" data-toggle="modal">Add New Volunteer</a>
                        <a class="dropdown-item" href="#" data-target="#UpdateVolunteer" data-toggle="modal">Edit Volunteers</a>
                    </div>
                </li>
                <li class="nav-item " style="display: inline-block; white-space: nowrap;">
                    <a class="nav-link" href="createUser.aspx">

                        <span>Create Outreach Coordinator Access</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Default.aspx">

                        <span>Logout</span></a>
                </li>

            </ul>

        </div>
    </nav>



    <div id="wrapper">

        <!-- Sidebar -->

        <ul class="sidebar navbar-nav d-none d-md-block">
            <li class="nav-item dropdown no-arrow active">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <%--<a class="nav-link" href="Programs.aspx">--%>

                    <span>Programs</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Programs.aspx">View Programs</a>
                    <a class="dropdown-item" href="ProgramTheme.aspx">View Program Themes</a>
                </div>
            </li>
            <%--      <li class="nav-item">
          <a class="nav-link" href="AnimalPage.aspx">
            <i class="fas fa-fw fa-book-open"></i>--%>
            <li class="nav-item dropdown no-arrow ">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Animals</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="AnimalPage.aspx">View Animals</a>
                    <a class="dropdown-item" href="#" data-target="#AddAnimal" data-toggle="modal">Add New Animal</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateAnimal" data-toggle="modal">Edit Animals</a>
                </div>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="Report.aspx">

                    <span>Reports</span></a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="Tableau.aspx">

                    <span>Visualization</span></a>
            </li>
            <li class="nav-item dropdown no-arrow ">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Payment</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Payment.aspx">New Payment Form</a>
                    <a class="dropdown-item" href="Invoices.aspx">Invoices</a>

                </div>
            </li>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Organizations</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Organizations.aspx">View Organizations</a>
                    <a class="dropdown-item" href="#" data-target="#AddOrganization" data-toggle="modal">Add New Organization</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateOrganization" data-toggle="modal">Edit Organizations</a>
                </div>
            </li>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Educators</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Educators.aspx">View Educators</a>
                    <a class="dropdown-item" href="#" data-target="#AddEducator" data-toggle="modal">Add New Educator</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateEducator" data-toggle="modal">Edit Educators</a>
                </div>
            </li>

            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">

                    <span>Volunteers</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Volunteers.aspx">View Volunteers</a>
                    <a class="dropdown-item" href="#" data-target="#AddVolunteer" data-toggle="modal">Add New Volunteer</a>
                    <a class="dropdown-item" href="#" data-target="#UpdateVolunteer" data-toggle="modal">Edit Volunteers</a>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="createUser.aspx">

                    <span>Create Outreach Coordinator Access</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Default.aspx">

                    <span>Logout</span></a>
            </li>

        </ul>
        <div id="content-wrapper">



            <div class="container-fluid ">








                <section class="login-block  col-lg-10 col-md-10 col-s-12 mx-auto ">


                    <div class="container1">
                        <div class="card  mx-auto mt-3">
                            <div class="card-header NewUserTitle text-center">Programs</div>
                            <div class="card-body">
                                <div class="mx-auto">
                                    <div class="row mx-auto d-flex text cetner justify-content-center">

                                        <div class=" col-lg-3    col-md-4 col-sm-6 ">
                                            <div class="btn  btn-primary btn-inside btn-block" data-target="#addProgramModal" data-toggle="modal">Add Program Form</div>
                                        </div>

                                        <div class=" col-lg-3    col-md-4 col-sm-6  ">
                                            <div class="btn btn-primary  btn-inside btn-block" data-target="#UpdateLiveProgram" data-toggle="modal">Edit Live</div>
                                        </div>

                                        <div class=" col-lg-3   col-md-4  col-sm-6  ">
                                            <div class="btn btn-primary  btn-inside btn-block" data-target="#UpdateOnlineProgram" data-toggle="modal">Edit Online</div>




                                            <br />


                                            &nbsp;&nbsp;
                                        </div>
                                    </div>






                                    <%-- this div  is the internal div--%>
                                    <div class="block3">
                                        <script>
                                            $(function () {
                                                $('a[data-toggle="tab"]').on('click', function (e) {
                                                    window.localStorage.setItem('activeTab', $(e.target).attr('href'));
                                                });
                                                var activeTab = window.localStorage.getItem('activeTab');
                                                if (activeTab) {
                                                    $('#myTab a[href="' + activeTab + '"]').tab('show');
                                                    window.localStorage.removeItem("activeTab");
                                                }
                                            });       </script>





                                        <%-- this div  is the internal div--%>

                                        <ul class="nav nav-tabs block4" id="myTab" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" id="CalendarTab" data-toggle="tab" href="#CalTab" style="color: black;">Program Calendar</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link TabStyle TabStyle" id="AllTabNav" data-toggle="tab" href="#AllTab" style="color: black;">All Programs</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link TabStyle" id="LiveTabNav" data-toggle="tab" href="#LiveTab" style="color: black;">Live Programs</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link TabStyle" id="OnlineTabNav" data-toggle="tab" href="#OnlineTab" style="color: black;">Online Programs</a>
                                        </ul>



                                        <%-- Version 1 All --%>
                                        <div class="tab-content">

                                            <div id="CalTab" class="tab-pane active">
                                                <br />
                                                <div class="row mx-auto d-flex justify-content-center  embed-responsive embed-responsive-4by3" >

                                                    <embed class="col-12 embed-responsive-item"" src="myCalendar.html"  >
                                                     
                                                </div>
                                            </div>
                                            <div id="AllTab" class="tab-pane show fade in">
                                                <br />
                                                <div class="row mx-auto d-flex justify-content-center">

                                                    <div class=" col-xl-3 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                                                        <asp:DropDownList ID="ddlOrderByAll" runat="server" class="btn btn-secondary btn-block dropdown-toggle" Style="background-color: #FFFAFA !important; color: #732700 !important;" AppendDataBoundItems="false" AutoPostBack="true" DataValueField="" OnSelectedIndexChanged="ddlOrderByAll_SelectedIndexChanged">
                                                            <asp:ListItem>--Order By--</asp:ListItem>
                                                            <asp:ListItem>Program Category</asp:ListItem>
                                                            <asp:ListItem>Program Date</asp:ListItem>
                                                            <asp:ListItem>Program Type A-Z</asp:ListItem>

                                                        </asp:DropDownList>&nbsp&nbsp
                                                    </div>
                                                    <%--<div class="col-xl-3 col-lg-0 col-md-0 col-sm-0 col-xs-0"></div>--%>
                                                               <div class=" col-lg-3 col-xl-3 col-md-6 col-sm-12 InternalAnimalForm">
                                                                       <label id="StartDateLabelAll" class="" for="StartDateAll">Start Date:</label>
                              
                                                                                    <input type="date" id="StartDateAll" class="form-control" runat="server" />
                                                                    </div>
                                                                <div class=" col-lg-3 col-xl-3 col-md-6 col-sm-12 InternalAnimalForm">
                                                                     <label id="EndDateLabelAll" class="" for="EndDateAll">End Date:</label>
                              
                                                                                    <input type="date" id="EndDateAll" class="form-control" runat="server" />
                                                                    </div>
                                                              <div class=" col-lg-2 col-xl-2 col-md-6 col-sm-6 text-right InternalAnimalForm">
                                
                                                                              <asp:Button ID="btnFilterDatesAll" runat="server" style="margin-top:7px;" CssClass="btn btn-block" OnClick="btnView_Click" Text="Filter Dates" />      
                                                                                </div>
                                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 col-xs-12 ">
                                                        <asp:TextBox class="InternalAnimalForm form-control" ID="txtSearchAll" runat="server"></asp:TextBox>

                                                    </div>

                                                    <div class="col-xl-3 col-lg-4 col-md-12 col-sm-12 col-xs-12 ">
                                                        <asp:Button ID="btnAllSearch" runat="server" class="btn  " Style="margin-right: 5px; margin-bottom: 5px;" Text="Search" OnClick="btnAllSearch_Click" />

                                                        <asp:Button ID="btnAllClear" runat="server" class="btn " Style="margin-bottom: 5px;" Text="Clear Filters" OnClick="btnAllClear_Click" />
                                                    </div>

                                                </div>



                                                <div class="block justify-content-center table-responsive">
                                                    <div id="NoRecords" runat="server" visible="false">
                                                            No records are available.
                                                    </div>

                                                    <asp:Repeater ID="rptProgramHLAll" runat="server" OnItemDataBound="OnItemDataBoundAll">
                                                        <HeaderTemplate>
                                                            <table class="Grid table  table-borderless  WideTable " border="1" table-layout: fixed>
                                                                <tr class="" style="background-color: #C7BFC4 !important; color: Black !important;">
                                                                    <th scope="col"></th>

                                                                    <th style="font-weight: 600; font-size: 110%;" scope="col">Program Category
                                                                    </th>
                                                                    <th style="font-weight: 600; font-size: 110%;" scope="col">Program Date
                                                                    </th>
                                                                    <th style="font-weight: 600; font-size: 110%;" scope="col">Program Type
                                                                    </th>

                                                                </tr>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <tr>

                                                                <td>

                                                                    <img alt="" style="cursor: pointer; padding-left: -50%;" src="images/plus.png" />
                                                                    <asp:Panel ID="pnlProgramAll" runat="server" Style="display: none">
                                                                        <asp:Repeater ID="rptAllLL1" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table   table-condensed WideTable " border="0" table-layout: fixed>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label Style="font-weight: 600;" ID="lblForField1" Text='<%# Eval("ProgramCategory").ToString() == "Live Program" ? "Status" : "Educator Name" %>'
                                                                                            runat="server" />
                                                                                        <%--Live = Status, Online = Educator Name--%>

                                                                                        <br />
                                                                                        <br />
                                                                                        <asp:Label ID="lblField1" runat="server" Text='<%# Eval("Field1") %>' />
                                                                                        <%--Live = Status, Online = Educator Name--%>
                                                                                    </td>


                                                                                    <td class="col-md-4">
                                                                                        <asp:Label Style="font-weight: 600;" ID="lblForField2" Text='<%# Eval("ProgramCategory").ToString() == "Live Program" ? "Payment Status" : "Primary Email" %>'
                                                                                            runat="server" />
                                                                                        <br />
                                                                                        <br />
                                                                                        <asp:Label ID="lblField2" runat="server" Text='<%# Eval("Field2") %>' />
                                                                                        <%--Live = Payment Status, Online = Primary Email--%>
                                                                                    </td>


                                                                                    <td class="col-md-4">
                                                                                        <asp:Label Style="font-weight: 600;" ID="lblForField3" Text='<%# Eval("ProgramCategory").ToString() == "Live Program" ? "On or Off Site" : "" %>'
                                                                                            runat="server" />
                                                                                        <br />
                                                                                        <br />
                                                                                        <asp:Label ID="lblField3" runat="server" Text='<%# Eval("Field3") %>' />
                                                                                        <%--Live = On off Site, Online = SecondaryEmail--%>
                                                                                    </td>

                                                                                </tr>
                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>


                                                                        <asp:Repeater ID="rptAllLL2" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table  table-condensed WideTable " border="0" table-layout: fixed>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">

                                                                                    <td class="col-md-4">
                                                                                        <asp:Label Style="font-weight: 600;" ID="lblForField4" Text='<%# Eval("ProgramCategory").ToString() == "Live Program" ? "Event Month" : "Event Month" %>'
                                                                                            runat="server" />
                                                                                        <br />
                                                                                        <br />
                                                                                        <asp:Label ID="lblField4" runat="server" Text='<%# Eval("Field4") %>' />
                                                                                        <%--Live = Event Month, Online = Event Month--%>
                                                                                    </td>


                                                                                    <td class="col-md-4">
                                                                                        <asp:Label Style="font-weight: 600;" ID="lblForField5" Text='<%# Eval("ProgramCategory").ToString() == "Live Program" ? "Number of Children" : "Number of Children" %>'
                                                                                            runat="server" />
                                                                                        <br />
                                                                                        <br />
                                                                                        <asp:Label ID="lblField5" runat="server" Text='<%# Eval("Field5") %>' />
                                                                                        <%--Live = Number of Children, Online = Number of Children--%>
                                                                                    </td>


                                                                                    <%--need to fix total participant count--%>
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label Style="font-weight: 600;" ID="lblForField6" Text='<%# Eval("ProgramCategory").ToString() == "Live Program" ? "Number of Adults" : "Total Participants" %>'
                                                                                            runat="server" />
                                                                                        <br />
                                                                                        <br />
                                                                                        <asp:Label ID="lblField6" runat="server" Text='<%# Eval("Field6") %>' />
                                                                                        <%--Live = Number of Adults, Online = Total Participants--%>
                                                                                    </td>

                                                                                </tr>
                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>

                                                                        <asp:Repeater ID="rptAllLL3" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table  table-condensed WideTable " border="0" table-layout: fixed>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">

                                                                                    <td class="col-md-4">
                                                                                        <asp:Label Style="font-weight: 600;" ID="lblForField7" Text='<%# Eval("ProgramCategory").ToString() == "Live Program" ? "Street Address" : "City/County" %>'
                                                                                            runat="server" />
                                                                                        <br />
                                                                                        <br />
                                                                                        <asp:Label ID="lblField7" runat="server" Text='<%# Eval("Field7") %>' />
                                                                                        <%--Live = Street Address, Online = CityCounty--%>
                                                                                    </td>


                                                                                    <td class="col-md-4">
                                                                                        <asp:Label Style="font-weight: 600;" ID="lblForField8" Text='<%# Eval("ProgramCategory").ToString() == "Live Program" ? "City/County" : "State" %>'
                                                                                            runat="server" />
                                                                                        <br />
                                                                                        <br />
                                                                                        <asp:Label ID="lblField8" runat="server" Text='<%# Eval("Field8") %>' />
                                                                                        <%--Live = CityCounty, Online = State--%>
                                                                                    </td>


                                                                                    <td class="col-md-4">
                                                                                        <asp:Label Style="font-weight: 600;" ID="lblForField9" Text='<%# Eval("ProgramCategory").ToString() == "Live Program" ? "State" : "Country" %>'
                                                                                            runat="server" />
                                                                                        <br />
                                                                                        <br />
                                                                                        <asp:Label ID="lblField9" runat="server" Text='<%# Eval("Field9") %>' />
                                                                                        <%--Live = State, Online = Country--%>
                                                                                    </td>

                                                                                </tr>
                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>

                                                                        <asp:Repeater ID="rptAllLL4" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table  table-condensed WideTable " border="0" table-layout: fixed>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">

                                                                                    <td class="col-md-4">
                                                                                        <asp:Label Style="font-weight: 600;" ID="lblForField10" Text='<%# Eval("ProgramCategory").ToString() == "Live Program" ? "Comments" : "Comments" %>'
                                                                                            runat="server" />
                                                                                        <br />
                                                                                        <br />
                                                                                        <asp:Label ID="lblField10" runat="server" Text='<%# Eval("Field10") %>' />
                                                                                        <%--Live = Comments, Online = Comments--%>
                                                                                    </td>


                                                                                    <td class="col-md-4">
                                                                                        <asp:Label Style="font-weight: 600;" ID="lblForField11" Text='<%# Eval("ProgramCategory").ToString() == "Live Program" ? "Last Updated By" : "Last Updated By" %>'
                                                                                            runat="server" />
                                                                                        <br />
                                                                                        <br />
                                                                                        <asp:Label ID="lblField11" runat="server" Text='<%# Eval("Field11") %>' />
                                                                                        <%--Live = LastUpdatedBy, Online = LastUpdatedBy--%>
                                                                                    </td>


                                                                                    <td class="col-md-4">
                                                                                        <asp:Label Style="font-weight: 600;" ID="lblForField12" Text='<%# Eval("ProgramCategory").ToString() == "Live Program" ? "Last Updated" : "Last Updated" %>'
                                                                                            runat="server" />
                                                                                        <br />
                                                                                        <br />
                                                                                        <asp:Label ID="lblField12" runat="server" Text='<%# Eval("Field12") %>' />
                                                                                        <%--Live = LastUpdated, Online = LastUpdated--%>
                                                                                    </td>

                                                                                </tr>
                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>




                                                                    </asp:Panel>
                                                                </td>

                                                                <asp:HiddenField ID="hfProgramIDAll" runat="server" Value='<%# Eval("AllProgramID") %>' />
                                                                <asp:HiddenField ID="hfProgramCategory" runat="server" Value='<%# Eval("ProgramCategory") %>' />
                                                                <%--<td>
                                                                    <img alt="" style="cursor: pointer;" src="#" />
                                                                </td>
                                                                <td>
                                                                    <img alt="" style="cursor: pointer;" src="#" />
                                                                </td>--%>
                                                                <td>
                                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProgramCategory") %>' />

                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblProgramDate" runat="server" Text='<%# Eval("ProgramDate") %>' />

                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblOrganization" runat="server" Text='<%# Eval("ProgramType") %>' />

                                                                </td>
                                                                <td></td>

                                                            </tr>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            </table>
                                                        </FooterTemplate>
                                                    </asp:Repeater>
                                                </div>
                                            </div>

                                            <%-- For the Live Programs--%>
                                            <div id="LiveTab" class="tab-pane fade in">
                                                <%--VERSION 1 Live--%>




                                                <br />
                                                <div class="row mx-auto d-flex justify-content-center">

                                                    <div class=" col-xl-3 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                                                        <asp:DropDownList ID="ddlOrderByLive" runat="server" class="btn btn-secondary btn-block dropdown-toggle" Style="background-color: #FFFAFA !important; color: #732700 !important;" AppendDataBoundItems="false" AutoPostBack="true" DataValueField="" OnSelectedIndexChanged="ddlOrderByLive_SelectedIndexChanged">
                                                            <asp:ListItem>--Order By--</asp:ListItem>
                                                            <asp:ListItem>Program Date</asp:ListItem>
                                                            <asp:ListItem>Organization A-Z</asp:ListItem>
                                                            <asp:ListItem>Program Type A-Z</asp:ListItem>

                                                        </asp:DropDownList>&nbsp&nbsp
                                                    </div>
                                                    <%--<div class="col-xl-3 col-lg-0 col-md-0 col-sm-0 col-xs-0"></div>--%>
                                                     <div class=" col-lg-3 col-xl-3 col-md-6 col-sm-12 InternalAnimalForm">
                                                                       <label id="StartDateLabelLive" class="" for="StartDateLive">Start Date:</label>
                              
                                                                                    <input type="date" id="StartDateLive" class="form-control" runat="server" />
                                                                    </div>
                                                                <div class=" col-lg-3 col-xl-3 col-md-6 col-sm-12 InternalAnimalForm">
                                                                     <label id="EndDateLabelLive" class="" for="EndDateLive">End Date:</label>
                              
                                                                                    <input type="date" id="EndDateLive" class="form-control" runat="server" />
                                                                    </div>
                                                              <div class=" col-lg-2 col-xl-2 col-md-6 col-sm-6 text-right InternalAnimalForm">
                                
                                                                              <asp:Button ID="btnFilterDatesLive" runat="server" style="margin-top:7px;" CssClass="btn btn-block" OnClick="btnViewLive_Click" Text="Filter Dates" />      
                                                                                </div>
                                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 col-xs-12 ">
                                                        <asp:TextBox class="InternalAnimalForm form-control" ID="txtSearchLive" runat="server"></asp:TextBox>

                                                    </div>

                                                    <div class="col-xl-3 col-lg-4 col-md-12 col-sm-12 col-xs-12 ">

                                                        <asp:Button ID="btnLiveSearch" runat="server" class="btn" Style="margin-right: 5px; margin-bottom: 5px;" Text="Search" OnClick="btnLiveSearch_Click" />
                                                        <asp:Button ID="btnLiveClear" runat="server" class="btn" Style="margin-bottom: 5px;" Text="Clear Filters" OnClick="btnLiveClear_Click" />
                                                    </div>

                                                </div>










                                                <div class="block justify-content-center table-responsive">
                                                    <div id="NoRecordsLive" runat="server" visible="false">
                                                            No records are available.
                                                    </div>

                                                    <asp:Repeater ID="rptProgramHLLive" runat="server" OnItemDataBound="OnItemDataBoundLive">
                                                        <HeaderTemplate>
                                                            <table class="Grid table  table-borderless  WideTable " border="1" table-layout: fixed>
                                                               <tr class="" style="background-color: #C7BFC4 !important; color: Black !important;">
                                                                    <th scope="col">&nbsp
                                                                    </th>

                                                                    <th style="font-weight: 600; font-size: 110%;" scope="col">Program Date
                                                                    </th>
                                                                    <th style="font-weight: 600; font-size: 110%;" scope="col">Organization
                                                                    </th>
                                                                    <th style="font-weight: 600; font-size: 110%;" scope="col">Program Type
                                                                    </th>


                                                                </tr>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td>
                                                                    <img alt="" style="cursor: pointer;" src="images/plus.png" />
                                                                    <asp:Panel ID="pnlProgramLive" runat="server" Style="display: none">
                                                                        <asp:Repeater ID="rptProgramLLLive" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table  table-borderless table-condensed WideTable  col-md-12" border="0" table-layout: fixed>

                                                                                    <tr class="row">
                                                                                        <th class="col-md-4" scope="col">Status
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">Number of Children
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">Number of Adults
                                                                                        </th>

                                                                                    </tr>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Status") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblNumOfChildren" runat="server" Text='<%# Eval("NumberOfChildren") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblNumOfAdults" runat="server" Text='<%# Eval("NumberOfAdults") %>' />
                                                                                    </td>

                                                                                </tr>
                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>
                                                                        <asp:Repeater ID="rptProgramLL2Live" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table  table-borderless table-condensed WideTable" border="0" table-layout: fixed>

                                                                                    <tr class="row">

                                                                                        <th class="col-md-4" scope="col">Street Addess
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">City, County
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">State
                                                                                        </th>

                                                                                    </tr>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProgramAddress") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblCity" runat="server" Text='<%# Eval("City") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblState" runat="server" Text='<%# Eval("State") %>' />
                                                                                    </td>

                                                                                </tr>
                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>
                                                                        <asp:Repeater ID="rptProgramLL3Live" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table   table-borderless table-condensed WideTable" border="0" table-layout: fixed>

                                                                                    <tr class="row">
                                                                                        <th class="col-md-4" scope="col">On/Off Site
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">Payment Status
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">Comments
                                                                                        </th>

                                                                                    </tr>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("OnOffSite") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblCity" runat="server" Text='<%# Eval("Paid?") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblState" runat="server" Text='<%# Eval("Comments") %>' />
                                                                                    </td>


                                                                                </tr>
                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>
                                                                        <asp:Repeater ID="rptNewLiveProgramLL4" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table   table-borderless table-condensed WideTable" border="0" table-layout: fixed>
                                                                                    <tr class="row">
                                                                                        <th class="col-md-4" scope="col">Birds
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">Mammals
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">Reptiles
                                                                                        </th>

                                                                                    </tr>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row" style="padding-top: 0px; padding-bottom: 0px;">

                                                                                    <td class="col-md-4" style="padding-top: 0px; padding-bottom: 0px;">

                                                                                        <asp:Label ID="Label3" Style="padding-top: 0px; padding-bottom: 0px;" runat="server" Text='<%# Eval("Birds") %>' />
                                                                                    </td>



                                                                                    <td class="col-md-4" style="padding-top: 0px; padding-bottom: 0px;">

                                                                                        <asp:Label ID="lblAddBird" Style="padding-top: 0px; padding-bottom: 0px;" runat="server" Text='<%# Eval("Mammals") %>' />
                                                                                    </td>

                                                                                    <td class="col-md-4" style="padding-top: 0px; padding-bottom: 0px;">

                                                                                        <asp:Label ID="Label6" Style="padding-top: 0px; padding-bottom: 0px;" runat="server" Text='<%# Eval("Reptiles") %>' />

                                                                                    </td>
                                                                                </tr>
                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>

                                                                    </asp:Panel>
                                                                </td>
                                                                <asp:HiddenField ID="hfProgramIDLive" runat="server" Value='<%# Eval("ProgramID") %>' />

                                                                <td>
                                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProgramDate") %>' />

                                                                </td>

                                                                <td>
                                                                    <asp:Label ID="lblOrganization" runat="server" Text='<%# Eval("Organization") %>' />

                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblProgramDate" runat="server" Text='<%# Eval("ProgramType") %>' />

                                                                </td>
                                                                <td></td>

                                                            </tr>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            </table>
                                                        </FooterTemplate>
                                                    </asp:Repeater>
                                                    <div class="row">
                                                        <%--OnClick="btnExportLive_Click"--%>
                                                        <div class="mx-auto d-flex justify-content-center  col-lg-3    col-md-4 col-sm-6 ">
                                                            <asp:Button ID="btnExportLive" runat="server" Text="Export to Excel" OnClick="btnExportLive_Click" class="btn btn-primary btn-inside btn-block"></asp:Button>

                                                        </div>

                                                    </div>

                                                </div>
                                            </div>



                                            <div id="OnlineTab" class="tab-pane fade in ">
                                                <%--For the Online--%>





                                                <br />
                                                <div class="row mx-auto d-flex justify-content-center">

                                                    <div class=" col-xl-3 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                                                        <asp:DropDownList ID="ddlOrderByOnline" runat="server" class="btn btn-secondary btn-block dropdown-toggle" Style="background-color: #FFFAFA !important; color: #732700 !important;" AppendDataBoundItems="false" AutoPostBack="true" DataValueField="" OnSelectedIndexChanged="ddlOrderByOnline_SelectedIndexChanged">
                                                            <asp:ListItem>--Order By--</asp:ListItem>
                                                            <asp:ListItem>Program Date</asp:ListItem>
                                                            <asp:ListItem>Program Type A-Z</asp:ListItem>

                                                        </asp:DropDownList>&nbsp&nbsp
                                                    </div>
                                                    <%--<div class="col-xl-3 col-lg-0 col-md-0 col-sm-0 col-xs-0"></div>--%>
                                                    <div class=" col-lg-3 col-xl-3 col-md-6 col-sm-12 InternalAnimalForm">
                                                                       <label id="StartDateLabelOnline" class="" for="StartDateOnline">Start Date:</label>
                              
                                                                                    <input type="date" id="StartDateOnline" class="form-control" runat="server" />
                                                                    </div>
                                                                <div class=" col-lg-3 col-xl-3 col-md-6 col-sm-12 InternalAnimalForm">
                                                                     <label id="EndDateLabelOnline" class="" for="EndDateOnline">End Date:</label>
                              
                                                                                    <input type="date" id="EndDateOnline" class="form-control" runat="server" />
                                                                    </div>
                                                              <div class=" col-lg-2 col-xl-2 col-md-6 col-sm-6 text-right InternalAnimalForm">
                                
                                                                              <asp:Button ID="btnFilterDatesOnline" runat="server" style="margin-top:7px;" CssClass="btn btn-block" OnClick="btnViewOnline_Click" Text="Filter Dates" />      
                                                                                </div>
                                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12 col-xs-12 ">
                                                        <asp:TextBox class="InternalAnimalForm form-control" ID="txtSearchOnline" runat="server"></asp:TextBox>

                                                    </div>

                                                    <div class="col-xl-3 col-lg-4 col-md-12 col-sm-12 col-xs-12 ">

                                                        <asp:Button ID="btnOnlineSearch" runat="server" class="btn" Style="margin-right: 5px; margin-bottom: 5px;" Text="Search" OnClick="btnOnlineSearch_Click" />
                                                        <asp:Button ID="btnOnlineClear" runat="server" class="btn" Style="margin-bottom: 5px;" Text="Clear Filters" OnClick="btnOnlineClear_Click" />
                                                    </div>

                                                </div>












                                                <div class="block justify-content-center table-responsive">
                                                    <div id="NoRecordsOnline" runat="server" visible="false">
                                                                No records are available.
                                                        </div>

                                                    <asp:Repeater ID="rptProgramHLOnline" runat="server" OnItemDataBound="OnItemDataBoundOnline">
                                                        <HeaderTemplate>
                                                            <table class="Grid table  table-borderless  WideTable " border="1" table-layout: fixed>
                                                               <tr class="" style="background-color: #C7BFC4 !important; color: Black !important;">
                                                                    <th scope="col"></th>

                                                                    <th style="font-weight: 600; font-size: 110%;" scope="col">Program Date</th>

                                                                    <th style="font-weight: 600; font-size: 110%;" scope="col">Program Type</th>
                                                                </tr>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td>

                                                                    <img alt="" style="cursor: pointer;" src="images/plus.png" />
                                                                    <asp:Panel ID="pnlProgramOnline" runat="server" Style="display: none">
                                                                        <asp:Repeater ID="rptProgramLLOnline" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table  table-condensed WideTable " border="0" table-layout: fixed>

                                                                                    <tr class="row">

                                                                                        <th class="col-md-4" scope="col">Number of Children
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">Number of Adults
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">Educator Name
                                                                                        </th>
                                                                                    </tr>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblNumOfChildren" runat="server" Text='<%# Eval("NumberOfKids") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblNumOfAdults" runat="server" Text='<%# Eval("NumberOfPeople") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("TeacherName") %>' />
                                                                                    </td>

                                                                                </tr>
                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>
                                                                        <asp:Repeater ID="rptProgramLL2Online" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table  table-condensed WideTable" border="0" table-layout: fixed>

                                                                                    <tr class="row">

                                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>City
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>State
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>Country
                                                                                        </th>
                                                                                    </tr>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblCity" runat="server" Text='<%# Eval("City") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblState" runat="server" Text='<%# Eval("State") %>' />
                                                                                    </td>
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("Country") %>' />
                                                                                    </td>

                                                                                </tr>
                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>
                                                                        <asp:Repeater ID="rptProgramLL3Online" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table  table-condensed WideTable" border="0" table-layout: fixed>

                                                                                    <tr class="row">
                                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>Contact Primary Email
                                                                                        </th>

                                                                                        <th class="col-md-4" scope="col" <%--style="width: 250px"--%>>Comments
                                                                                        </th>

                                                                                    </tr>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row">
                                                                                    <td class="col-md-4">
                                                                                        <asp:Label ID="lblCity" runat="server" Text='<%# Eval("ContactEmail") %>' />
                                                                                    </td>

                                                                                    <td class="col-md-8">
                                                                                        <asp:Label ID="lblState" runat="server" Text='<%# Eval("Comments") %>' />
                                                                                    </td>


                                                                                </tr>
                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>
                                                                        <asp:Repeater ID="rptNewOnlineProgramLL4" runat="server">

                                                                            <HeaderTemplate>

                                                                                <table class="ChildGrid table   table-borderless table-condensed WideTable" border="0" table-layout: fixed>
                                                                                    <tr class="row">
                                                                                        <th class="col-md-4" scope="col">Birds
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">Mammals
                                                                                        </th>
                                                                                        <th class="col-md-4" scope="col">Reptiles
                                                                                        </th>

                                                                                    </tr>
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <tr class="row" style="padding-top: 0px; padding-bottom: 0px;">

                                                                                    <td class="col-md-4" style="padding-top: 0px; padding-bottom: 0px;">

                                                                                        <asp:Label ID="Label3" Style="padding-top: 0px; padding-bottom: 0px;" runat="server" Text='<%# Eval("Birds") %>' />
                                                                                    </td>



                                                                                    <td class="col-md-4" style="padding-top: 0px; padding-bottom: 0px;">

                                                                                        <asp:Label ID="lblAddBird" Style="padding-top: 0px; padding-bottom: 0px;" runat="server" Text='<%# Eval("Mammals") %>' />
                                                                                    </td>

                                                                                    <td class="col-md-4" style="padding-top: 0px; padding-bottom: 0px;">

                                                                                        <asp:Label ID="Label6" Style="padding-top: 0px; padding-bottom: 0px;" runat="server" Text='<%# Eval("Reptiles") %>' />

                                                                                    </td>
                                                                                </tr>
                                                                            </ItemTemplate>



                                                                            <FooterTemplate>
                                                                                </table>
                                                                            </FooterTemplate>

                                                                        </asp:Repeater>
                                                                    </asp:Panel>
                                                                </td>
                                                                <asp:HiddenField ID="hfProgramIDOnline" runat="server" Value='<%# Eval("OnlineProgramID") %>' />
                                                                <td>
                                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProgramDate") %>' />
                                                                    <%--to be program date--%>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblProgramDate" runat="server" Text='<%# Eval("ProgramType") %>' />
                                                                    <%--to be program date--%>
                                                                </td>
                                                                <td></td>

                                                            </tr>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            </table>
                                                        </FooterTemplate>
                                                    </asp:Repeater>
                                                    <%--OnClick="btnExportOnline_Click"--%>
                                                    <div class="row">
                                                        <div class="mx-auto d-flex justify-content-center  col-lg-3    col-md-4 col-sm-6 ">
                                                            <asp:Button ID="btnExportOnline" runat="server" Text="Export to Excel" OnClick="btnExportOnline_Click" class="btn btn-primary btn-inside btn-block"></asp:Button>

                                                        </div>
                                                    </div>

                                                </div>
                                            </div>



                                        </div>


                                    </div>
                                </div>



                            </div>
                        </div>

                        <div runat="server" id="Div1">
                        </div>
                    </div>

                    <div class="text-center">
                    </div>
                </section>
            </div>
        </div>





    </div>


    <div class="modal" id="UpdateLiveProgram" tabindex="-1" role="dialog">
        <div class="modal-dialog " role="document">
            <div class="modal-content ">
                <div class="modal-header">
                    <h5 class="modal-title text-center" style="font-size: 145% !important; color: #e2561d !important;">Edit Live Program</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddlOrganization" EventName="SelectedIndexChanged" />
                    </Triggers>
                    <ContentTemplate>
                        <div class="modal-body">


                             <div class="row">


                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Select Program</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Select Program</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                    <asp:DropDownList ID="ddlProgramID" class="btn btn-block form-control" style="border-color:lightgrey;" runat="server" AppendDataBoundItems="false" AutoPostBack="true" DataTextField="ProgramID" DataValueField="ProgramID" OnSelectedIndexChanged="ddlProgramID_SelectedIndexChanged1">

                                            <asp:ListItem Text="--Select Live Program--" Value="0" />
                                        </asp:DropDownList>
                                </div>
                            </div>
                            <br />
                              <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Program Type</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Program Type</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                    <asp:DropDownList ID="ddlProgramType" class="btn btn-block form-control" style="border-color:lightgrey;" runat="server">
                                            <asp:ListItem Text="--Live Program--" Value="0" />
                                        </asp:DropDownList>
                                </div>
                            </div>
                            <br />
                              <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Organization</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Organization</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                   <asp:DropDownList ID="ddlOrganization" class="btn btn-block form-control" style="border-color:lightgrey;" runat="server">
                                        <asp:ListItem Text="--Organization--" Value="0" />

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Status</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Status</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                   <asp:TextBox ID="txtStatus" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Program Address</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Program Address</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                  <asp:TextBox ID="txtAddress" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                         
                            <br />

                               <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>City/County</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>City/County</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                   <asp:TextBox ID="txtCity" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <br />
                           

                               <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>State</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>State</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                  <asp:TextBox ID="txtState" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Number of Children</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Number of Children</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                   <asp:TextBox ID="txtNumOfChildren" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Number of Adults</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Number of Adults</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                 <asp:TextBox ID="txtNumOfAdults" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                          <br />
                            <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Program Date</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Program Date</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                 <asp:TextBox ID="txtProgramDate" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Program Time</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Program Time</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                 <asp:TextBox ID="txtProgramTime" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>On/Off Site</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>On/Off Site</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                    <asp:DropDownList ID="ddlOnOffSiteEdit" runat="server">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem Value="0">Yes</asp:ListItem>
                                        <asp:ListItem Value="1">No</asp:ListItem>
                                    </asp:DropDownList>

<%--                                 <asp:RadioButtonList ID="rboOnOff" runat="server">
                                        <asp:ListItem Value="0"> On-Site</asp:ListItem>
                                        <asp:ListItem Value="1"> Off-Site</asp:ListItem>
                                    </asp:RadioButtonList>--%>
                                </div>
                            </div>

                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Payment Needed?</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Payment Needed?</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                <asp:RadioButtonList ID="rboPayment" runat="server">
                                        <asp:ListItem> Yes</asp:ListItem>
                                        <asp:ListItem> No</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Educators</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Educators</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                               <asp:ListBox ID="drpEducators" runat="server" class=" text-left btn btn-block form-control" style="border-color:lightgrey;" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Educators--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>

                            <br />

                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Volunteers</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Volunteers</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                               <asp:ListBox ID="drpUpdateLiveVolunteers" runat="server" class=" text-left btn btn-block form-control" style="border-color:lightgrey;" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Volunteers--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>

                            <br />
                            
                                 <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Birds</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Birds</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                <asp:ListBox ID="ddlBirds" runat="server" class=" text-left btn btn-block form-control" style="border-color:lightgrey;" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Birds--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>
                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Reptiles</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Reptiles</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                <asp:ListBox ID="ddlReptiles" runat="server" class=" text-left btn btn-block form-control" style="border-color:lightgrey;" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Reptiles--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>
                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Mammals</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Mammals</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                 <asp:ListBox ID="lstMammals" runat="server" class=" text-left btn btn-block form-control" style="border-color:lightgrey;" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Mammals--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>
                            <br />

                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Grades</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Grades</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                 <asp:ListBox ID="AddGrade" runat="server" class=" text-left btn btn-block form-control" style="border-color:lightgrey;" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Grades--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>
                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Comments</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Comments</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                               <asp:TextBox ID="txtComments" class="form-control" rows="3" runat="server"></asp:TextBox>
                                </div>
                            </div>


                      
                          
                 <asp:TextBox ID="txtCounty" hidden="true" runat="server"></asp:TextBox>

                            <br />

                              <div class="row">
                                    <div class=" col-md-12 InternalAnimalForm" >
                            <asp:Label ID="lblLastUpdated" class="alert-warning mb-1" runat="server" Text=""></asp:Label> <br />
                            <asp:Label ID="lblLastUpdatedBy" class="alert-warning" runat="server" Text=""></asp:Label>
   </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <div class="modal-footer">





                    <button type="button" id="btnDelete" runat="server" class="btn  btn-inside" data-dismiss="modal" text="Disable" onclick="btnDelete_Click">Disable</button>


                    <%-- <button type="button" id="btnUpdate" class="btn  btn-inside" runat="server" text="Update" onclick="btnUpdate_Click">Update</button>--%>
                    <%--                    <button type="button" id="btnDelete" runat="server" class="btn  btn-inside" text="Delete" onclick="btnDelete_Click">Delete</button>--%>
                    <asp:Button ID="Button1" runat="server" class="btn  btn-inside" Text="Save Changes" OnClick="btnUpdate_Click" />

                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>


    <div class="modal" id="UpdateOnlineProgram" tabindex="-1" role="dialog">


        <div class="modal-dialog   " role="document">
            <div class="modal-content ">
                <div class="modal-header">
                    <h5 class="modal-title text-center" style="font-size: 145% !important; color: #e2561d !important;">Edit Online Program </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="ddlOrganization" EventName="SelectedIndexChanged" />
                    </Triggers>
                    <ContentTemplate>
                        <div class="modal-body">

                            <div class="row">


                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Select Online Program</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Select Online Program</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                     <asp:DropDownList ID="ddlOnlineProgramID" runat="server" style="border-color:lightgrey;" class="btn btn-block form-control" AppendDataBoundItems="false" AutoPostBack="true" DataTextField="OnlineProgramID" DataValueField="OnlineProgramID" OnSelectedIndexChanged="ddlOnlineProgramID_SelectedIndexChanged1">
                                            <asp:ListItem Text="--Select Online Program--" Value="0" />
                                        </asp:DropDownList>
                                </div>
                            </div>
                            <br />
                              <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Online Program Type</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Online Program Type</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                   <asp:DropDownList ID="ddlOnlineProgramType" style="border-color:lightgrey;" class="btn btn-block form-control" runat="server">
                                            <asp:ListItem Text="--Program Type--" Value="0" />

                                        </asp:DropDownList>
                                </div>
                            </div>
                            <br />
                              <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>City/County</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>City/County</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                   <asp:TextBox ID="txtOCity" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>State If Applicable</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>State If Applicable</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                  <asp:TextBox ID="txtOState" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Country</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Country</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                   <asp:TextBox ID="txtOCountry" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                         
                            <br />

<%--                               <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>City/County</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>City/County</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                   <asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <br />--%>
                           

                               <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Teacher</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Teacher</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                  <asp:TextBox ID="txtOnlineTeacher" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Number of Children</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Number of Children</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                 <asp:TextBox ID="txtNumOfOnlineKids" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Number of Adults</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Number of Adults</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                  <asp:TextBox ID="txtNumOfOnlineAdults" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                          <br />
                            <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Program Date</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Program Date</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                <asp:TextBox ID="txtOnlineProgramDate" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Contact Email</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Contact Email</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                 <asp:TextBox ID="txtOEmail" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            

                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Grades</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Grades</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                 <asp:ListBox ID="lstOGrades" runat="server" style="border-color:lightgrey;" class=" text-left btn btn-block form-control" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Grades--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>
                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Educators</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Educators</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                <asp:ListBox ID="lstOEducators" runat="server" style="border-color:lightgrey;" class=" text-left btn btn-block form-control" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Educators--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>

                            <br />

                            <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Volunteers</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Volunteerss</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                <asp:ListBox ID="lstUpdateOnlineVolunteers" runat="server" style="border-color:lightgrey;" class=" text-left btn btn-block form-control" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Volunteers--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>

                            <br />
                            
                                 <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Birds</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Birds</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                               <asp:ListBox ID="lstOBirds" runat="server" style="border-color:lightgrey;" class=" text-left btn btn-block form-control" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Birds--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>
                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Reptiles</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Reptiles</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                 <asp:ListBox ID="lstOReptiles" runat="server" style="border-color:lightgrey;" class=" text-left btn btn-block form-control" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Reptiles--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>
                            <br />
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Mammals</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Mammals</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                                   <asp:ListBox ID="lstOMammals" runat="server" style="border-color:lightgrey;" class=" text-left btn btn-block form-control" SelectionMode="Multiple">
                                        <asp:ListItem Text="--Select Mammals--" Value="0" />
                                    </asp:ListBox>
                                </div>
                            </div>
                            <br />

                             
                       
                             <div class="row">

                               <div class="d-none d-md-block text-right col-md-5 InternalOrganizationForm">
                                    <h6>Comments</h6>
                                </div>
                                <div class=" d-md-none text-left col-md-5 InternalOrganizationForm">
                                    <h6>Comments</h6>
                                </div>
                                <div class=" col-md-6 InternalAnimalForm">
                              <asp:TextBox ID="txtOComments" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                            &nbsp;<asp:Label ID="Label5" runat="server" Text=""></asp:Label>

                          </div>  
                    </ContentTemplate>
                </asp:UpdatePanel>

                <div class="modal-footer">

                    <%--  <button type="button" id="btnUpdate2" class="btn  btn-inside" runat="server" text="Update" onclick="btnOnlineUpdate_Click">Update</button>
                    <button type="button" id="btnDelete2" runat="server" class="btn  btn-inside" text="Delete" onclick="btnOnlineDelete_Click">Delete</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>


                    <button type="button" id="Button2" runat="server" class="btn  btn-inside" data-dismiss="modal" text="Disable" onclick="btnOnlineDelete_Click">Disable</button>
                    <asp:Button ID="Button3" runat="server" class="btn  btn-inside" Text="Save Changes" OnClick="btnOnlineUpdate_Click" />
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>


            </div>

        </div>

  




    </div>











    






    <%--Adding new program modal--%>
    




        <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>


    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>


    <script>
        //Selector for the first modal slide
        $("#btnEndSelectProgramType").click(function () {
            var x = document.getElementById("LiveOnline").value;
            if (x == "Live") {
                $("#SelectProgramType").addClass('hideMe');
                $("#step11").removeClass('hideMe');
            } else if (x == "Online") {
                $("#SelectProgramType").addClass('hideMe');
                $("#step21").removeClass('hideMe');
            }
        });
        //Selector for the first modal slide
        $("#btnBackOnline").click(function () {
            $("#step21").addClass('hideMe');
            $("#SelectProgramType").removeClass('hideMe');
        });
        $("#btnBackLive").click(function () {
            $("#step11").addClass('hideMe');
            $("#SelectProgramType").removeClass('hideMe');
        });
        $("#btnEndstep14").click(function () {
            // Whatever your final validation and form submission requires
            $("#sampleModal").modal("hide");
            window.location.reload();
        });
        // FINISH LIVE PROGRAM MODAL PATH
        $("#btnEndstep24").click(function () {
            // Whatever your final validation and form submission requires
            $("#sampleModal").modal("hide");
            window.location.reload();
        });
        // If statement for on or off and locaton
        function scheduleA(event) {
            var x = document.getElementById("OnOff").value;
            if (x == "On") {
                $("#Address").addClass('hideMe');
                $("#AddressLabel").addClass('hideMe');
                $("#CityCounty").addClass('hideMe');
                $("#CityCountyLabel").addClass('hideMe');
                $("#State").addClass('hideMe');
                $("#StateLabel").addClass('hideMe');
            } else if (x == "Off") {
                $("#Address").removeClass('hideMe');
                $("#AddressLabel").removeClass('hideMe');
                $("#CityCounty").removeClass('hideMe');
                $("#CityCountyLabel").removeClass('hideMe');
                $("#State").removeClass('hideMe');
                $("#StateLabel").removeClass('hideMe');
            }
        }
    </script>


</asp:Content>