<%@ Page Title="" Language="C#" MasterPageFile="~/Website/Website.Master" AutoEventWireup="true" CodeBehind="ManageCheckout.aspx.cs" Inherits="Gemstones_BCSF19E034.Website.ManageCheckout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Website_Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Website_Content" runat="server">
    <h1 class="text-center mx-3 py-2 mt-1 theme-bg-primary text-light">BILLING DETAILS</h1>
    <form runat="server">
        <div class="container my-5">
            <!-- 2 column grid layout with text inputs for the first and last names -->
            <div class="row mb-4">
                <div class="col">
                    <div class="form-outline">
                        <asp:TextBox CssClass="form-control" ID="Customer_First_Name" runat="server"></asp:TextBox>
                        <asp:Label runat="server" CssClass="form-label" AssociatedControlID="Customer_First_Name" Text="First Name"></asp:Label>
                    </div>
                </div>
                <div class="col">
                    <div class="form-outline">
                        <asp:TextBox CssClass="form-control" ID="Customer_Last_Name" runat="server"></asp:TextBox>
                        <asp:Label runat="server" CssClass="form-label" AssociatedControlID="Customer_Last_Name" Text="Last Name"></asp:Label>
                    </div>
                </div>
            </div>

            <!-- Text input -->
            <div class="form-outline mb-4">
                <asp:TextBox CssClass="form-control" ID="Customer_Billing_Address" runat="server"></asp:TextBox>
                <asp:Label runat="server" CssClass="form-label" AssociatedControlID="Customer_Billing_Address" Text="Billing Address"></asp:Label>
            </div>

            <!-- Email input -->
            <div class="form-outline mb-4">
                <asp:TextBox CssClass="form-control" ID="Customer_Email" runat="server"></asp:TextBox>
                <asp:Label runat="server" CssClass="form-label" AssociatedControlID="Customer_Email" Text="Email"></asp:Label>
            </div>

            <!-- Number input -->
            <div class="form-outline mb-4">
                <asp:TextBox TextMode="Number" CssClass="form-control" ID="Customer_Phone" runat="server"></asp:TextBox>
                <asp:Label runat="server" CssClass="form-label" AssociatedControlID="Customer_Phone" Text="Phone"></asp:Label>
            </div>

            <!-- Message input -->
            <div class="form-outline mb-4">
                <asp:TextBox runat="server" ID="Customer_Additional_Info" CssClass="form-control" TextMode="MultiLine" Rows="4"></asp:TextBox>
                <asp:Label runat="server" CssClass="form-label" AssociatedControlID="Customer_Additional_Info" Text="Additional information"></asp:Label>
            </div>

            <!-- Submit button -->
            <button type="submit" class="btn theme-btn-primary btn-block mb-4">Place order</button>
        </div>
    </form>
</asp:Content>
