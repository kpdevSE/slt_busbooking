<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BusBookingProject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            background: linear-gradient(to bottom, #1a82f7, #2F2727);
            height: 100vh;
            color: #fff;
        }

        .centered-form {
            margin-top: 10%;
        }

        .centered-form .card {
            background: rgba(255, 255, 255, 0.8);
            box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
        }

        label.label-floatlabel {
            font-weight: bold;
            color: #46b8da;
            font-size: 11px;
        }

        .margin-top {
            margin-top: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex align-items-center justify-content-center" style="height: 100vh;">
        <div class="col-lg-6 col-md-8 col-sm-10">
            <div class="card shadow-sm">
                <div class="card-header bg-primary text-white">
                    <h3 class="card-title mb-0">Sign In</h3>
                </div>
                <div class="card-body">
                    <asp:Label ID="lblErrorMsg" runat="server" CssClass="text-danger" /><br />
                    <asp:ValidationSummary ID="vsLogin" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgLogin" />
                    <div class="form-horizontal" role="form">
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="glyphicon glyphicon-user"></i></span>
                                </div>
                                <asp:TextBox runat="server" placeholder="Enter Mobile No" ID="txtUserId" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserId" Display="Dynamic" ID="rfvLoginId" ValidationGroup="vgLogin"
                                    CssClass="text-danger" ErrorMessage="The email field is required." />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="glyphicon glyphicon-lock"></i></span>
                                </div>
                                <asp:TextBox runat="server" ID="txtPassword" placeholder="Enter Password Here" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" Display="Dynamic" CssClass="text-danger" ID="rfvPassword"
                                    ErrorMessage="The password field is required." ValidationGroup="vgLogin" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <asp:CheckBox runat="server" ID="RememberMe" CssClass="form-check-input" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe" CssClass="form-check-label">Remember me</asp:Label>
                            </div>
                        </div>
                        <div class="form-group margin-top">
                            <asp:Button runat="server" ID="btnLogin" Text="Log in" CssClass="btn btn-success btn-block" ValidationGroup="vgLogin" CausesValidation="True" OnClick="btnLogin_Click" />
                        </div>
                        <div class="form-group text-center">
                            <a href="UserRegistration.aspx" class="text-primary">Register as a new user</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
