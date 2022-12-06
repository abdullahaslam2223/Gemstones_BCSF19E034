<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GS_LoginForm.aspx.cs" Inherits="Gemstones_BCSF19E034.GS_LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form | Gemstones</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/loginPage/custom.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="row d-flex justify-content-center align-items-center">
            <%--Centering the form--%>
            <div class="col-xl-10">
                <%--Making form a little small--%>
                <div class="card rounded-3 text-black">
                    <div class="row g-0">
                        <div class="col-lg-6">
                            <div class="card-body p-md-5 mx-md-4">
                                <div class="text-center mt-1 mb-3 pb-1">
                                    <asp:Image ImageUrl="~/assets/images/loginPage/Gemstones.png" Width="185px" AlternateText="Logo" runat="server" />
                                </div>

                                <form id="Login_Form" runat="server">

                                    <div class="form-outline">
                                        <label class="form-label" for="Login_Email">Email Address</label>
                                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="Login_Email" Text="*" runat="server"></asp:RequiredFieldValidator>
                                        <asp:TextBox TextMode="Email" ID="Login_Email" CssClass="form-control" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator CssClass="text-danger" ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Login_Email" Text="Invalid Email Format"></asp:RegularExpressionValidator>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <label class="form-label" for="Login_Password">Password</label>
                                        <asp:RequiredFieldValidator CssClass="text-danger" ControlToValidate="Login_Password" Text="*" runat="server"></asp:RequiredFieldValidator>
                                        <asp:TextBox TextMode="password" ID="Login_Password" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>

                                    <div class="text-center pt-1 mb-5 pb-1">
                                        <asp:Button CssClass="btn theme-btn btn-block fa-lg mb-3 d-block w-100" Text="Log in" ID="Login_Submit_Btn" OnClick="Login_Submit_Btn_Click" runat="server" />

                                        <div id="Login_Error" runat="server"></div>

                                        <asp:HyperLink NavigateUrl="#" CssClass="text-muted" Text="Forgot password?" runat="server"></asp:HyperLink>
                                    </div>

                                    <div class="d-flex align-items-center justify-content-center pb-4">
                                        <p class="mb-0 me-2">Don't have an account?</p>
                                        <asp:Button CssClass="btn theme-btn" ID="Login_Create_New_Btn" Text="Create new" runat="server" />
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-6 d-flex align-items-center theme-colors">
                            <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                                <asp:Image ImageUrl="~/assets/images/loginPage/Logo.png" AlternateText="Logo" Width="185" runat="server" />
                                <h4 class="mb-4">We are more than just a company</h4>
                                <p class="small mb-0">
                                    We are selling the precious stones of any type
                                    <br />
                                    <q>A gem cannot be polished without friction, nor a man perfected without trials</q>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
