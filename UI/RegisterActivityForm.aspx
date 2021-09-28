<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterActivityForm.aspx.cs" Inherits="UTMALIS_ROLLNEY.UI.WebForm1" %>

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
            font-family: Arial, Helvetica, sans-serif;
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
                <asp:Button ID="ButtonHome" runat="server" OnClick="ButtonHome_Click" PostBackUrl="~/UI/UTMAlumniMainForm.aspx" Text="Home" />
            </p>
        </div>
            <center style="background-color: #FFCC66">
                <p>
                    &nbsp;</p>
                <h2><span class="newStyle2">Register Activity Form<br />
                    </span></h2>
                <asp:GridView ID="GridActivity" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="newStyle4" OnSelectedIndexChanged="GridActivity_SelectedIndexChanged" Width="587px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:CommandField>
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
                    <asp:HiddenField ID="ActivityID" runat="server" OnValueChanged="ActivityID_ValueChanged" />
                <br />
                <span class="newStyle3">Activity ID&nbsp;
            </span>
            <asp:TextBox ID="txtBoxActivityID" runat="server"></asp:TextBox>
                <span class="newStyle3">
                <br />
                <br />
            Activity Date&nbsp;&nbsp;
            </span>
            <asp:TextBox ID="txtBoxActivityDate" runat="server" TextMode="Date"></asp:TextBox>
                <span class="newStyle3">
                <br />
                <br />
            Activity Name&nbsp; 
            </span> 
            <asp:TextBox ID="txtBoxActivityName" runat="server"></asp:TextBox>
                <span class="newStyle3">
                <br />
                <br />
            Max Person&nbsp;
            </span>
            <asp:TextBox ID="txtBoxMaxPerson" runat="server" style="margin-bottom: 0px"></asp:TextBox>
                <span class="newStyle3">
                <br />
                <br />
                </span>
            <asp:Button ID="ButtonAddActivity" runat="server" OnClick="ButtonAddActivity_Click" Text="Add Activity" />
                <span class="newStyle3">&nbsp;
            </span>
            <asp:Button ID="ButtonUpdateActivity" runat="server" OnClick="ButtonUpdateActivity_Click" Text="Update Activity" />
                <span class="newStyle3">&nbsp;
            </span>
            <asp:Button ID="ButtonDeleteActivity" runat="server" Text="Delete Activity" OnClick="ButtonDeleteActivity_Click" />
                <span class="newStyle3">&nbsp;
                </span>
                <asp:Button ID="ButtonClear" runat="server" Text="Clear" OnClick="ButtonClear_Click" />
                <span class="newStyle3">&nbsp;
                <br />
                <br />
                Are you UTM-Alumni or Non UTM-Alumni?&nbsp;&nbsp;
                <br />
                <br />
                </span>
                <asp:Button ID="ButtonUTMALumni" runat="server" Height="29px" OnClick="ButtonUTMALumni_Click" Text="UTM Alumni" Width="108px" />
                <span class="newStyle3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <asp:Button ID="ButtonNAlumni" runat="server" Height="29px" OnClick="ButtonNAlumni_Click" Text="Non UTM-Alumni" Width="130px" />
                <br />
                <span class="newStyle3">
                <br />
                Discount (%) :&nbsp;
                </span>
                <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="136px"></asp:TextBox>
                <span class="newStyle3">
                <br />
                <br />
                Reservation Venue :&nbsp; </span>
                <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="136px"></asp:TextBox>
                <br />
                <br />
                </center>
        </div>
    </form>
    <p>
        &nbsp;</p>
    <p class="auto-style1">
        © ROLLNEY, SCJ3323 SOFTWARE ARCHITECTURE AND DESIGN - SECTION 01. ALL RIGHTS RESERVED.<b style="mso-bidi-font-weight:normal"><span style="font-size:
12.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Arial Narrow&quot;,sans-serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></b></p>
</body>
</html>
