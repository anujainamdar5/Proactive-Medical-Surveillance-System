<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication5.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 394px;
        }
        .auto-style2 {
            height: 26px;
            width: 246px;
        }
        .auto-style3 {
            height: 26px;
            width: 224px;
        }
        .auto-style4 {
            width: 224px;
        }
        .auto-style5 {
            height: 26px;
            width: 267px;
        }
        .auto-style6 {
            width: 267px;
        }
        .auto-style7 {
            width: 246px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        Previous Seession Details<br />
    
    </div>
        <p>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Factory Name:<asp:TextBox ID="fname" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Area:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                        <asp:ListItem>--select--</asp:ListItem>
                        <asp:ListItem>Aurangabad</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                        <asp:ListItem>Nashik</asp:ListItem>
                        <asp:ListItem>Ahmednagar</asp:ListItem>
                        <asp:ListItem>Jalgaon</asp:ListItem>
                        <asp:ListItem>Jalna</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Satara</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Please enter factory name or area" Visible="False"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="enter" runat="server" OnClick="enter_Click" Text="Enter" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <asp:Label ID="psdl" runat="server" Text="Information regarding history details of factory:"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
                </td>
                <td class="auto-style5">Session Code</td>
                <td class="auto-style2">No. of workers examined</td>
                <td class="auto-style2">check status</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
