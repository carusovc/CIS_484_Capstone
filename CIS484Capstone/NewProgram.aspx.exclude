<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewProgram.aspx.cs" Inherits="NewProgram" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <body>
        <p>
            <h2>Add New Program</h2>
            Program Name:
   <%-- <asp:TextBox ID="txtProgramName" runat="server"></asp:TextBox>--%>
            <br />
            <br />
            <asp:Label ID="lblLastUpdated" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblLastUpdatedBy" runat="server" Text=""></asp:Label>
            &nbsp;<br />
            <%--<asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />--%>
        </p>



        <div class="modal" id="AddAnimalModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">>Add New Program</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div runat="server" id="AnimalAddDiv">
                            <p>&nbsp;</p>
                            <div class="row">
                                <div class=" col-md-4 InternalAnimalForm">
                                    <h6>Program Name</h6>
                                </div>
                                <div class=" col-md-3 InternalAnimalForm">
                                    <asp:TextBox ID="txtProgramName" runat="server"></asp:TextBox>&nbsp;&nbsp;
                                </div>
                            </div>
                            <div>
                            </div>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp;
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                    <div class="modal-footer">

                        <%--<asp:Button ID="btnAdd" class="btn btn-primary btn-inside" runat="server" Text="Add" OnClick="btnAdd_Click" />--%>
                        <%-- <button type="button" class="btn btn-primary btn-inside">Save changes</button>--%>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</asp:Content>
