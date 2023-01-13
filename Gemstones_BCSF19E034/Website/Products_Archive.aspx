<%@ Page Title="" Language="C#" MasterPageFile="~/Website/Website.Master" AutoEventWireup="true" CodeBehind="Products_Archive.aspx.cs" Inherits="Gemstones_BCSF19E034.Website.Products_Archive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Website_Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Website_Content" runat="server">
    <div class="row">
        <div class="col-2">
            <h3 id="No_Categories" runat="server"></h3>
            <asp:GridView runat="server" CssClass="table table-bordered" AutoGenerateColumns="false" ID="GV_Product_Archive_Categories">
                <Columns>
                    <asp:TemplateField HeaderText="Categories">
                        <ItemTemplate>
                            <asp:HyperLink runat="server" NavigateUrl='<%# "~/Website/Products_Archive.aspx?id=" + Eval("category_id") %> ' Text='<%# Eval("category_name") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-10">
            <h3 id="No_Products" runat="server"></h3>
            <asp:GridView runat="server" ID="GV_Products_Archive_Data" CssClass="table table-bordered"></asp:GridView>
        </div>
    </div>
</asp:Content>
