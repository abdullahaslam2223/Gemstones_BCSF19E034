<%@ Page Title="" Language="C#" MasterPageFile="~/GS_Main.Master" AutoEventWireup="true" CodeBehind="GS_List_Products_Settings.aspx.cs" Inherits="Gemstones_BCSF19E034.GS_List_Products_Settings" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminBody" runat="server">

    <form runat="server">
        <div class="row">
            <div class="col-3">
                <div style="background-color: #edf0ee; height: 70vh;" class="p-3 overflow-auto">
                    <h2>Categories</h2>
                    <button type="button" id="Add_Category_Btn" class="btn btn-outline-success btn-sm mb-1" runat="server">
                        Add Category
                    </button>
                    <asp:GridView ID="GV_Categories" CssClass="table table-bordered" OnRowCommand="GV_Categories_RowCommand" OnRowDeleting="GV_Categories_RowDeleting" AutoGenerateColumns="false" runat="server">
                        <Columns>
                            <asp:BoundField DataField="category_name" HeaderText="Name" />
                            <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <asp:Button CssClass="btn btn-sm btn-danger" CommandName="delete" CommandArgument='<%# Eval("category_id") %>' OnClientClick="return confirm('Are you sure?');" Text="Delete" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:Label ID="GV_Categories_Responses" runat="server"></asp:Label>
                </div>
            </div>
            <div class="col-3">
                <div style="background-color: #edf0ee; height: 70vh;" class="p-3 overflow-auto">
                    <h2>Colors</h2>
                    <button type="button" id="Add_Color_Btn" class="btn btn-outline-success btn-sm mb-1" runat="server">
                        Add Color
                    </button>
                    <asp:GridView ID="GV_Colors" CssClass="table table-bordered" OnRowCommand="GV_Colors_RowCommand" OnRowDeleting="GV_Colors_RowDeleting" AutoGenerateColumns="false" runat="server">
                        <Columns>
                            <asp:BoundField DataField="color_name" HeaderText="Name" />
                            <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <asp:Button CssClass="btn btn-sm btn-danger" CommandName="delete" CommandArgument='<%# Eval("color_id") %>' OnClientClick="return confirm('Are you sure?');" Text="Delete" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:Label ID="GV_Colors_Responses" runat="server"></asp:Label>
                </div>
            </div>
            <div class="col-3">
                <div style="background-color: #edf0ee; height: 70vh;" class="p-3 overflow-auto">
                    <h2>Shapes</h2>
                    <button type="button" id="Add_Shape_Btn" class="btn btn-outline-success btn-sm mb-1" runat="server">
                        Add Shape
                    </button>
                    <asp:GridView ID="GV_Shapes" CssClass="table table-bordered" OnRowCommand="GV_Shapes_RowCommand" OnRowDeleting="GV_Shapes_RowDeleting" AutoGenerateColumns="false" runat="server">
                        <Columns>
                            <asp:BoundField DataField="shape_name" HeaderText="Name" />
                            <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <asp:Button CssClass="btn btn-sm btn-danger" CommandName="delete" CommandArgument='<%# Eval("shape_id") %>' OnClientClick="return confirm('Are you sure?');" Text="Delete" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:Label ID="GV_Shapes_Responses" runat="server"></asp:Label>
                </div>
            </div>
            <div class="col-3">
                <div style="background-color: #edf0ee; height: 70vh;" class="p-3 overflow-auto">
                    <h2>Sizes</h2>
                    <button type="button" id="Add_Size_Btn" class="btn btn-outline-success btn-sm mb-1" runat="server">
                        Add Size
                    </button>
                    <asp:GridView ID="GV_Sizes" CssClass="table table-bordered" OnRowCommand="GV_Sizes_RowCommand" OnRowDeleting="GV_Sizes_RowDeleting" AutoGenerateColumns="false" runat="server">
                        <Columns>
                            <asp:BoundField DataField="size_name" HeaderText="Name" />
                            <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <asp:Button CssClass="btn btn-sm btn-danger" CommandName="delete" CommandArgument='<%# Eval("size_id") %>' OnClientClick="return confirm('Are you sure?');" Text="Delete" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:Label ID="GV_Sizes_Responses" runat="server"></asp:Label>
                </div>
            </div>
        </div>

        <!-- Ajax & Modals Starts here -->

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>


        <!-- Category -->

        <cc1:ModalPopupExtender ID="Category_Popup_Extender" runat="server" PopupControlID="Category_Panel" TargetControlID="Add_Category_Btn"
            CancelControlID="Category_Close" BackgroundCssClass="Background">
        </cc1:ModalPopupExtender>

        <asp:Panel ID="Category_Panel" runat="server" CssClass="Popup opacity-100" Width="100%" Height="100%" BackColor="Black" align="center" Style="display: none">
                <asp:Panel runat="server" BackColor="White" Width="35%" Height="30%" CssClass="modal-dialog p-4 mt-3">
                    <asp:Panel runat="server" class="modal-content">

                        <asp:Panel runat="server" CssClass="modal-header">
                            <h4 class="modal-title">Add Category</h4>
                            <asp:Button ID="Category_Close" CssClass="btn-close" runat="server" />
                        </asp:Panel>

                        <asp:Panel runat="server" CssClass="modal-body">
                            <asp:Panel runat="server" CssClass="form-outline text-start">
                                <asp:Label CssClass="form-label" AssociatedControlID="Add_New_Product_Category" Text="Category Name" runat="server"></asp:Label>
                                <asp:TextBox runat="server" ID="Add_New_Product_Category" CssClass="form-control form-control-sm"></asp:TextBox>
                            </asp:Panel>
                                <asp:Button runat="server" ID="Add_New_Product_Category_Btn" OnClick="Add_New_Product_Category_Btn_Click" CssClass="btn btn-success mt-2" Text="Add" />
                        </asp:Panel>

                    </asp:Panel>
                </asp:Panel>
        </asp:Panel>


        <!-- Color -->

        <cc1:ModalPopupExtender ID="Color_Popup_Extender" runat="server" PopupControlID="Color_Panel" TargetControlID="Add_Color_Btn"
            CancelControlID="Color_Close" BackgroundCssClass="Background">
        </cc1:ModalPopupExtender>

        <asp:Panel ID="Color_Panel" runat="server" CssClass="Popup opacity-100" Width="100%" Height="100%" BackColor="Black" align="center" Style="display: none">
                <asp:Panel runat="server" BackColor="White" Width="35%" Height="30%" CssClass="modal-dialog p-4 mt-3">
                    <asp:Panel runat="server" class="modal-content">

                        <asp:Panel runat="server" CssClass="modal-header">
                            <h4 class="modal-title">Add Color</h4>
                            <asp:Button ID="Color_Close" CssClass="btn-close" runat="server" />
                        </asp:Panel>

                        <asp:Panel runat="server" CssClass="modal-body">
                            <asp:Panel runat="server" CssClass="form-outline text-start">
                                <asp:Label CssClass="form-label" AssociatedControlID="Add_New_Product_Color" Text="Color Name" runat="server"></asp:Label>
                                <asp:TextBox runat="server" ID="Add_New_Product_Color" CssClass="form-control form-control-sm"></asp:TextBox>
                            </asp:Panel>
                                <asp:Button runat="server" ID="Add_New_Product_Color_Btn" OnClick="Add_New_Product_Color_Btn_Click" CssClass="btn btn-success mt-2" Text="Add" />
                        </asp:Panel>

                    </asp:Panel>
                </asp:Panel>
        </asp:Panel>


         <!-- Shape -->

        <cc1:ModalPopupExtender ID="Shape_Popup_Extender" runat="server" PopupControlID="Shape_Panel" TargetControlID="Add_Shape_Btn"
            CancelControlID="Shape_Close" BackgroundCssClass="Background">
        </cc1:ModalPopupExtender>

        <asp:Panel ID="Shape_Panel" runat="server" CssClass="Popup opacity-100" Width="100%" Height="100%" BackColor="Black" align="center" Style="display: none">
                <asp:Panel runat="server" BackColor="White" Width="35%" Height="30%" CssClass="modal-dialog p-4 mt-3">
                    <asp:Panel runat="server" class="modal-content">

                        <asp:Panel runat="server" CssClass="modal-header">
                            <h4 class="modal-title">Add Shape</h4>
                            <asp:Button ID="Shape_Close" CssClass="btn-close" runat="server" />
                        </asp:Panel>

                        <asp:Panel runat="server" CssClass="modal-body">
                            <asp:Panel runat="server" CssClass="form-outline text-start">
                                <asp:Label CssClass="form-label" AssociatedControlID="Add_New_Product_Shape" Text="Shape Name" runat="server"></asp:Label>
                                <asp:TextBox runat="server" ID="Add_New_Product_Shape" CssClass="form-control form-control-sm"></asp:TextBox>
                            </asp:Panel>
                                <asp:Button runat="server" ID="Add_New_Product_Shape_Btn" OnClick="Add_New_Product_Shape_Btn_Click" CssClass="btn btn-success mt-2" Text="Add" />
                        </asp:Panel>

                    </asp:Panel>
                </asp:Panel>
        </asp:Panel>


        <!-- Size -->

        <cc1:ModalPopupExtender ID="Size_Popup_Extender" runat="server" PopupControlID="Size_Panel" TargetControlID="Add_Size_Btn"
            CancelControlID="Size_Close" BackgroundCssClass="Background">
        </cc1:ModalPopupExtender>

        <asp:Panel ID="Size_Panel" runat="server" CssClass="Popup opacity-100" Width="100%" Height="100%" BackColor="Black" align="center" Style="display: none">
                <asp:Panel runat="server" BackColor="White" Width="35%" Height="30%" CssClass="modal-dialog p-4 mt-3">
                    <asp:Panel runat="server" class="modal-content">

                        <asp:Panel runat="server" CssClass="modal-header">
                            <h4 class="modal-title">Add Size</h4>
                            <asp:Button ID="Size_Close" CssClass="btn-close" runat="server" />
                        </asp:Panel>

                        <asp:Panel runat="server" CssClass="modal-body">
                            <asp:Panel runat="server" CssClass="form-outline text-start">
                                <asp:Label CssClass="form-label" AssociatedControlID="Add_New_Product_Size" Text="Size Name" runat="server"></asp:Label>
                                <asp:TextBox runat="server" ID="Add_New_Product_Size" CssClass="form-control form-control-sm"></asp:TextBox>
                            </asp:Panel>
                                <asp:Button runat="server" ID="Add_New_Product_Size_Btn" OnClick="Add_New_Product_Size_Btn_Click" CssClass="btn btn-success mt-2" Text="Add" />
                        </asp:Panel>

                    </asp:Panel>
                </asp:Panel>
        </asp:Panel>



        <!-- Ajax & Modals Ends here -->

    </form>

</asp:Content>
