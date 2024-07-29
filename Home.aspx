<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BusBookingProject.Home" %>
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

        .icon-addon .form-control {
            border-radius: 0;
        }

        .icon-addon {
            position: relative;
            color: #555;
            display: block;
        }

        .icon-addon .form-control {
            padding-left: 30px;
        }

        .icon-addon .fa {
            position: absolute;
            z-index: 2;
            left: 10px;
            top: 10px;
        }

        .icon-addon .form-control:focus + .fa,
        .icon-addon:hover .fa {
            color: #2580db;
        }
    </style>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#txtDate").datepicker();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
        <div class="col-lg-6 col-md-8 col-sm-10">
            <div class="card shadow-sm">
                <div class="card-header bg-primary text-white">
                    <h3 class="card-title mb-0">Search For Available Buses</h3>
                </div>
                <div class="card-body">
                    <div id="divMessage" runat="server"></div>
                    <div class="form-group">
                        <asp:Label ID="lblAccType" runat="server" Text="From" Font-Bold="true"></asp:Label>
                        <asp:DropDownList ID="ddlOrigin" class="form-control input-sm floatlabel" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="To" Font-Bold="true"></asp:Label>
                        <asp:DropDownList ID="ddlDestination" class="form-control input-sm floatlabel" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblDate" runat="server" Text="Travel Date" Font-Bold="true"></asp:Label>
                        <asp:TextBox ID="txtDate" runat="server" placeholder="DD/MM/YYYY Format" class="form-control input-sm floatlabel"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btnSearch" runat="server" Text="Search Buses" class="btn btn-info btn-block" OnClick="btnSearch_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
