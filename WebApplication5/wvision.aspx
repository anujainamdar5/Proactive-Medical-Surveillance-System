<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wvision.aspx.cs" Inherits="MCS_trial.wvision" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
    <style type="text/css">

        .auto-style19 {
            width: 210px;
            font-size: medium;
            text-decoration: underline;
        }
        
        .auto-style11 {
            font-size: large;
        }
        .auto-style21 {
            width: 286px;
        }
        .auto-style18 {
            width: 210px;
        }
        .auto-style20 {
            text-align: left;
            width: 286px;
        }
        .auto-style22 {
            text-align: left;
        }
        .auto-style23 {
            text-align: center;
        }
        .auto-style14 {
            width: 58px;
            height: 23px;
        }
        .auto-style16 {
            height: 23px;
            width: 87px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style12 {
            width: 58px;
        }
        .auto-style17 {
            width: 87px;
        }
        .auto-style24 {
            width: 58px;
            height: 30px;
        }
        .auto-style26 {
            width: 87px;
            height: 30px;
        }
        .auto-style27 {
            width: 160px;
            height: 30px;
        }
        .auto-style28 {
            height: 30px;
        }
        .auto-style29 {
            height: 23px;
            width: 197px;
        }
        .auto-style30 {
            width: 197px;
            height: 30px;
        }
        .auto-style31 {
            width: 197px;
        }
        .auto-style32 {
            text-align: left;
            width: 160px;
            height: 23px;
        }
        .auto-style33 {
            text-align: left;
            width: 160px;
        }
        .auto-style34 {
            width: 160px;
        }
        .auto-style35 {
            width: 87px;
            font-size: medium;
            text-decoration: underline;
        }
        .auto-style36 {
            width: 87px;
            font-size: medium;
            text-decoration: underline;
            text-align: center;
        }
        .auto-style47 {
            width: 184%;
        }
        .auto-style49 {
            width: 60px;
        }
        .auto-style37 {
            width: 169px;
        }
        .auto-style40 {
            width: 214px;
        }
        .auto-style51 {
            width: 70px;
        }
        .auto-style50 {
            width: 60px;
            height: 23px;
        }
        .auto-style44 {
            width: 169px;
            height: 23px;
        }
        .auto-style45 {
            width: 214px;
            height: 23px;
        }
        .auto-style48 {
            height: 23px;
            width: 70px;
        }
        .auto-style52 {
            width: 210px;
            font-size: medium;
            text-decoration: underline;
            height: 23px;
        }
        .auto-style53 {
            width: 286px;
            height: 23px;
        }
        .auto-style54 {
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
    <div class="auto-style23">
    
        <em><span class="auto-style11">Vision Test</span></em><br />
    
    </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style52"></td>
    
                <td class="auto-style53"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style52">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back" CssClass="auto-style54" Width="179px" />
                </td>
    
                <td class="auto-style53">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Home" CssClass="auto-style54" Width="160px" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" CssClass="auto-style54" Width="201px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style52"></td>
    
                <td class="auto-style53"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
    
        <span class="auto-style11">
                <td class="auto-style21">Session Details:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">Session Code:</td>
                <td class="auto-style20">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">Factory Name:</td>
                <td class="auto-style20">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Count: </td>
                <td class="auto-style20">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">
    <table class="auto-style47">
        <tr>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style37">Worker&#39;s Name:</td>
            <td class="auto-style40">
                <asp:Label ID="w_name" runat="server"></asp:Label>
            </td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style50">&nbsp;</td>
            <td class="auto-style44">Sex:</td>
            <td class="auto-style45">
                <asp:Label ID="w_sex" runat="server"></asp:Label>
            </td>
            <td class="auto-style48"></td>
        </tr>
        <tr>
            <td class="auto-style49">&nbsp;</td>
            <td class="auto-style37">Age:</td>
            <td class="auto-style40">
                <asp:Label ID="w_age" runat="server"></asp:Label>
            </td>
            <td class="auto-style51">&nbsp;</td>
        </tr>
    </table>
                </td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </span>
        <table style="width:100%;">
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style16">
                    <asp:TextBox ID="token_no" runat="server" Width="193px" OnTextChanged="token_no_TextChanged" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style33">
                    &nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style29"></td>
                <td class="auto-style16"></td>
                <td class="auto-style32"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style29"></td>
                <td class="auto-style16">Right</td>
                <td class="auto-style33">Left</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24"></td>
                <td class="auto-style30">Distant</td>
                <td class="auto-style26">6 /
                    <asp:TextBox ID="distr" runat="server" Width="20px">6</asp:TextBox>
                </td>
                <td class="auto-style27">6 /
                    <asp:TextBox ID="dist_l" runat="server" Width="16px">6</asp:TextBox>
                </td>
                <td class="auto-style28"></td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style31">Near</td>
                <td class="auto-style17">N /
                    <asp:TextBox ID="near_r" runat="server" Width="16px">6</asp:TextBox>
                </td>
                <td class="auto-style34">N /
                    <asp:TextBox ID="near_l" runat="server" Width="16px">6</asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style31">Color</td>
                <td class="auto-style22" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Grade
                    <asp:TextBox ID="color_r" runat="server" Width="18px">3</asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Label ID="vision" runat="server"></asp:Label>
                </td>
                <td class="auto-style34">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style35">
                    <asp:Button ID="check_vision" runat="server" OnClick="check_vision_Click" Text="Check Vision and Save" Width="262px" CssClass="auto-style54" />
                </td>
                <td class="auto-style33">
    
        <asp:Label ID="Label5" runat="server" ForeColor="#009933" Text="Entry successfully saved"></asp:Label>
    
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style36">
    
                </td>
                <td class="auto-style33">
                    &nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
