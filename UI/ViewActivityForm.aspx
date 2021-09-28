<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewActivityForm.aspx.cs" Inherits="UTMALIS_ROLLNEY.UI.ViewActivityForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
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
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body style="background-color: #993333">
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-color: #FFCC66">
            <h1 style="background-color: #FFCC66"><span class="newStyle1">UTMALIS</span></h1>
            <p style="background-color: #FFCC66">
                <asp:Button ID="ButtonHome" runat="server" PostBackUrl="~/UI/UTMAlumniMainForm.aspx" Text="Home" />
            </p>
        </div>
        <center style="background-color: #FFCC66">
            <p>
                &nbsp;</p>
            <h2><span class="newStyle2">View Activity Form</span></h2>
            <asp:GridView ID="GridActivity" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="newStyle4" Width="595px" OnSelectedIndexChanged="GridActivity_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="ActivityID" HeaderText="Activity ID" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Activitydate" HeaderText="Activity Date" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Activityname" HeaderText="Activity Name" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Maxperson" HeaderText="Max Person" >
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
            <br />
        <asp:Button ID="ButtonManageActivityPage" runat="server" Text="Register Activity Form" PostBackUrl="~/UI/RegisterActivityForm.aspx" OnClick="ButtonManageActivityPage_Click" />
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
    <p class="auto-style1">
        © ROLLNEY, SCJ3323 SOFTWARE ARCHITECTURE AND DESIGN - SECTION 01. ALL RIGHTS RESERVED.<b style="mso-bidi-font-weight:normal"><span style="font-size:
12.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Arial Narrow&quot;,sans-serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></b></p>
</body>
</html>
