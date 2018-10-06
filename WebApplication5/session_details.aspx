<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="session_details.aspx.cs" Inherits="WebApplication5.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
    <style type="text/css">
        .auto-style3 {
            width: 383px;
            text-align: right;
            height: 30px;
        }
        .auto-style5 {
            width: 193px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            text-align: center;
            width: 156px;
        }
        .auto-style8 {
            width: 156px;
        }
        .auto-style9 {
            height: 26px;
            width: 156px;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            width: 116px;
        }
        .auto-style12 {
            width: 116px;
            text-align: right;
            height: 30px;
        }
        .auto-style13 {
            width: 383px;
        }
        .auto-style16 {
            width: 193px;
        }
        .auto-style17 {
            width: 164px;
        }
        .auto-style18 {
            width: 164px;
            height: 26px;
        }
        .auto-style19 {
            height: 30px;
        }
        .auto-style20 {
            width: 116px;
            height: 23px;
        }
        .auto-style21 {
            width: 383px;
            height: 23px;
        }
        .auto-style22 {
            height: 23px;
        }
        .auto-style23 {
            text-align: left;
        }
        .auto-style24 {
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
        .auto-style26 {
            margin: 10px auto;
            padding: 10px;
            background: #2a2b2c;
            border: medium solid black;
            box-shadow: 0px 1px 0px 0px #111;
            border-radius: 3px;
            outline: #000;
            color: #ffffff;
            font-weight: 700;
            letter-spacing: 0.125em;
            text-align: center;
            text-transform: uppercase;
        }
        .auto-style28 {
            width: 116px;
            height: 22px;
        }
        .auto-style29 {
            width: 383px;
            height: 22px;
        }
        .auto-style30 {
            height: 22px;
        }
        .auto-style31 {
            width: 116px;
            height: 5px;
        }
        .auto-style34 {
            width: 100%;
        }
        .auto-style35 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            width: 383px;
            font-family: 'Footlight MT', sans-serif;
            margin: 10px auto;
            padding: 10px;
            box-shadow: 0px 1px 0px 0px #111;
            border-radius: 3px;
            outline: none;
            color: #333;
            font-weight: 700;
            letter-spacing: 0.125em;
            text-align: center;
            text-transform: initial;
            height: 5px;
        }
        .auto-style36 {
            height: 5px;
        }
        .auto-style37 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            width: 383px;
            font-family: 'Footlight MT', sans-serif;
            margin: 10px auto;
            padding: 10px;
            box-shadow: 0px 1px 0px 0px #111;
            border-radius: 3px;
            outline: none;
            color: #333;
            font-weight: 700;
            letter-spacing: 0.125em;
            text-align: center;
            text-transform: initial;
        }
        .auto-style38 {
            margin: 10px auto;
            padding: 10px;
            background: #2a2b2c;
            border: 3px solid black;
            box-shadow: 0px 1px 0px 0px #111;
            border-radius: 5px;
            outline: #000;
            color: #ffffff;
            font-weight: 700;
            letter-spacing: 0.125em;
            text-align: center;
            text-transform: uppercase;
            font-family: 'Book Antiqua';
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style23">
    
        <br />
        Previous Session Details<br />
    
        <br />
        &nbsp;&nbsp;<asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Home" CssClass="auto-style26" Width="89px" />
            <asp:Button ID="Button4" runat="server" Text="Single Session Reports" OnClick="Button4_Click" CssClass="btn" Width="204px" />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Cross-sectional Reports" CssClass="btn" Width="228px" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" CssClass="auto-style26" Width="109px" />
    
    </div>
        <p class="auto-style10">
            <table class="auto-style34">
                <tr>
                    <td class="auto-style31"></td>
                    <td class="auto-style35">Factory Name:</td>
                    <td class="auto-style36"><asp:TextBox ID="fname" runat="server" CssClass="input" Height="16px" Width="193px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28"></td>
                    <td class="auto-style29"></td>
                    <td class="auto-style30"></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style37">Area:</td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="drop">
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
                </tr>
                <tr>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        </td>
                    <td class="auto-style21">
                        &nbsp;</td>
                    <td class="auto-style22">
                        <asp:Button ID="enter" runat="server" OnClick="enter_Click" Text="Enter" CssClass="auto-style38" Height="49px" Width="145px" />
                    </td>
                </tr>
            </table>
        </p>
        <div class="auto-style10">
            <br />
        </div>
        <p class="auto-style10">
        </p>
        <asp:Panel ID="opt" runat="server">
        </asp:Panel>
        <asp:Panel ID="single_session" runat="server">
            <asp:Label ID="psdl" runat="server" Text="Information regarding previous sessions for the above factory:"></asp:Label>
            <br />
            <br />
            <asp:Table ID="Table1" runat="server" GridLines="Both">
            </asp:Table>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style18">Enter the session code of corresponding date:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Reports" CssClass="auto-style24" Height="55px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </asp:Panel>
        <p class="auto-style10">
        </p>
        <asp:Panel ID="multi_session" runat="server">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/single_cross.aspx">Individual Worker&#39;s History </asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/bulk_cross.aspx">Cross sectional study of factory</asp:HyperLink>
        </asp:Panel>
        <div>
        </div>
    </form>
</body>
</html>
