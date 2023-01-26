<%@ Page Title="" Language="C#" MasterPageFile="~/Website/Website.Master" AutoEventWireup="true" CodeBehind="List_CartItems.aspx.cs" Inherits="Gemstones_BCSF19E034.Website.List_CartItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Website_Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Website_Content" runat="server">
    <form runat="server" class="mb-3">
    <div class="mx-3">
        <h1 class="text-center py-2 mt-1 theme-bg-primary text-light">CART ITEMS</h1>
        <asp:GridView runat="server" CssClass="table table-bordered" ID="GV_Cart_Items" OnRowDeleting="GV_Cart_Items_RowDeleting" OnRowCommand="GV_Cart_Items_RowCommand" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ImageUrl='<%# "~/assets/images/products/" + Eval("stone_image_url")%>' Width="80px" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="stone_name" HeaderText="Stone Name" />
                <asp:TemplateField HeaderText="Stone Price">
                    <ItemTemplate>
                        <span>Price : <%# string.Format("{0:C}", Eval("stone_price")) %>/-</span>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Remove from Cart">
                    <ItemTemplate>
                        <asp:Button runat="server" ID="Remove_Cart_Item_Btn" CommandName="delete" CommandArgument='<%# Eval("temp_id") %>' Text="Remove" OnClientClick="return confirm('Are you sure?');" CssClass="btn btn-danger" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:Label runat="server" ID="Remove_Cart_Item_Response"></asp:Label>
        <h4 id="Total_Price" class="text-end me-5" runat="server"></h4>
        <div class="text-end me-5">
        <asp:HyperLink NavigateUrl="~/Website/ManageCheckout.aspx" runat="server" Text="Proceed to Checkout" CssClass="btn theme-btn-primary"></asp:HyperLink>
        </div>
        </div>
        </form>
</asp:Content>
