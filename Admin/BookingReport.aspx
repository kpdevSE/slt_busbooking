<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BookingReport.aspx.cs" Inherits="BusBookingProject.Admin.BookingReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
        <asp:GridView ID="gdTicketReport" runat="server" EmptyDataText="No Record Found...." AutoGenerateColumns="False" AllowPaging="true" PageSize="20" CssClass="table table-hover table-bordered table-striped"
                    Width="100%" Font-Size="14">
            <Columns>
                <asp:TemplateField HeaderText="Sr.No">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                    <HeaderStyle CssClass="bg-primary text-white" />
                </asp:TemplateField>
                <asp:BoundField HeaderText="Bus Name" DataField="BusName">
                    <HeaderStyle CssClass="bg-primary text-white" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Passenger Name" DataField="PaxName">
                    <HeaderStyle CssClass="bg-primary text-white" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Email ID" DataField="Email">
                    <HeaderStyle CssClass="bg-primary text-white" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Contact No" DataField="Contact">
                    <HeaderStyle CssClass="bg-primary text-white" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Origin" DataField="Origin">
                    <HeaderStyle CssClass="bg-primary text-white" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Destination" DataField="Destination">
                    <HeaderStyle CssClass="bg-primary text-white" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Travel Date" DataField="TravelDate">
                    <HeaderStyle CssClass="bg-primary text-white" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Seat No" DataField="SeatNo">
                    <HeaderStyle CssClass="bg-primary text-white" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Fare" DataField="Fare">
                    <HeaderStyle CssClass="bg-primary text-white" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Booked By" DataField="BookedBy">
                    <HeaderStyle CssClass="bg-primary text-white" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
    </div>

    <style>
        .container {
            margin-top: 60px;
        }
        .table thead th {
            background-color: #007bff;
            color: white;
        }
        .table tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .table tbody tr:hover {
            background-color: #d1ecf1;
        }
        .table th, .table td {
            text-align: center;
        }
    </style>
</asp:Content>
