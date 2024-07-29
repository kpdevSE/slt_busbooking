<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="BusBookingProject.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            height: 100vh;
            color: #fff;
            display: flex;
            flex-direction: column;
        }

        .container {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .card {
            background: rgba(255, 255, 255, 0.9);
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background: #ff6f61;
            color: #fff;
            border-radius: 10px 10px 0 0;
        }

        .form-control {
            border-radius: 20px;
        }

        .btn-custom {
            background: #ff6f61;
            border: none;
            border-radius: 20px;
        }

        .btn-custom:hover {
            background: #e65c54;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row centered-form">
            <div class="col-lg-8 col-md-10 col-sm-12 mx-auto">
                <div class="card">
                    <div class="card-header text-center">
                        <h3 class="card-title mb-0">New User Registration</h3>
                    </div>
                    <div class="card-body">
                        <asp:ValidationSummary ID="vsRegister" runat="server" CssClass="alert alert-danger" ShowSummary="true" ValidationGroup="vgRegister" />
                        <div id="divMessage" runat="server" />
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Label ID="lblFirstName" runat="server" Text="First Name" Font-Bold="true" CssClass="text-dark"></asp:Label>
                                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control input-sm" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ID="rfvFirstName" ValidationGroup="vgRegister"
                                        CssClass="text-danger" ErrorMessage="First Name is required." />
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblUserName" runat="server" Text="NIC-Number" Font-Bold="true" CssClass="text-dark"></asp:Label>
                                    <asp:TextBox ID="txtMobileNo" runat="server" CssClass="form-control input-sm" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMobileNo" Display="Dynamic" ID="rfVMobileNo" ValidationGroup="vgRegister"
                                        CssClass="text-danger" ErrorMessage="NIC No is required." />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Label ID="lblLastName" runat="server" Text="Last Name" Font-Bold="true" CssClass="text-dark"></asp:Label>
                                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control input-sm" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLastName" Display="Dynamic" ID="rfVLastName" ValidationGroup="vgRegister"
                                        CssClass="text-danger" ErrorMessage="Last Name is required." />
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblPassword" runat="server" Text="Password" Font-Bold="true" CssClass="text-dark"></asp:Label>
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control input-sm" TextMode="Password" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" Display="Dynamic" ID="rfvPassword" ValidationGroup="vgRegister"
                                        CssClass="text-danger" ErrorMessage="Password is required." />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Label ID="lblEmail" runat="server" Text="Email ID" Font-Bold="true" CssClass="text-dark"></asp:Label>
                                    <asp:TextBox ID="txtEmailID" runat="server" CssClass="form-control input-sm" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmailID" Display="Dynamic" ID="rfVEmail" ValidationGroup="vgRegister"
                                        CssClass="text-danger" ErrorMessage="Email Id is required." />
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblAddress" runat="server" Text="Address" Font-Bold="true" CssClass="text-dark"></asp:Label>
                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control input-sm" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress" Display="Dynamic" ID="rfVAddress" ValidationGroup="vgRegister"
                                        CssClass="text-danger" ErrorMessage="Address is required." />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Label ID="lblCity" runat="server" Text="City" Font-Bold="true" CssClass="text-dark"></asp:Label>
                                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control input-sm" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCity" Display="Dynamic" ID="rfVCity" ValidationGroup="vgRegister"
                                        CssClass="text-danger" ErrorMessage="City Name is required." />
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="lblPinCode" runat="server" Text="Pincode" Font-Bold="true" CssClass="text-dark"></asp:Label>
                                    <asp:TextBox ID="txtPincode" runat="server" CssClass="form-control input-sm" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPincode" Display="Dynamic" ID="rfvPinCode" ValidationGroup="vgRegister"
                                        CssClass="text-danger" ErrorMessage="Pin code is required." />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Button ID="btnSave" runat="server" Text="Register" OnClick="btnSave_Click" CssClass="btn btn-custom btn-block" ValidationGroup="vgRegister" CausesValidation="True" />
                            </div>
                            <div class="col-md-6">
                                <a href="Login.aspx" class="btn btn-custom btn-block">Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
