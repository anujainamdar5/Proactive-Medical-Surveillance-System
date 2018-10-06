<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bmi_F.aspx.cs" Inherits="WebApplication5.bmi_F" %>

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
        .auto-style19 {
            width: 10px;
        }
        .auto-style23 {
            width: 13%;
        }
        .auto-style13 {
            width: 12%;
            text-align: center;
        }
        .auto-style14 {
            width: 14%;
        }
        .auto-style15 {
            width: 46%;
        }
        .auto-style24 {
            width: 13%;
            text-align: center;
        }
        .auto-style17 {
            width: 14%;
            text-align: center;
        }
        .auto-style18 {
            text-align: center;
            width: 46%;
        }
        .auto-style22 {
            width: 10px;
            text-align: center;
        }
        .auto-style25 {
            width: 10px;
            text-align: center;
            height: 26px;
        }
        .auto-style26 {
            width: 13%;
            text-align: center;
            height: 26px;
        }
        .auto-style27 {
            width: 12%;
            text-align: center;
            height: 26px;
        }
        .auto-style28 {
            width: 14%;
            text-align: center;
            height: 26px;
        }
        .auto-style29 {
            width: 46%;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
        <br />
    
    </div>
    <div>
    
    <div>
    
        Graphical Representation of Reports of Medical Check Up</div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3">
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="fname" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Label ID="farea" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Label ID="date" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style4" colspan="6">Weight Distribution</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style24">Sr. No.</td>
                <td class="auto-style13">Weight in kg</td>
                <td class="auto-style13">Out of total number of workers examined<br />
                    (
                    <asp:Label ID="total_w" runat="server" Text="Label"></asp:Label>
                    )</td>
                <td class="auto-style14">Incidence Rate %</td>
                <td class="auto-style15">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style24">1</td>
                <td class="auto-style13">Underweight</td>
                <td class="auto-style13">
                    <asp:Label ID="tr1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:Label ID="pr1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style24">2</td>
                <td class="auto-style13">Normal</td>
                <td class="auto-style13">
                    <asp:Label ID="tr2" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:Label ID="pr2" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style24">3</td>
                <td class="auto-style13">Overweight</td>
                <td class="auto-style13">
                    <asp:Label ID="tr3" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:Label ID="pr3" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style24">4</td>
                <td class="auto-style13">Obese</td>
                <td class="auto-style13">
                    <asp:Label ID="tr4" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:Label ID="pr4" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25"></td>
                <td class="auto-style26"></td>
                <td class="auto-style27"></td>
                <td class="auto-style27"></td>
                <td class="auto-style28"></td>
                <td class="auto-style29"></td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style13">Total</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            </table>
    
    </div>
    <p>
        &nbsp;</p>
        <p>
            <asp:Chart ID="Chart2" runat="server" Width="365px" OnLoad="Chart2_Load">
                <Series>
                    <asp:Series ChartArea="ChartArea1" Name="Series1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </p>
    </form>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
