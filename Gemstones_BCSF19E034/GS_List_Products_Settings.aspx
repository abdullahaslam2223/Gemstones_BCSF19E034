<%@ Page Title="" Language="C#" MasterPageFile="~/GS_Main.Master" AutoEventWireup="true" CodeBehind="GS_List_Products_Settings.aspx.cs" Inherits="Gemstones_BCSF19E034.GS_List_Products_Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminBody" runat="server">
    <form runat="server">
        <div class="row">
            <div class="col-3">
                <div style="background-color: #edf0ee; height: 70vh;" class="p-3 overflow-auto">
                    <h2>Categories</h2>
                    <asp:HyperLink NavigateUrl="#" Text="Add Category" CssClass="btn btn-outline-success btn-sm mb-1" runat="server"></asp:HyperLink>
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
</asp:Content>
