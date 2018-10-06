<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bulk_cross.aspx.cs" Inherits="WebApplication5.bulk_cross" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
    <style type="text/css">

        .auto-style5 {
            width: 98px;
        }
        
        .auto-style1 {
            width: 164px;
        }
        .auto-style6 {
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
    
        <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style1">Factory Name:</td>
                    <td>
                        <asp:Label ID="fact_name" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style1">Area:</td>
                    <td>
                        <asp:Label ID="area" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style1">Total Number of Workers:</td>
                    <td>
                        <asp:Label ID="w_count" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
    
    </div>
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Home" CssClass="auto-style6" Width="98px" />
        <asp:Button ID="ent_click" runat="server" OnClick="ent_click_Click" Text="ENT" CssClass="auto-style6" Width="159px" />
        <asp:Button ID="skin_btn" runat="server" OnClick="Button1_Click" Text="Skin Problems" CssClass="auto-style6" Width="235px" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" CssClass="auto-style6" Width="194px" />
    
        <asp:Panel ID="ent_pan" runat="server">
            <asp:Chart ID="ent_chart" runat="server" OnLoad="ent_Load">
                <Series>
                    <asp:Series Name="Series1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <br />
            <asp:Table ID="ent_tab" runat="server">
            </asp:Table>
        </asp:Panel>
        <p>
            &nbsp;</p>
        <asp:Panel runat="server" ID="skin_pan">
            <asp:Chart ID="skin_chart" runat="server">
                <Series>
                    <asp:Series Name="Series1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <br />
            <br />
            <asp:Table ID="skin_table" runat="server">
            </asp:Table>
            <br />
        </asp:Panel>
    </form>
</body>
</html>
