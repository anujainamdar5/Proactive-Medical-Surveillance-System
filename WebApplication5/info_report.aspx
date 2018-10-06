<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info_report.aspx.cs" Inherits="WebApplication5.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
    <style type="text/css">
        .auto-style2 {
            width: 267px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 267px;
            height: 26px;
            text-align: center;
        }
        .auto-style5 {
            width: 267px;
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            height: 26px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style6">
    
    </div>
        <p class="auto-style6">
            <asp:Label ID="Label2" runat="server" Text="Factory Name:"></asp:Label>
            &nbsp;<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </p>
        <p class="auto-style6">
            <asp:Label ID="Label3" runat="server" Text="Session Code:"></asp:Label>
            &nbsp;<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </p>
        <p class="auto-style6">
            Date:&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Single_report.aspx">Individual Report of a Worker</asp:HyperLink>
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/emp_list.aspx">Workers List</asp:HyperLink>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/health_card.aspx">Fitness Report </asp:HyperLink>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">Graphical Representation</td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style4">
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/age_distri.aspx">Age Distribution</asp:HyperLink>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/ht_distri.aspx">Height Distribution</asp:HyperLink>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style4">
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/ENT.aspx">Fitness</asp:HyperLink>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style4">
                    <asp:HyperLink ID="HyperLink8" runat="server">BMI</asp:HyperLink>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">
                    <asp:HyperLink ID="HyperLink9" runat="server">HyperLink</asp:HyperLink>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
