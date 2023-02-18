<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GS_ForgotPassword.aspx.cs" Inherits="Gemstones_BCSF19E034.GS_ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password | Gemstones</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="Forgot_Password_Form" class="w-50 h-50 m-auto bg-light p-5 mt-5" runat="server">
        <asp:Image ImageUrl="~/assets/images/logos/logo-no-background.svg" CssClass="mb-3" Width="185px" AlternateText="Logo" runat="server" />
        <div>
            <asp:Label CssClass="form-label" Text="Enter Email" AssociatedControlID="Forgot_Password_Email" runat="server"></asp:Label>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Forgot_Password_Email" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox CssClass="form-control" ID="Forgot_Password_Email" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator CssClass="text-danger" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Forgot_Password_Email" Text="Invalid Email Format"></asp:RegularExpressionValidator>
            <asp:Button CssClass="btn btn-info btn-sm mt-3 ms-5" runat="server" Text="Send Password" ID="Send_Password_Btn" OnClick="Send_Password_Btn_Click" />
            <asp:Label runat="server" ID="Send_Email_Response"></asp:Label>
        </div>
        <asp:HyperLink NavigateUrl="~/GS_LoginForm.aspx" CssClass="btn-link" Text="Login" runat="server"></asp:HyperLink>
        </form>
</body>
</html>
