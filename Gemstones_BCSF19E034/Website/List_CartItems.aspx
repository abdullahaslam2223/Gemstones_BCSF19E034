<%@ Page Title="" Language="C#" MasterPageFile="~/Website/Website.Master" AutoEventWireup="true" CodeBehind="List_CartItems.aspx.cs" Inherits="Gemstones_BCSF19E034.Website.List_CartItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Website_Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Website_Content" runat="server">
    <form runat="server">
    <div class="mx-3">
        <h1 class="text-center py-2 mt-1 theme-bg-primary text-light">Cart Items</h1>
        <asp:GridView runat="server" CssClass="table table-bordered" ID="GV_Cart_Items" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ImageUrl='<%# "~/assets/images/products/" + Eval("stone_image_url")%>' Width="80px" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="stone_name" HeaderText="Stone Name" />
                <asp:TemplateField HeaderText="Stone Price">
                    <ItemTemplate>
                        <span><%# String.Format("{0:0.00}", Eval("stone_price")) %></span><sub>/pkr</sub>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:HyperLink NavigateUrl="~/Website/ManageCheckout.aspx" runat="server" Text="Proceed to Checkout" CssClass="btn theme-btn-primary"></asp:HyperLink>
    </div>
        </form>
</asp:Content>
