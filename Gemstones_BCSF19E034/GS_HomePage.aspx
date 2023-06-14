<%@ Page Title="" Language="C#" MasterPageFile="~/GS_Main.Master" AutoEventWireup="true" CodeBehind="GS_HomePage.aspx.cs" Inherits="Gemstones_BCSF19E034.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminBody" runat="server">
    <form id="HomePageForm" runat="server">
        <table>
        <h1 style="background-color:darkblue; color: white;">Orders</h1>
        <tr style="text-align: center;">
            <th>Product</th>
            <th>Name</th>
            <th>Customer Name</th>
            <th>Billing Address</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Product Price</th>
        </tr>
        
        <asp:Repeater runat="server" ID="orderDetailsRepeater">
            <ItemTemplate>
                <tr>
                    <td><asp:Image CssClass="p-img" ImageUrl='<%# "~/assets/images/products/" + Eval("stone_image_url")%>' runat="server" /></td>
                    <td><%# Eval("stone_name") %></td>
                    <td><%# Eval("customer_last_name") %> <%# Eval("customer_first_name") %></td>
                    <td><%# Eval("customer_billing_address") %></td>
                    <td><%# Eval("customer_email") %></td>
                    <td><%# Eval("customer_phone") %></td>
                    <td><%# Eval("product_price") %></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    </form>
</asp:Content>
