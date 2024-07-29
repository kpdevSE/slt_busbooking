<%@ Page Title="" Language="C#" MasterPageFile="~/BusBookingMaster.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="BusBookingProject.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background: linear-gradient(to right, #00c6ff, #0072ff);
            color: #fff;
            font-family: 'Arial', sans-serif;
        }

        .container {
            margin-top: 6%;
        }

        .panel {
            background: rgba(255, 255, 255, 0.9);
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-bottom: 40px;
        }

        .panel-heading {
            background: #0072ff;
            color: #fff;
            border-radius: 10px 10px 0 0;
            padding: 15px;
        }

        .panel-body {
            color: #333;
            padding: 20px;
        }

        .section {
            padding: 60px 0;
            color: #fff;
            text-align: center;
        }

        .section.bg-primary {
            background: #00c6ff;
        }

        .section.bg-secondary {
            background: #ff7e5f;
        }

        .section.bg-tertiary {
            background: #34e89e;
        }

        .section.bg-quaternary {
            background: #f7b42c;
        }

        .section h2 {
            margin-bottom: 20px;
            font-size: 36px;
            font-weight: bold;
        }

        .section p {
            font-size: 18px;
        }

        .icon {
            font-size: 48px;
            margin-bottom: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">About Us</h3>
            </div>
            <div class="panel-body">
                <p>
                    We are among the top 10 Service Providers for Online Bus Booking in India.
                    We have our branches in all major cities in India. Our services are very fast 
                    compared to other online portals. We work efficiently and provide a
                    good service environment to our end users. 24x7 support facility is available,
                    and each and every query is resolved within a day.
                </p>
            </div>
        </div>
    </div>

    <div class="section bg-primary">
        <div class="container">
            <span class="icon">🚀</span>
            <h2>Our Mission</h2>
            <p>
                To provide the best online bus booking experience with exceptional customer service
                and user-friendly platforms, ensuring a seamless and convenient travel experience for all.
            </p>
        </div>
    </div>

    <div class="section bg-secondary">
        <div class="container">
            <span class="icon">🌟</span>
            <h2>Our Vision</h2>
            <p>
                To become the leading online bus booking service provider, known for our reliability,
                efficiency, and customer-centric approach, setting new standards in the travel industry.
            </p>
        </div>
    </div>

    <div class="section bg-tertiary">
        <div class="container">
            <span class="icon">💡</span>
            <h2>Our Values</h2>
            <p>
                We believe in integrity, innovation, and customer satisfaction. Our values drive us to
                constantly improve our services and exceed customer expectations.
            </p>
        </div>
    </div>

    <div class="section bg-quaternary">
        <div class="container">
            <span class="icon">🏆</span>
            <h2>Our Achievements</h2>
            <p>
                Over the years, we have received numerous awards and recognitions for our outstanding
                services and commitment to excellence. We are proud to be a trusted name in the travel
                industry.
            </p>
        </div>
    </div>
</asp:Content>
