<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 444px;
        }
        .auto-style2 {
            width: 1102px;
            height: 361px;
        }
        .auto-style3 {
            width: 444px;
            height: 292px;
        }
        .auto-style4 {
            width: 560px;
            height: 292px;
        }
        .auto-style5 {
            width: 560px;
        }
        .auto-style6 {
            width: 444px;
            height: 42px;
        }
        .auto-style7 {
            width: 560px;
            height: 42px;
        }
        .auto-style8 {
            width: 435px;
            height: 292px;
        }
        .auto-style9 {
            width: 435px;
        }
        .auto-style10 {
            width: 435px;
            height: 42px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        WELCOME TO ADMIN LOGIN!!!<br />
        <br />
        <br />
        <asp:Label ID="adminlog" runat="server" Text="ADMIN LOGIN"></asp:Label>
        <br />
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
                <td class="auto-style8">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="HISTORY OF FACTORIES"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Lable1" runat="server" Text="name1"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="name2"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="name3"></asp:Label>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="name4"></asp:Label>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="name5"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="sas" runat="server" OnClick="sas_Click" Text="Schedule a Session" />
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="sns" runat="server" OnClick="sns_Click" Text="Start New Session" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="psd" runat="server" OnClick="psd_Click" Text="Previous Session Detail" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
