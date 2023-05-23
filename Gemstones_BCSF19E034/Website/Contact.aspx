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
            <form class="col-md-9 m-auto" method="post" role="form">
                <div class="row">
                    <div class="form-group col-md-6 mb-3">
                        <label for="inputname">Name</label>
                        <input type="text" class="form-control mt-1" id="name" name="name" placeholder="Name">
                    </div>
                    <div class="form-group col-md-6 mb-3">
                        <label for="inputemail">Email</label>
                        <input type="email" class="form-control mt-1" id="email" name="email" placeholder="Email">
                    </div>
                </div>
                <div class="mb-3">
                    <label for="inputsubject">Subject</label>
                    <input type="text" class="form-control mt-1" id="subject" name="subject" placeholder="Subject">
                </div>
                <div class="mb-3">
                    <label for="inputmessage">Message</label>
                    <textarea class="form-control mt-1" id="message" name="message" placeholder="Message" rows="8"></textarea>
                </div>
                <div class="row">
                    <div class="col text-end mt-2">
                        <button type="submit" class="btn theme-btn-secondary px-3">Send</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- End Contact -->

</asp:Content>
