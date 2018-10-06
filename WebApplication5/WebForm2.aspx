<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication5.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 282px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        SCHUDULE A SESSION<br />
        <br />
        <br />
        schudule a session according to your time...<br />
        <br />
                    <asp:Label ID="sd" runat="server" Text="Select Date"></asp:Label>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Please Select Date" Visible="False"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Details about Sehudule"></asp:Label>
                    :</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="das" runat="server" MaxLength="500" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Please enter details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="save" runat="server" Text="SAVE" OnClick="save_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
