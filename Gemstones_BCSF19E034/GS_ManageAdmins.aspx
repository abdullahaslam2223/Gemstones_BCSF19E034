﻿<%@ Page Title="" Language="C#" MasterPageFile="~/GS_Main.Master" AutoEventWireup="true" CodeBehind="GS_ManageAdmins.aspx.cs" Inherits="Gemstones_BCSF19E034.GS_ManageAdmins" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
    <link href="assets/css/manageAdmins/custom.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminBody" runat="server">

    <%--<section class="vh-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">--%>
  <%--<div class="mask d-flex align-items-center h-100 gradient-custom-3">--%>
    <%--<div class="container h-100">--%>
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-center mb-5">Add a new admin</h2>

              <form>

                <div class="form-outline mb-4">
                  <input type="text" id="form3Example1cg" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example1cg">Frist Name</label>
                </div>
                  <div class="form-outline mb-4">
                  <input type="text" id="form3Example1cgl" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example1cg">Last Name</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="email" id="form3Example3cg" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example3cg">Your Email</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="password" id="form3Example4cg" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example4cg">Password</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="password" id="form3Example4cdg" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example4cdg">Repeat your password</label>
                </div>

                <div class="d-flex justify-content-center">
                  <button type="button"
                    class="btn btn-block btn-lg text-body theme-btn">Add</button>
                </div>

              </form>

            </div>
          </div>
        </div>
      </div>
    <%--</div>--%>
  <%--</div>--%>
<%--</section>--%>

</asp:Content>
