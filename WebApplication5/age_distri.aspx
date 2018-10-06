<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="age_distri.aspx.cs" Inherits="WebApplication5.age_distri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
    <style type="text/css">

        .auto-style1 {
            width: 164px;
        }
        .auto-style2 {
            width: 164px;
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 88px;
        }
        .auto-style6 {
            width: 99px;
            text-align: center;
        }
        .auto-style7 {
            width: 139px;
            text-align: center;
        }
        .auto-style8 {
            width: 88px;
            text-align: center;
        }
        .auto-style9 {
            width: 156px;
        }
        .auto-style10 {
            width: 156px;
            text-align: center;
        }
        .auto-style11 {
            width: 254px;
        }
        .auto-style12 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin: 10px auto;
            padding: 10px;
            background: #4abe54;
            box-shadow: 0px 1px 0px 0px #111;
            border-radius: 3px;
            outline: none;
            color: #333;
            font-weight: 700;
            letter-spacing: 0.125em;
            text-align: center;
            text-transform: uppercase;
        }
        .auto-style13 {
            height: 23px;
            width: 175px;
        }
        .auto-style14 {
            width: 175px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Graphical Representation of Reports of Medical Check Up</div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style13">
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Back" runat="server" OnClick="Back_Click" Text="Back" CssClass="btn" />
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Home" runat="server" OnClick="Home_Click" Text="Home" CssClass="auto-style12" Width="175px" />
                </td>
                <td>
                    <asp:Button ID="Logout" runat="server" OnClick="Button3_Click" Text="Logout" CssClass="auto-style12" Width="171px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Label ID="fname" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Label ID="farea" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style14">
                    <asp:Label ID="date" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style4" colspan="6">Age Distribution</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style8">Sr. No.</td>
                <td class="auto-style6">Age in years</td>
                <td class="auto-style7">Out of total number of workers examined<br />
                    (
                    <asp:Label ID="total_w" runat="server" Text="Label"></asp:Label>
                    )</td>
                <td class="auto-style9">Incidence Rate %</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style8">1</td>
                <td class="auto-style6">18 to 20</td>
                <td class="auto-style7">
                    <asp:Label ID="tr1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:Label ID="pr1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">2</td>
                <td class="auto-style6">21 to 30</td>
                <td class="auto-style7">
                    <asp:Label ID="tr2" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:Label ID="pr2" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">3</td>
                <td class="auto-style6">31 to 40</td>
                <td class="auto-style7">
                    <asp:Label ID="tr3" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:Label ID="pr3" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">4</td>
                <td class="auto-style6">41-50</td>
                <td class="auto-style7">
                    <asp:Label ID="tr4" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:Label ID="pr4" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">5</td>
                <td class="auto-style6">51-60</td>
                <td class="auto-style7">
                    <asp:Label ID="tr5" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:Label ID="pr5" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style8">6</td>
                <td class="auto-style6">Above 60</td>
                <td class="auto-style7">
                    <asp:Label ID="tr6" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:Label ID="pr6" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td>
                    <asp:Chart ID="Chart1" runat="server" OnLoad="Chart1_Load">
                        <Series>
                            <asp:Series Name="Series1">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
