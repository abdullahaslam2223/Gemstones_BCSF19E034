<%@ Page Title="" Language="C#" MasterPageFile="~/GS_Main.Master" AutoEventWireup="true" CodeBehind="GS_List_Products.aspx.cs" Inherits="Gemstones_BCSF19E034.GS_List_Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
    <script>
        //$(document).ready(function () {
        //    $('#GV_Products').prepend($("<thead><thead/>").append($(this).find("tr:first"))).DataTable();
        //    //$('#GV_Products').DataTable();
        //});
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminBody" runat="server">
    <form runat="server">
        <div style="background-color: #edf0ee;" class="px-3 py-3 mb-3 rounded">
            <asp:HyperLink NavigateUrl="~/GS_ManageProducts.aspx" ID="Add_New_Product_Lnk" CssClass="btn btn-outline-success" Text="Add Product" runat="server"></asp:HyperLink>
        </div>
        <h2 id="No_Products" class="text-center" runat="server"></h2>
        <asp:GridView ID="GV_Products" ClientIDMode="Static" CssClass="table table-bordered" OnRowCommand="GV_Products_RowCommand" OnRowEditing="GV_Products_RowEditing" OnRowDeleting="GV_Products_RowDeleting" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ImageUrl='<%# "~/assets/images/products/" + Eval("stone_image_url")%>' Width="80px" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="stone_name" HeaderText="Stone Name" />
                <asp:BoundField DataField="stone_price" HeaderText="Stone Price" />
                <asp:BoundField DataField="category_name" HeaderText="Stone Category" />
                <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                        <asp:Button CssClass="btn btn-sm btn-warning mb-1" ID="Edit_Product_Btn" CommandName="edit" CommandArgument='<%# Eval("stone_id") %>' Text="Edit" runat="server" />
                        <asp:Button CssClass="btn btn-sm btn-danger" ID="Delete_Product_Btn" CommandName="delete" CommandArgument='<%# Eval("stone_id") %>' OnClientClick="return confirm('Are you sure?');" Text="Delete" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:Label ID="Delete_Product_Response" CssClass="text-center text-info" runat="server"></asp:Label>
    </form>
</asp:Content>
