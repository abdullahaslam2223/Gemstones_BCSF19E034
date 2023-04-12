<%@ Page Title="" Language="C#" MasterPageFile="~/GS_Main.Master" AutoEventWireup="true" CodeBehind="GS_ProductDetails.aspx.cs" Inherits="Gemstones_BCSF19E034.GS_ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminBody" runat="server">
    <asp:DataList ID="DL_Product_Details" runat="server" RepeatColumns="3" CssClass="row">
    <ItemTemplate>
        <div class="col-md-4">
            <div class="card mb-4 shadow-sm">
                <img src='<%# "~/assets/images/products/" + Eval("stone_image_url")%>' class="card-img-top" />
                <div class="card-body">
                    <h4 class="card-title"><%# Eval("stone_name") %></h4>
                    <p class="card-text"><%# Eval("stone_description") %></p>
                    <div class="d-flex justify-content-between align-items-center">
                        <span class="text-muted"><%# Eval("stone_price", "{0:C}") %></span>
                        <a href="#" class="btn btn-sm btn-outline-secondary">Add to Cart</a>
                    </div>
                </div>
            </div>
        </div>
    </ItemTemplate>
</asp:DataList>

</asp:Content>
