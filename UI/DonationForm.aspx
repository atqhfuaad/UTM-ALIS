<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonationForm.aspx.cs" Inherits="UTMALIS_ROLLNEY.UI.MakeDonationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .newStyle1 {
            font-family: Arial;
            text-align: center;
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
            font-family: Arial, Helvetica, sans-serif;
        }
        .newStyle6 {
            font-family: Arial, Helvetica, sans-serif;
        }
        </style>
</head>
<body style="background-color: #993333">
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-color: #FFCC66">
            <h1 style="background-color: #FFCC66" class="auto-style3"><span class="newStyle1">UTMALIS</span></h1>
            <p style="background-color: #FFCC66; text-align: center;">
                <asp:Button ID="ButtonHome" runat="server" PostBackUrl="~/UI/UTMAlumniMainForm.aspx" Text="Home" />
            </p>
        </div>
            <center style="background-color: #FFCC66">
                <p>&nbsp;</p>
                <h2><span class="newStyle1">Donation Form</span></h2>
                <asp:GridView ID="GridDonation" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="DonationView_SelectedIndexChanged" Width="649px" CssClass="newStyle6">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:CommandField>
                        <asp:BoundField DataField="DonationID" HeaderText="Donation ID" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Donateamount" HeaderText="Donation Amount" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <br />
                
            <asp:HiddenField ID="DonationID" runat="server" OnValueChanged="HiddenField1_ValueChanged" />
                <br />
                <span class="newStyle3">Alumni Name</span>
                <asp:TextBox ID="txtBoxAlumni" runat="server"></asp:TextBox>
                <br />
                <br />
        <div class="auto-style3">
                <div class="auto-style3">
                    <span class="newStyle3">Donation ID</span>
                    <asp:TextBox ID="txtBoxDonationID" runat="server"></asp:TextBox>
            </div>
        </div>
        <p class="auto-style3">
            <span class="newStyle4">Donation Amount&nbsp;</span>
            <asp:TextBox ID="txtBoxDonationAmount" runat="server"></asp:TextBox>
        </p>
                <p class="auto-style3">
                    <span class="newStyle5">Donation Type
                    <asp:DropDownList ID="DropDownDonation" runat="server" style="height: 25px" Width="161px">
                        <asp:ListItem>Endowmen</asp:ListItem>
                        <asp:ListItem>Pusat Islam UTM</asp:ListItem>
                        <asp:ListItem>Sponsor UTM</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    </span>
        </p>
                <p class="auto-style3">
            <asp:Button ID="ButtonMakeDonation" runat="server" OnClick="ButtonMakeDonation_Click" style="text-align: center" Text="Make Donation" />
            &nbsp;&nbsp;<asp:Button ID="ButtonUpdateDonation" runat="server" OnClick="ButtonUpdateDonation_Click" Text="Update Donation" />
            &nbsp; <asp:Button ID="ButtonDeleteDonation" runat="server" OnClick="ButtonDeleteDonation_Click" Text="Delete Donation" />
            &nbsp;&nbsp;
                    <asp:Button ID="ButtonClear" runat="server" OnClick="ButtonClear_Click" Text="Clear" />
        </p>
                <asp:Button ID="ButtonNotify" runat="server" OnClick="Button1_Click" Text="Notify" Width="158px" />
                <br />
                <br />
                <asp:TextBox ID="txtBoxNotify" runat="server" Height="108px" TextMode="MultiLine" Width="559px"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </center>
    </form>
    <p>
        &nbsp;</p>
    <p class="auto-style3">
        © ROLLNEY, SCJ3323 SOFTWARE ARCHITECTURE AND DESIGN - SECTION 01. ALL RIGHTS RESERVED.<b style="mso-bidi-font-weight:normal"><span style="font-size:
12.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Arial Narrow&quot;,sans-serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></b></p>
</body>
</html>
