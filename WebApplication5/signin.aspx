<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="WebApplication5.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
    <style type="text/css">

        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
            width: 363px;
        }
        .auto-style5 {
            width: 225px;
            text-align: center;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
            width: 225px;
            text-align: center;
        }
        .auto-style7 {
            color: #000000;
        }
        .auto-style8 {
            color: #006600;
        }
        .auto-style9 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div class="auto-style1">
    
    &nbsp;<span class="auto-style8"><strong><span class="auto-style9">PROACTIVE </span></strong> &nbsp;<strong><span class="auto-style9">MEDICAL</span></strong> <strong><span class="auto-style9">&nbsp;SURVILLANCE</span></strong> <strong><span class="auto-style9">&nbsp;SYSTEM</span></strong></span><o:p></o:p></div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" rowspan="3">&nbsp;</td>
                <td class="auto-style5"><span class="auto-style7">User</span> <span class="auto-style7">Name</span>: </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="uname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style5"><span class="auto-style7">Password</span>:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="pwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" CssClass="btn" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
