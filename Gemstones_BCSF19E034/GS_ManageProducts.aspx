﻿<%@ Page Title="" Language="C#" MasterPageFile="~/GS_Main.Master" AutoEventWireup="true" CodeBehind="GS_ManageProducts.aspx.cs" Inherits="Gemstones_BCSF19E034.GS_ManageProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
    <link href="assets/css/manageProducts/custom.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminBody" runat="server">

    <section class="h-100 h-custom gradient-custom-2">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12">
                    <div class="card card-registration card-registration-2" style="border-radius: 15px;">
                        <div class="card-body p-0">

                            <form class="row g-0" runat="server">
                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <h3 class="fw-normal mb-5" style="color: darkblue;">Add Product</h3>

                                        <%--<div class="mb-4 pb-2">
                                            <select class="select px-5 py-1">
                                                <option value="1">Title</option>
                                                <option value="2">Two</option>
                                                <option value="3">Three</option>
                                                <option value="4">Four</option>
                                            </select>
                                        </div>--%>

                                        <div class="row">
                                            <div class="col-md-6 mb-4 pb-2">

                                                <div class="form-outline">
                                                    <asp:TextBox ID="Product_Stone_Name" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                                                    <asp:Label CssClass="form-label" AssociatedControlID="Product_Stone_Name" Text="Stone Name" runat="server"></asp:Label>
                                                    <asp:RequiredFieldValidator ControlToValidate="Product_Stone_Name" Text="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                                                </div>

                                            </div>
                                            <div class="col-md-6 mb-4 pb-2">

                                                <div class="form-outline">
                                                    <asp:TextBox ID="Product_Stone_Price" runat="server" CssClass="form-control form-control-lg" TextMode="Number"></asp:TextBox>
                                                    <asp:Label CssClass="form-label" AssociatedControlID="Product_Stone_Price" Text="Stone Price" runat="server"></asp:Label>
                                                    <asp:RequiredFieldValidator ControlToValidate="Product_Stone_Price" Text="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="mb-4 pb-2">
                                            <div class="form-outline">
                                                <asp:TextBox ID="Product_Stone_Description" runat="server" CssClass="form-control form-control-lg" TextMode="MultiLine"></asp:TextBox>
                                                <asp:Label CssClass="form-label" AssociatedControlID="Product_Stone_Description" Text="Stone Description" runat="server"></asp:Label>
                                            </div>
                                        </div>

                                        <div class="mb-4 pb-2">
                                            <asp:DropDownList ID="Product_Stone_Category" CssClass="select" runat="server">
                                                <%--<asp:ListItem Text="Select Category"></asp:ListItem>
                                                <asp:ListItem Text="Pearl"></asp:ListItem>
                                                <asp:ListItem Text="Diamond"></asp:ListItem>
                                                <asp:ListItem Text="Ruby"></asp:ListItem>--%>
                                            </asp:DropDownList>

                                        </div>

                                        <div class="mb-4 pb-2">
                                            <asp:DropDownList ID="Product_Stone_Color" CssClass="select" runat="server">
                                                <asp:ListItem Text="Select Color"></asp:ListItem>
                                                <asp:ListItem Text="Red"></asp:ListItem>
                                                <asp:ListItem Text="Green"></asp:ListItem>
                                                <asp:ListItem Text="Blue"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>

                                        <%--<div class="mb-4 pb-2">
                                            <div class="form-outline">
                                                <input type="text" id="form3Examplev4" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Examplev4">Position</label>
                                            </div>
                                        </div>--%>

                                        <div class="row">
                                            <div class="col-md-6 mb-4 pb-2">

                                                <div class="form-outline">
                                                    <asp:TextBox ID="Product_Stone_Weight" CssClass="form-control form-control-lg" TextMode="Number" runat="server"></asp:TextBox>
                                                    <asp:Label CssClass="form-label" AssociatedControlID="Product_Stone_Weight" Text="Stone Weight" runat="server"></asp:Label>
                                                </div>

                                            </div>
                                            <div class="col-md-6 mb-4 pb-2">

                                                <div class="form-outline">
                                                    <asp:TextBox ID="Product_Stone_Hardness" CssClass="form-control form-control-lg" TextMode="Number" runat="server"></asp:TextBox>
                                                    <asp:Label CssClass="form-label" AssociatedControlID="Product_Stone_Hardness" Text="Stone Hardness" runat="server"></asp:Label>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="mb-4 pb-2">
                                            <asp:DropDownList ID="Product_Stone_Shape" CssClass="select" runat="server">
                                                <asp:ListItem Text="Select Shape"></asp:ListItem>
                                                <asp:ListItem Text="Round"></asp:ListItem>
                                                <asp:ListItem Text="Square"></asp:ListItem>
                                                <asp:ListItem Text="Triangle"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>



                                    </div>
                                </div>
                                <div class="col-lg-6 bg-indigo text-white">
                                    <div class="p-5">
                                        <h3 class="fw-normal mb-5">Gemstones</h3>

                                        <%--<div class="col-md-6 mb-4 pb-2 mb-md-0 pb-md-0">--%>
                                        <div class="mb-4 pb-2">

                                            <div class="form-outline">
                                                <asp:TextBox ID="Product_Stone_Origin" CssClass="form-control form-control-lg" runat="server"></asp:TextBox>
                                                <asp:Label CssClass="form-label" AssociatedControlID="Product_Stone_Origin" Text="Stone Origin" runat="server"></asp:Label>
                                            </div>

                                        </div>


                                        <div class="mb-4 pb-2">
                                            <asp:DropDownList ID="Product_Stone_Size" CssClass="select" runat="server">
                                                <asp:ListItem Text="Select Size"></asp:ListItem>
                                                <asp:ListItem Text="Small"></asp:ListItem>
                                                <asp:ListItem Text="Meduim"></asp:ListItem>
                                                <asp:ListItem Text="Large"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-4 pb-2">

                                                <div class="form-outline">
                                                    <asp:TextBox ID="Product_Stone_Dispersion" CssClass="form-control form-control-lg" TextMode="Number" runat="server"></asp:TextBox>
                                                    <asp:Label CssClass="form-label" AssociatedControlID="Product_Stone_Dispersion" Text="Stone Dispersion" runat="server"></asp:Label>
                                                </div>

                                            </div>
                                            <div class="col-md-6 mb-4 pb-2">

                                                <div class="form-outline">
                                                    <asp:TextBox ID="Product_Stone_SpecificGravity" CssClass="form-control form-control-lg" TextMode="Number" runat="server"></asp:TextBox>
                                                    <asp:Label CssClass="form-label" AssociatedControlID="Product_Stone_SpecificGravity" Text="Stone Specific Gravity" runat="server"></asp:Label>
                                                </div>

                                            </div>
                                        </div>
                                        

                                        <div class="mb-4 pb-2">
                                            <div class="form-outline form-white">
                                                <asp:TextBox ID="Product_Stone_Density" CssClass="form-control form-control-lg" TextMode="Number" runat="server"></asp:TextBox>
                                                    <asp:Label CssClass="form-label" AssociatedControlID="Product_Stone_Density" Text="Stone Density" runat="server"></asp:Label>
                                            </div>
                                        </div>


                                        <div class="mb-4">
                                            <div class="form-outline form-white">
                                                <asp:FileUpload ID="Product_Stone_Image" runat="server" />
                                                <asp:Label runat="server" CssClass="form-label" AssociatedControlID="Product_Stone_Image" Text="Upload stone image"></asp:Label>
                                            </div>
                                        </div>

                                        <asp:Button ID="Add_Product_Btn" CssClass="btn btn-light btn-lg" Text="Add Product" runat="server" OnClick="Add_Product_Btn_Click" />
                                        <asp:Label ID="Add_Product_Response" CssClass="form-label" runat="server"></asp:Label>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


</asp:Content>
