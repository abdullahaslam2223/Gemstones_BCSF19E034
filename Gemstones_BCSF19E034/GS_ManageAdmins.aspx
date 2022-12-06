<%@ Page Title="" Language="C#" MasterPageFile="~/GS_Main.Master" AutoEventWireup="true" CodeBehind="GS_ManageAdmins.aspx.cs" Inherits="Gemstones_BCSF19E034.GS_ManageAdmins" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
    <link href="assets/css/manageAdmins/custom.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminBody" runat="server">

      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h4 class="text-center mb-3">Add a new admin</h4>

              <form runat="server">

                <div class="form-outline mb-2">
                    <asp:Label AssociatedControlID="Add_Admin_First_Name" CssClass="form-label mb-0" Text="First Name" runat="server"></asp:Label>
                    <asp:TextBox ID="Add_Admin_First_Name" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                </div>
                  <div class="form-outline mb-2">
                      <asp:Label AssociatedControlID="Add_Admin_Last_Name" CssClass="form-label mb-0" Text="Last Name" runat="server"></asp:Label>
                      <asp:TextBox ID="Add_Admin_Last_Name" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                </div>

                <div class="form-outline mb-2">
                    <asp:Label AssociatedControlID="Add_Admin_Email" CssClass="form-label mb-0" Text="Your Email" runat="server"></asp:Label>
                    <asp:TextBox ID="Add_Admin_Email" TextMode="Email" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                </div>

                <div class="form-outline mb-2">
                    <asp:Label AssociatedControlID="Add_Admin_Password" CssClass="form-label mb-0" Text="Password" runat="server"></asp:Label>
                    <asp:TextBox TextMode="Password" ID="Add_Admin_Password" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                </div>
                  
                  <div class="form-outline mb-2">
                      <asp:Label AssociatedControlID="Add_Admin_Conf_Password" CssClass="form-label mb-0" Text="Repeat your password" runat="server"></asp:Label>
                    <asp:TextBox TextMode="Password" ID="Add_Admin_Conf_Password" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                </div>

                <div class="d-flex justify-content-center">
                    <asp:Button ID="btn_Add_Admin" CssClass="btn btn-block btn-sm text-body theme-btn" Text="Add admin" OnClick="btn_Add_Admin_Click" runat="server"/>
                </div>

                  <div id="Add_Admin_Success" class="mt-2" runat="server"></div>

              </form>

            </div>
          </div>
        </div>
      </div>

</asp:Content>
