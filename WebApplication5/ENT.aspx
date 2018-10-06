<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ENT.aspx.cs" Inherits="WebApplication5.ENT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
    <style type="text/css">


        .auto-style2 {
            width: 164px;
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style1 {
            width: 164px;
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
        .auto-style9 {
            width: 156px;
        }
        .auto-style8 {
            width: 88px;
            text-align: center;
        }
        .auto-style10 {
            width: 156px;
            text-align: center;
        }
        .auto-style11 {
            height: 23px;
            width: 193px;
        }
        .auto-style12 {
            width: 193px;
        }
        .auto-style13 {
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div>
    
        Graphical Representation of Reports of Medical Check Up</div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Back" runat="server" OnClick="Back_Click" Text="Back" CssClass="btn" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Home" runat="server" OnClick="Home_Click" Text="Home" CssClass="auto-style13" Width="190px" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Logout" runat="server" OnClick="Button3_Click" Text="Logout" CssClass="auto-style13" Width="196px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style11">
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Label ID="fname" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Label ID="farea" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Label ID="date" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style4" colspan="6">Fitness Status</td>
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
                <td class="auto-style6">Fitness Status</td>
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
                <td class="auto-style6">Fit</td>
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
                <td class="auto-style6">Unfit</td>
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
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">Total</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
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
    </form>
</body>
</html>
