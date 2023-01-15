﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Website/Website.Master" AutoEventWireup="true" CodeBehind="Products_Archive.aspx.cs" Inherits="Gemstones_BCSF19E034.Website.Products_Archive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Website_Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Website_Content" runat="server">
    <form runat="server">
        <div class="row">
            <div class="col-3">
                <h3 id="No_Categories" runat="server"></h3>
                <div class="position-sticky">
                    <div class="list-group list-group-flush mx-3 mt-4 menu-item">
                        <h3 class="text-center theme-bg-primary py-2 rounded-2">Categories</h3>
                        <asp:DataList runat="server" ID="DL_Product_Archive_Categories" RepeatLayout="Flow" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                <asp:HyperLink runat="server" CssClass="list-group-item list-group-item-action py-2 ripple" NavigateUrl='<%# "~/Website/Products_Archive.aspx?cid=" + Eval("category_id") %> ' Text='<%# Eval("category_name") %>'></asp:HyperLink>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>
            </div>
            <div class="col-9">
                <h3 id="No_Products" runat="server"></h3>

                <asp:DataList ID="DL_Products_Archive_Data" runat="server" RepeatLayout="Flow" CssClass="row" ItemStyle-CssClass="col">
                    <ItemTemplate>
                        <div class="card mt-4" style="width: 18rem;">
                            <asp:Image ImageUrl='<%#"../assets/images/products/" + Eval("stone_image_url") %>' CssClass="image-fluid card-img-top" runat="server" Width="" Height="200px" />
                            <div class="card-body text-light theme-bg-primary">
                                <h5 class="card-title text-center" style="font-size: 20px;"><%# Eval("stone_name") %></h5>
                                <h5 class="card-title text-center" style="font-size: 20px;"><b>Price:</b> <span class="city"><%# String.Format("{0:0.00}", Eval("stone_price")) %></span>/pkr<br />
                                </h5>
                                <asp:LinkButton runat="server" ID="Product_Add_Cart_Btn" CssClass="btn mt-2 w-100 theme-bg-secondary-outline" CommandArgument='<%# Eval("stone_id") %>' Text="Add to Cart" OnCommand="Product_Add_Cart_Btn_Command" />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>

            </div>
        </div>
    </form>
</asp:Content>
