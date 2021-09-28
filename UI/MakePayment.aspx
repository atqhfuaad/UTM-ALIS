<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MakePayment.aspx.cs" Inherits="UTMALIS_ROLLNEY.UI.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            background-color: #FFCC66;
            height: 96px;
        }
        .newStyle1 {
            font-family: Arial;
        }
        .auto-style2 {
            text-align: center;
            background-color: #FFCC66;
        }
        .newStyle2 {
            font-family: Arial;
        }
        .auto-style3 {
            text-align: center;
        }
        .newStyle3 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .newStyle4 {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body style="background-color: #993333">
    <form id="form1" runat="server">
        <div class="auto-style2">
        <div class="auto-style1">
            <h1><span class="newStyle3">UTMALIS</span></h1>
            <br />
            <asp:Button ID="ButtonHome" runat="server" PostBackUrl="~/UI/UTMAlumniMainForm.aspx" Text="Home" />
        </div>
        <center style="background-color: #FFCC66">
        <p style="background-color: #993333">
            &nbsp;</p>
            <h2 class="auto-style2">
                <span class="newStyle1">Make Payment Form
        </span></h2>
            <div class="auto-style2">
            <br />
            <br />
                <span class="newStyle2">Payment ID&nbsp;
            </span>
            <asp:TextBox ID="txtBoxPaymentID" runat="server"></asp:TextBox>
                <span class="newStyle2">
            <br />
            <br />
            Reservation ID&nbsp; </span> <asp:DropDownList ID="DropDownReservationID" runat="server" DataSourceID="SqlDataSource1" DataTextField="ReservationID" DataValueField="ReservationID" Height="27px" Width="170px">
            </asp:DropDownList>
                <span class="newStyle2">
            <br />
            <br />
            Payment Type&nbsp;
            </span>
            <asp:DropDownList ID="DropDownPaymentType" runat="server" Width="170px">
                <asp:ListItem>Credit Card</asp:ListItem>
                <asp:ListItem>FPX</asp:ListItem>
            </asp:DropDownList>
                <span class="newStyle2">
            <br />
            <br />
            Payment Date&nbsp;
            </span>
            <asp:TextBox ID="txtBoxPaymentDate" runat="server" TextMode="Date"></asp:TextBox>
                <span class="newStyle2">
            <br />
            <br />
            Payment Amount&nbsp;
            </span>
                <asp:TextBox ID="txtBoxPaymentAmount" runat="server"></asp:TextBox>
            <br />
            <br />

            <span ><span class="newStyle4">Payment Reason
                    </span>
                    <asp:TextBox ID="txtBoxObserver" runat="server" Height="21px" Width="175px"></asp:TextBox>
                    </span>
                <br />
            <br />

            <asp:Button ID="ButtonMakePayment0" runat="server" Text="Make Payment" OnClick="ButtonMakePayment0_Click" />
&nbsp;
            <asp:Button ID="ButtonCancelPayment0" runat="server" Text="Cancel Payment" PostBackUrl="~/UI/MakeReservation.aspx" />
&nbsp;
            <asp:Button ID="ButtonClear0" runat="server" Text="Clear" OnClick="ButtonClear0_Click" />
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UTMALISConnectionString %>" SelectCommand="SELECT [ReservationID] FROM [Reservation]"></asp:SqlDataSource>
                

                <br />
                <br />
                <asp:Button ID="ButtonNotify" runat="server" OnClick="Button2_Click" Text="Notify" Width="158px" />
                <br />
                <br />
                <asp:TextBox ID="txtBoxNotify" runat="server" Height="108px" TextMode="MultiLine" Width="559px" OnTextChanged="txtBoxNotify_TextChanged"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <br />
            </center>
        </div>
    </form>
    <p>
        &nbsp;</p>
    <p class="auto-style3">
        © ROLLNEY, SCJ3323 SOFTWARE ARCHITECTURE AND DESIGN - SECTION 01. ALL RIGHTS RESERVED.<b style="mso-bidi-font-weight:normal"><span style="font-size:
12.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Arial Narrow&quot;,sans-serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></b></p>
</body>
</html>
