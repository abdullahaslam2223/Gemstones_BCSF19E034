<%@ Page Title="" Language="C#" MasterPageFile="~/GS_Main.Master" AutoEventWireup="true" CodeBehind="GS_List_Admins.aspx.cs" Inherits="Gemstones_BCSF19E034.GS_List_Admins" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminBody" runat="server">

    <form runat="server">
        <div style="background-color: #edf0ee;" class="px-3 mb-3 rounded">
            <asp:HyperLink NavigateUrl="~/GS_ManageAdmins.aspx" ID="Add_New_Admin_Lnk" CssClass="btn btn-outline-success my-3" Text="Add Admin" runat="server"></asp:HyperLink>
        </div>
        <asp:GridView ID="GV_Admins" CssClass="table table-bordered" runat="server" OnRowCommand="GV_Admins_RowCommand" OnRowEditing="GV_Admins_RowEditing" OnRowDeleting="GV_Admins_RowDeleting" AutoGenerateColumns="false">
            <Columns>
                 <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ImageUrl='<%# "~/assets/images/admins/" + Eval("image_name")%>' runat="server" Width="80px" />   
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="user_firstName" HeaderText="First Name" />
                <asp:BoundField DataField="user_lastName" HeaderText="Last Name" />
                <asp:BoundField DataField="user_email" HeaderText="Email" />
                <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                        <asp:Button CssClass="btn btn-warning" Enabled='<%# Eval("super").ToString() == "True" ? false : true %>' ID="Edit_Admin_Btn" CommandName="edit" CommandArgument='<%# Eval("user_id") %>' Text="Edit" runat="server" />
                        <asp:Button CssClass="btn btn-danger" Enabled='<%# Eval("super").ToString() == "True" ? false : true %>' ID="Delete_Admin_Btn" CommandName="delete" CommandArgument='<%# Eval("user_id") %>' OnClientClick="return confirm('Are you sure?');" Text="Delete" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>

</asp:Content>
