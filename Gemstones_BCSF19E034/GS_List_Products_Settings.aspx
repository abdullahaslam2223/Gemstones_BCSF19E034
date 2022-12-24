<%@ Page Title="" Language="C#" MasterPageFile="~/GS_Main.Master" AutoEventWireup="true" CodeBehind="GS_List_Products_Settings.aspx.cs" Inherits="Gemstones_BCSF19E034.GS_List_Products_Settings" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminBody" runat="server">
    
    <form runat="server">
        <div class="row">
            <div class="col-3">
                <div style="background-color: #edf0ee; height: 70vh;" class="p-3 overflow-auto">
                    <h2>Categories</h2>
                    <button type="button" id="Add_Category_Lnk" class="btn btn-outline-success btn-sm mb-1" data-bs-toggle="modal" data-bs-target="#Add_Category_Modal">
                        Add Category
                    </button>
                    <asp:GridView ID="GV_Categories" CssClass="table table-bordered" AutoGenerateColumns="false" runat="server">
                        <Columns>
                            <asp:BoundField DataField="category_name" HeaderText="Name" />
                            <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <asp:Button CssClass="btn btn-sm btn-danger" CommandName="delete" CommandArgument='<%# Eval("category_id") %>' OnClientClick="return confirm('Are you sure?');" Text="Delete" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div class="col-3">
                <div style="background-color: #edf0ee; height: 70vh;" class="p-3 overflow-auto">
                    <h2>Colors</h2>
                    <asp:HyperLink NavigateUrl="#" Text="Add Color" CssClass="btn btn-outline-success btn-sm mb-1" runat="server"></asp:HyperLink>
                    <asp:GridView ID="GV_Colors" CssClass="table table-bordered" AutoGenerateColumns="false" runat="server">
                        <Columns>
                            <asp:BoundField DataField="color_name" HeaderText="Name" />
                            <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <asp:Button CssClass="btn btn-sm btn-danger" CommandName="delete" CommandArgument='<%# Eval("color_id") %>' OnClientClick="return confirm('Are you sure?');" Text="Delete" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div class="col-3">
                <div style="background-color: #edf0ee; height: 70vh;" class="p-3 overflow-auto">
                    <h2>Shapes</h2>
                    <asp:HyperLink NavigateUrl="#" Text="Add Shape" CssClass="btn btn-outline-success btn-sm mb-1" runat="server"></asp:HyperLink>
                    <asp:GridView ID="GV_Shapes" CssClass="table table-bordered" AutoGenerateColumns="false" runat="server">
                        <Columns>
                            <asp:BoundField DataField="shape_name" HeaderText="Name" />
                            <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <asp:Button CssClass="btn btn-sm btn-danger" CommandName="delete" CommandArgument='<%# Eval("shape_id") %>' OnClientClick="return confirm('Are you sure?');" Text="Delete" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div class="col-3">
                <div style="background-color: #edf0ee; height: 70vh;" class="p-3 overflow-auto">
                    <h2>Sizes</h2>
                    <asp:HyperLink NavigateUrl="#" Text="Add Size" CssClass="btn btn-outline-success btn-sm mb-1" runat="server"></asp:HyperLink>
                    <asp:GridView ID="GV_Sizes" CssClass="table table-bordered" AutoGenerateColumns="false" runat="server">
                        <Columns>
                            <asp:BoundField DataField="size_name" HeaderText="Name" />
                            <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <asp:Button CssClass="btn btn-sm btn-danger" CommandName="delete" CommandArgument='<%# Eval("size_id") %>' OnClientClick="return confirm('Are you sure?');" Text="Delete" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>

    </form>

    <!-- Modals Starts Here... -->
    <div class="modal fade" id="Add_Category_Modal" tabindex="-1" aria-labelledby="Add_Category_Modal_Title" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Add_Category_Modal_Title">Add Category</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <%--<form>--%>
                    <div>
                        <div class="form-outline">
                            <%--<asp:TextBox ID="Add_Product_Category" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                            <asp:Label CssClass="form-label" AssociatedControlID="Add_Product_Category" Text="Category Name" runat="server"></asp:Label>--%>
                            <input type="text" id="Add_Product_Category" required class="form-control form-control-lg" runat="server" />
                            <label for="Add_Product_Category" class="form-label">Category Name</label>
                        </div>
                    </div>
                        <%--</form>--%>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <%--<button type="button" id="Add_Category_Btn" onserverclick="Add_Category_Btn_ServerClick" class="btn btn-primary" runat="server">Add</button>--%>
                </div>
            </div>
        </div>
    </div>

    <!-- Modals Ends Here... -->

    <asp:Button ID="btnOpenPopUp" runat="server" text="Open PopUp" />
     <asp:Label ID="lblHidden" runat="server" Text=""></asp:Label>
        <ajaxToolkit:ModalPopupExtender ID="mpePopUp" runat="server" TargetControlID="lblHidden" PopupControlID="divPopUp" BackgroundCssClass="modalBackground"></ajaxToolkit:ModalPopupExtender>

<div id="divPopUp" class="pnlBackGround">
     <div id="Header" class="header" >MyHeader</div>
     <div id="main" class="main">Main PopUp </div>
     <div id="buttons">
          <div id="DivbtnOK" class="buttonOK"><asp:Button id="btnOk" runat="server" text="Ok" /></div>
          <div id="Divbtncancel" class="buttonOK"><asp:Button id="btnCancel" runat="server" text="Cancel" /></div>
     </div>
</div>
</asp:Content>
