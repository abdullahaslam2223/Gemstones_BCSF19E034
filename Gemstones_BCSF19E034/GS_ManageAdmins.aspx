<%@ Page Title="" Language="C#" MasterPageFile="~/GS_Main.Master" AutoEventWireup="true" CodeBehind="GS_ManageAdmins.aspx.cs" Inherits="Gemstones_BCSF19E034.GS_ManageAdmins" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
    <link href="assets/css/manageAdmins/custom.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminBody" runat="server">
    <div style="background-color: #edf0ee;" class="px-3 mb-3 rounded">
    <asp:HyperLink NavigateUrl="~/GS_List_Admins.aspx" ID="View_Admin_Lnk" CssClass="btn btn-outline-success my-3" Text="View Admins" runat="server"></asp:HyperLink>
    </div>
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6 pb-5">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5 pb-3">
              <h4 class="text-center mb-3">Add a new admin</h4>

              <form runat="server">

                <div class="form-outline mb-2">
                    <asp:Label AssociatedControlID="Admin_First_Name" CssClass="form-label mb-0" Text="First Name" runat="server"></asp:Label>
                    <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="Admin_First_Name" Text="*" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="Admin_First_Name" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                </div>
                  <div class="form-outline mb-2">
                      <asp:Label AssociatedControlID="Admin_Last_Name" CssClass="form-label mb-0" Text="Last Name" runat="server"></asp:Label>
                      <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="Admin_Last_Name" Text="*" runat="server"></asp:RequiredFieldValidator>
                      <asp:TextBox ID="Admin_Last_Name" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                </div>

                <div class="form-outline">
                    <asp:Label AssociatedControlID="Admin_Email" CssClass="form-label mb-0" Text="Your Email" runat="server"></asp:Label>
                    <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="Admin_Email" Text="*" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="Admin_Email" TextMode="Email" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator CssClass="text-danger mb-0" Font-Size="Small" ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Admin_Email" Text="Invalid Email Format"></asp:RegularExpressionValidator>
                </div>

                <div class="form-outline mb-2">
                    <asp:Label AssociatedControlID="Admin_Password" CssClass="form-label mb-0" Text="Password" runat="server"></asp:Label>
                    <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="Admin_Password" Text="*" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="Admin_Password" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                </div>
                  
                  <div class="form-outline mb-2">
                      <asp:Label AssociatedControlID="Admin_Conf_Password" CssClass="form-label mb-0" Text="Repeat your password" runat="server"></asp:Label>
                      <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="Admin_Conf_Password" Text="*" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="Admin_Conf_Password" CssClass="form-control form-control-sm" runat="server"></asp:TextBox>
                      <asp:CompareValidator CssClass="text-danger" ID="Password_Confirmation" ControlToValidate="Admin_Password" ControlToCompare="Admin_Conf_Password" Text="Passwords should match" runat="server"></asp:CompareValidator>
                </div>

                  <asp:Label ID="EmailExist" CssClass="text-center text-danger" runat="server"></asp:Label>

                <div class="d-flex justify-content-center">
                    <asp:Button ID="btn_Admin" CssClass="btn btn-block btn-sm text-body theme-btn" Text="Update" OnClick="btn_Admin_Click" runat="server"/>
                </div>

                  <div id="Admin_Success" class="mt-2" runat="server"></div>

              </form>

            </div>
          </div>
        </div>
      </div>

</asp:Content>
