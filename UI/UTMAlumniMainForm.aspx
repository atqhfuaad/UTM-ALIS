<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UTMAlumniMainForm.aspx.cs" Inherits="UTMALIS_ROLLNEY.UI.UTMAlumniMainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            background-color: #FFCC66;
        }
        .auto-style2 {
            color: #000000;
        }
        .newStyle1 {
            font-family: Arial;
        }
        .newStyle2 {
            font-family: Arial;
        }
        .newStyle3 {
            font-family: Arial;
        }
        .newStyle4 {
            font-family: Arial;
        }
        .newStyle5 {
            font-family: Arial;
        }
        .newStyle6 {
            font-family: Arial;
        }
        .newStyle7 {
            font-family: "Arial Narrow";
        }
        .newStyle8 {
            font-family: "Agency FB";
        }
        .newStyle9 {
            font-family: Arial;
        }
        .newStyle10 {
            font-family: Arial;
        }
        .newStyle11 {
            font-family: Arial;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body style="background-color: #993333">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 style="color: #FFCC66; background-color: #FFCC66">&nbsp;</h1>
            <h1 style="color: #FFCC66; background-color: #FFCC66">
                <asp:Image ID="Image1" runat="server" Height="83px" ImageUrl="http://alumni.utm.my/assets/app/media/img/logos/logo_utm_alumni.png" Width="449px" />
            </h1>
            <h1 style="background-color: #FFCC66"><span class="newStyle1">Welcome to UTMALIS</span></h1>
            <p style="background-color: #FFCC66"><span class="newStyle2">Welcome dearest alumni. It’s really great to have you back.</span></p>
            <p style="background-color: #FFCC66">&nbsp;</p>
            <hr />
            <h2 style="background-color: #FFCC66"><strong class="newStyle9">DONATION</strong></h2>
            <p style="background-color: #FFCC66" class="newStyle6">
                <span class="newStyle5"> 
                <asp:HyperLink ID="HyperLinkViewDonation" runat="server" NavigateUrl="~/UI/ViewDonationForm.aspx" style="color: #000000">View Donation Form</asp:HyperLink>
                &nbsp; |
                </span>
                <asp:HyperLink ID="HyperLinkMakeDonation" runat="server" NavigateUrl="~/UI/DonationForm.aspx" CssClass="auto-style2">Make Donation</asp:HyperLink>
                </p>
            <hr />
            <h2 style="background-color: #FFCC66">
                <span class="newStyle10">ACTIVITY</span></h2>
            <p style="background-color: #FFCC66" class="newStyle6">
                <asp:HyperLink ID="HyperLinkViewActivity" runat="server" NavigateUrl="~/UI/ViewActivityForm.aspx" style="color: #000000">View Activity</asp:HyperLink>
                &nbsp;|
                <asp:HyperLink ID="HyperLinkActivity" runat="server" NavigateUrl="~/UI/RegisterActivityForm.aspx" style="color: #000000">Register Activity</asp:HyperLink>
                </p>
            <hr />
            <h2 style="background-color: #FFCC66">
                <span class="newStyle11">FACILITIES &amp; RESERVATION</span></h2>
            <p style="background-color: #FFCC66" class="newStyle6">
                <span class="newStyle5">&nbsp;</span><asp:HyperLink ID="HyperLinkViewFacilities" runat="server" NavigateUrl="~/UI/ViewFacilitiesForm.aspx" CssClass="auto-style2">View Facilities</asp:HyperLink>
                <span class="newStyle5">&nbsp;| </span>
                <asp:HyperLink ID="HyperLinkMakeReservation" runat="server" NavigateUrl="~/UI/MakeReservation.aspx" CssClass="auto-style2">Make Reservation</asp:HyperLink>
                <span class="newStyle5">&nbsp;|
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UI/MakePayment.aspx" style="color: #000000">Make Payment</asp:HyperLink>
                </span></p>
            <hr />
            <p style="background-color: #FFCC66">&nbsp;</p>
            <p style="background-color: #FFCC66">&nbsp;</p>
            <p style="background-color: #FFCC66">&nbsp;</p>
        </div>
    </form>
    <p style="background-color: #993333">
        &nbsp;</p>
    <p class="auto-style3" style="background-color: #993333">
        © ROLLNEY, SCJ3323 SOFTWARE ARCHITECTURE AND DESIGN - SECTION 01. ALL RIGHTS RESERVED.<b style="mso-bidi-font-weight:normal"><span style="font-size:
12.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Arial Narrow&quot;,sans-serif;
mso-fareast-font-family:&quot;Times; New Roman&quot;"><o:p></o:p></span></b></p>
    <p style="background-color: #993333">
        &nbsp;</p>
</body>
</html>
