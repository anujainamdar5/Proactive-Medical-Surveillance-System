<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ht_distri.aspx.cs" Inherits="WebApplication5.ht_distri" %>

<!DOCTYPE html>
<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        .auto-style12 {
            width: 9%;
            text-align: center;
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
        .auto-style17 {
            width: 14%;
            text-align: center;
        }
        .auto-style18 {
            text-align: center;
            width: 46%;
        }
        .auto-style19 {
            width: 10px;
        }
        .auto-style20 {
            width: 15%;
        }
        .auto-style21 {
            width: 15%;
            text-align: center;
        }
        .auto-style22 {
            width: 10px;
            text-align: center;
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
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style21">Sr. No.</td>
                <td class="auto-style12">Weight in kg</td>
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
                <td class="auto-style21">1</td>
                <td class="auto-style12">Below 45</td>
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
                <td class="auto-style21">2</td>
                <td class="auto-style12">46-55</td>
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
                <td class="auto-style21">3</td>
                <td class="auto-style12">56-65</td>
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
                <td class="auto-style21">4</td>
                <td class="auto-style12">66-75</td>
                <td class="auto-style13">
                    <asp:Label ID="tr4" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:Label ID="pr4" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style21">5</td>
                <td class="auto-style12">76-85</td>
                <td class="auto-style13">
                    <asp:Label ID="tr5" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:Label ID="pr5" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style21">6</td>
                <td class="auto-style12">Above 85</td>
                <td class="auto-style13">
                    <asp:Label ID="tr6" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:Label ID="pr6" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style12">Total</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            </table>
    
    </div>
    <p>
        &nbsp;</p>
        <p>
            <asp:Chart ID="Chart2" runat="server" Width="365px">
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
    </body>
</html>
