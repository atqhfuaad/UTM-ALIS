<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MakeReservation.aspx.cs" Inherits="UTMALIS_ROLLNEY.UI.MakeReservation" %>

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
            font-family: Arial;
        }
        .newStyle5 {
            font-family: Arial;
        }
        .newStyle6 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .newStyle7 {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body style="background-color: #993333">
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-color: #FFCC66">
            <h1 style="background-color: #FFCC66"><span class="newStyle1">UTMALIS</span></h1>
            <p style="background-color: #FFCC66">
                <asp:Button ID="ButtonHome" runat="server" OnClick="ButtonHome_Click1" PostBackUrl="~/UI/UTMAlumniMainForm.aspx" Text="Home" />
            </p>
        </div>
                <center style="background-color: #FFCC66">
                    <br />
                    <h2><span class="newStyle1">Make Reservation Form</span></h2>
                    <p>
                        <asp:GridView ID="GridFacility" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="newStyle6" OnSelectedIndexChanged="GridFacility_SelectedIndexChanged" Width="610px">
                            <Columns>
                                <asp:BoundField DataField="FacilityID" HeaderText="Facility ID">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Facilityname" HeaderText="Facility Name">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Facilitytype" HeaderText="Facility Type">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Facilityprice" HeaderText="Facility Price">
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
                    </p>
        <p class="auto-style1">
            <span class="newStyle4">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UTMALISConnectionString %>" SelectCommand="SELECT [FacilityID] FROM [Facility]"></asp:SqlDataSource>
            Facility ID&nbsp; </span>
            <asp:DropDownList ID="DropDownFacilityID" runat="server" CssClass="newStyle5" DataSourceID="SqlDataSource1" DataTextField="FacilityID" DataValueField="FacilityID" Height="27px" Width="160px">
            </asp:DropDownList>
                    <hr />
                    <asp:GridView ID="GridReservation" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="newStyle6" OnSelectedIndexChanged="GridReservation_SelectedIndexChanged" Width="617px">
                        <Columns>
                            <asp:BoundField DataField="FacilityID" HeaderText="Facility ID">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ReservationID" HeaderText="Reservation ID">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Reservationdate" HeaderText="Reservation Date">
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Package" HeaderText="Package">
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
                    <p class="auto-style1">
                        <asp:HiddenField ID="ReservationID" runat="server" />
        <p class="newStyle3">
            Reservation ID&nbsp;
            <asp:TextBox ID="txtBoxReservationID" runat="server"></asp:TextBox>
        </p>
                    <p class="newStyle3">
                        Package&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownPackage" runat="server">
                            <asp:ListItem>Package A</asp:ListItem>
                            <asp:ListItem>Package B</asp:ListItem>
                            <asp:ListItem>Package C</asp:ListItem>
                            <asp:ListItem>Package D</asp:ListItem>
                            <asp:ListItem>No Package</asp:ListItem>
                        </asp:DropDownList>
                    <p class="newStyle3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="ButtonPackage" runat="server" Text="Select" OnClick="ButtonPackage_Click" />
        &nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;
                    <p class="newStyle3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBoxPackage" runat="server" Height="25px" Width="219px"></asp:TextBox>
                    <p class="newStyle3">
                        Discount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBoxDisc" runat="server"></asp:TextBox>
        <p class="newStyle3">
            Reservation Date&nbsp; <asp:TextBox ID="txtBoxReservationDate" runat="server" TextMode="Date"></asp:TextBox>
            
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        </p>
                    <p class="auto-style1">
                        &nbsp;</p>
   <center><asp:Button ID="ButtonMakeReservation" runat="server" style="text-align: center" Text="Add Reservation" OnClick="ButtonMakeReservation_Click" />&nbsp;
       <asp:Button ID="ButtonMakePayment" runat="server" PostBackUrl="~/UI/MakePayment.aspx" Text="Make Payment" />
&nbsp;
                <asp:Button ID="ButtonClear" runat="server" Text="Clear" OnClick="ButtonClear_Click" Width="65px" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
        </center>
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

