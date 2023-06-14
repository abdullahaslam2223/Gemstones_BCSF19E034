<%@ Page Title="" Language="C#" MasterPageFile="~/Website/Website.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Gemstones_BCSF19E034.Website.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Website_Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Website_Content" runat="server">

    <!-- Start Content Page -->
    <div class="container-fluid py-5">
        <div class="col-md-6 m-auto text-center">
            <h1 class="h1">Contact Us</h1>
            <p>
                If you have any queries you didn't get satisfied, feel free to contact us.
            </p>
        </div>
    </div>

    <!-- Start Contact -->
    <div class="container-fluid bg-light py-5">
        <div class="row py-5">
            <form class="col-md-9 m-auto" method="post" role="form" runat="server">
                <div class="row">
                    <div class="form-group col-md-6 mb-3">
                        <label for="inputname">Name</label>
                        <asp:TextBox runat="server" ID="contactName" CssClass="form-control mt-1"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6 mb-3">
                        <label for="inputemail">Email</label>
                        <asp:TextBox runat="server" ID="contactEmail" CssClass="form-control mt-1"></asp:TextBox>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="inputsubject">Subject</label>
                    <asp:TextBox runat="server" ID="contactSubject" CssClass="form-control mt-1"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="inputmessage">Message</label>
                    <asp:TextBox runat="server" TextMode="MultiLine" Rows="8" ID="contactMessage" CssClass="form-control mt-1"></asp:TextBox>
                </div>
                <div class="row">
                    <div class="col text-end mt-2">
                        <asp:Button CssClass="btn theme-btn-secondary px-3" Text="Send" ID="btnContact" OnClick="btnContact_Click" runat="server" />
                    </div>
                </div>
                <asp:Label runat="server" ID="Contact_Response"></asp:Label>
            </form>
        </div>
    </div>
    <!-- End Contact -->

</asp:Content>
