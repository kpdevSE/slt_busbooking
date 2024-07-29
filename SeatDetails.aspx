<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="SeatDetails.aspx.cs" Inherits="BusBookingProject.SeatDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/jquery-latest.js"></script>
    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
    <style>
        #holder {
            height: 500px;
            width: 500px;
            background-color: white;
            border: 1px solid #A4A4A4;
            margin-left: 10px;
        }

        #place {
            position: relative;
            margin: 20px;
        }

        #place a {
            font-size: 0.6em;
            color: white;
        }

        #place li {
            list-style: none;
            position: absolute;
        }

        #place li:hover {
            background-color: yellow;
        }

        #place .seat {
            background: url("img/newAvailableSeat.png") no-repeat;
            height: 33px;
            width: 33px;
            display: block;
        }

        #place .selectedSeat {
            background-image: url("img/bookedseats.png");
        }

        #place .selectingSeat {
            background-image: url("img/newSelectedSeat.png");
        }

        #place .ladiesSeat {
            background-image: url("img/ladiesSeat.png");
        }

        #place .notAvailableSeats {
            background-image: url("img/notAvailableSeat.png");
        }

        #place .BlockedSeats {
            background-image: url("img/BlockedSeat.png");
        }

        #place .AvailableSeats {
            background-image: url("img/newAvailableSeat.png");
        }

        #place .row-3, #place .row-4 {
            margin-top: 10px;
        }

        #seatDescription li {
            vertical-align: middle;
            list-style: none;
            padding-left: 35px;
            height: 35px;
            float: left;
        }

        .details {
            display: none;
            visibility: hidden;
            background-color: #eeeeee;
            font-family: Verdana;
        }

        .inlineList {
            display: flex;
            flex-direction: row;
            justify-content: flex-start;
            list-style: none;
            padding: 0;
            white-space: nowrap;
        }

        .LiStstyle {
            width: 50px;
            height: 50px;
        }

        .emptySeat {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:8%">
        <div class="row">
            <div class="col-lg-8">
                <h4 style="color: black;">Choose seats by clicking the corresponding seat in the layout below:</h4>
            </div>
            <div class="col-lg-2">
                <a href="#" class="btn btn-success" id="hrefBackUrl" runat="server" title="Back To Search List">
                    <i class="fa fa-backward"></i>&nbsp;Back To Search List
                </a>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <table runat="server">
                            <tr>
                                <td style="color:black;font-size:large">Front</td>
                                <td style="margin-left:5%">
                                    <div id="holder" style="border:none;color:white;overflow:auto">
                                        <ul id="place" style="margin-top:30%"></ul>
                                    </div>
                                </td>
                                <td style="color:black;font-size:large">Rear</td>
                            </tr>
                        </table>

                        <div style="margin-top: 10px;overflow:auto">
                            <ul id="seatDescription">
                                <li style="background: url('img/newAvailableSeat.png') no-repeat; width: 25%; height: 30%; color: white">Available Seat</li>
                                <li style="background: url('img/bookedseats.png') no-repeat; width: 25%; height: 30%; color: white">Booked Seat</li>
                                <li style="background: url('img/newSelectedSeat.png') no-repeat; width: 25%; height: 30%; color: white">Selected Seat</li>
                            </ul>
                        </div>
                        <div style="clear: both; width: 100%; margin-top: 20px;">
                            <input type="button" id="btnShowNew" class="btn btn-primary" value="Show Selected Seats" />
                            <input type="button" id="btnShow" class="btn btn-secondary" value="Show All" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-header bg-danger text-white">
                        <h2>Journey Details</h2>
                    </div>
                    <div class="card-body">
                        <p>
                            Onward Journey
                            <br />From <asp:Label ID="lblForm" runat="server" Font-Bold="true"></asp:Label>
                            <br />To <asp:Label ID="lblTo" runat="server" Font-Bold="true"></asp:Label>
                            <br />on <asp:Label ID="lbldate" runat="server" Font-Bold="true"></asp:Label>
                        </p>
                        <br />
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <tr>
                                    <td>Selected Seat No</td>
                                    <td>
                                        <asp:Label ID="lblSelectedSeat" runat="server" ClientIDMode="Static" Font-Bold="true"></asp:Label>
                                        <asp:HiddenField ID="hdnSeatNo" runat="server" ClientIDMode="Static" />
                                        <asp:HiddenField ID="hdnSeatCount" runat="server" ClientIDMode="Static" />
                                        <asp:HiddenField ID="hdnSeatTypeID" runat="server" ClientIDMode="Static" />
                                        <asp:HiddenField ID="hdnFare" runat="server" ClientIDMode="Static" />
                                        <asp:HiddenField ID="hdnTotalFare" runat="server" ClientIDMode="Static" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Per Seat Fare</td>
                                    <td>
                                        <span><i class="fa fa-rupee"></i></span>
                                        <asp:Label ID="lblPerSeat" runat="server" ClientIDMode="Static" Font-Bold="true" Text="0.00" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Amount</td>
                                    <td>
                                        <span><i class="fa fa-rupee"></i></span>
                                        <asp:Label ID="lbltotal" runat="server" ClientIDMode="Static" Font-Bold="true" Text="0.00" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="lblBoardingPoint" runat="server" Font-Bold="true" Text="Boarding Points"></asp:Label>
                            <asp:DropDownList ID="ddlBoardingpoints" runat="server" ClientIDMode="Static" class="form-control"></asp:DropDownList>
                            <br />
                            <asp:Label ID="lblDroppingPoints" runat="server" Font-Bold="true" Text="Dropping Points" Style="display: none"></asp:Label>
                            <asp:DropDownList ID="ddlDroppingpoints" runat="server" Style="display: none;" class="form-control">
                                <asp:ListItem Value="0" Text="Select Dropping Point"></asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:Button ID="btnPayment" runat="server" Text="Make Payment" CssClass="btn btn-danger" OnClick="btnPayment_Click" ClientIDMode="Static" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/JavaScript">
        $(document).ready(function () {
            $('#btnPayment').click(function () {
                var boarding = $('#ddlBoardingpoints').val();
                var seatDetails = $('#lblSelectedSeat').text();
                if (seatDetails == '') {
                    alert("Please select seats");
                    return false;
                } else if (boarding == 0) {
                    alert("Please select boarding points");
                    return false;
                } else {
                    var newseatDetails = '<%= Session["SeatNo"] %>';
                    if (newseatDetails.value != '' || newseatDetails.value != null) {
                        var splitSetails = newseatDetails.split(",");
                        var splitSeatarray = [];
                        for (var i = 0; i < splitSetails.length; i++) {
                            splitSeatarray.push(splitSetails[i]);
                        }
                        var seat = $('#lblSelectedSeat').text();
                        var Seats = seat.split(",");
                        var newSeatArray = [];
                        for (var i = 0; i < Seats.length; i++) {
                            newSeatArray.push(Seats[i]);
                        }
                        if (newseatDetails != '') {
                            if (splitSeatarray.length != newSeatArray.length) {
                                alert("Please select" + " " + splitSeatarray.length + " " + "Seats");
                                return false;
                            }
                        } else {
                            return true;
                        }
                    }
                }
            });

            $('#btnReturn').click(function () {
                var boarding = $('#ddlBoardingpoints').val();
                var seatDetails = $('#lblSelectedSeat').text();
                if (seatDetails == '') {
                    alert("Please select seats");
                    return false;
                } else if (boarding == 0) {
                    alert("Please select boarding points");
                    return false;
                }
            });
        });

        function getSeatLayout(row, column, bookSeat, fare) {
            var bookedSeatNo = bookSeat.split(",");
            var newFare = parseFloat(fare);

            var settings = {
                rows: row,
                cols: column,
                rowCssPrefix: 'row-',
                colCssPrefix: 'col-',
                seatWidth: 35,
                seatHeight: 35,
                seatCss: 'seat',
                selectedSeatCss: 'selectedSeat',
                selectingSeatCss: 'selectingSeat',
            };

            var init = function (reservedSeat, fareDetails) {
                var str = [], seatNo, className, totalAmount;
                totalAmount = fareDetails;
                for (i = 0; i < settings.rows; i++) {
                    for (j = 0; j < settings.cols; j++) {
                        seatNo = (i + j * settings.rows + 1);
                        className = settings.seatCss + ' ' + settings.rowCssPrefix + i.toString() + ' ' + settings.colCssPrefix + j.toString();
                        if ($.isArray(reservedSeat) && $.inArray(seatNo, reservedSeat) != -1) {
                            className += ' ' + settings.selectedSeatCss;
                        }
                        str.push('<li class="' + className + '"' +
                            'style="top:' + (i * settings.seatHeight).toString() + 'px;left:' + (j * settings.seatWidth).toString() + 'px">' +
                            '<a title="SeatNo:' + seatNo + ' Fare:' + totalAmount + '"  Seat="' + seatNo + '" TotalFare="' + totalAmount + '">' + seatNo + '</a>' +
                            '</li>');
                    }
                }
                $('#place').html(str.join(''));
            };

            var bookedSeats = [];
            for (var i = 0; i < bookedSeatNo.length; i++) {
                bookedSeats.push(parseInt(bookedSeatNo[i]));
            }

            init(bookedSeats, newFare);

            $('.' + settings.seatCss).click(function () {
                if ($(this).hasClass(settings.selectedSeatCss)) {
                    alert('This seat is already reserved');
                } else {
                    $(this).toggleClass(settings.selectingSeatCss);
                    var str = [];
                    var totalAmount = [];
                    var amount = 0;
                    $.each($('#place li.' + settings.selectingSeatCss + ' a'), function (index, value) {
                        str.push($(this).attr('Seat'));
                        totalAmount.push($(this).attr('TotalFare'));
                    });
                    if (str.length > 3) {
                        $(this).removeClass(settings.selectingSeatCss);
                        alert('You cannot select more than three seats per booking');
                    } else {
                        var i = totalAmount.length;
                        amount = parseFloat(i * totalAmount[0]);
                        if (totalAmount == '') {
                            $("#lbltotal").text("0.00");
                            $('#lblPerSeat').text("0.00");
                        } else {
                            $("#lbltotal").text(amount);
                            $('#lblPerSeat').text(totalAmount.join(','));
                            $('#hdnFare').val($('#lblPerSeat').text());
                        }
                        $('#lblSelectedSeat').text(str.join(','));
                        $('#hdnSeatNo').val($('#lblSelectedSeat').text());
                    }
                }
            });
        }
    </script>
</asp:Content>
