<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="worker_signin.aspx.cs" Inherits="WebApplication5.worker_signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
    <style type="text/css">

    
        .auto-style50 {
            width: 315px;
        }
    
    
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
        .auto-style33 {
            width: 210px;
            height: 23px;
        }
        .auto-style34 {
            text-align: left;
            width: 286px;
            height: 23px;
        }
        .auto-style35 {
            height: 23px;
        }
        .auto-style22 {
            text-align: left;
            height: 23px;
        }
        .auto-style37 {
            width: 169px;
        }
        .auto-style40 {
            width: 214px;
        }
        .auto-style41 {
            width: 121px;
        }
        .auto-style44 {
            width: 169px;
            height: 23px;
        }
        .auto-style45 {
            width: 214px;
            height: 23px;
        }
        .auto-style46 {
            width: 121px;
            height: 23px;
        }
        .auto-style43 {
            width: 182px;
        }
        .auto-style47 {
            text-align: center;
            width: 396px;
        }
        .auto-style48 {
            width: 182px;
            height: 23px;
        }
        .auto-style49 {
            text-align: center;
            width: 396px;
            height: 23px;
        }
        .auto-style51 {
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
    <form id="form5" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style50">
                    <asp:Button ID="Home" runat="server" OnClick="Home_Click" Text="Home" CssClass="auto-style51" Width="160px" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Logout" CssClass="auto-style51" Width="141px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style50">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style50">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        Enter Session Code:&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ENTER" CssClass="auto-style51" Width="151px" />
        <br />
    
    </div>
        <p>
            &nbsp;</p>
    </form>
   
    <form id="form2" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style19"></td>
    
        <span class="auto-style11">
                <td class="auto-style21">Session Details:</td>
                <td>&nbsp;</td>
        </span>
    
            </tr>
            <tr>
    
        <span class="auto-style11">
                <td class="auto-style33">Session Code:</td>
                <td class="auto-style34">
                    <asp:Label ID="session_code" runat="server"></asp:Label>
                </td>
                <td class="auto-style35"></td>
        </span>
    
            </tr>
            <tr>
    
        <span class="auto-style11">
                <td class="auto-style33">Factory Name:</td>
                <td class="auto-style34">
                    <asp:Label ID="fact_name" runat="server"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:Label ID="fact_area" runat="server"></asp:Label>
                </td>
        </span>
    
            </tr>
        </table>
    
    </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <asp:Panel ID="w_pan" runat="server">
            <table style="width:100%;" id="w_pan0">
                <tr>
                    <td class="auto-style37">Enter token number: </td>
                    <td class="auto-style40">
                        <asp:TextBox ID="token_no" runat="server" OnTextChanged="token_no_TextChanged" Width="193px"></asp:TextBox>
                    </td>
                    <td class="auto-style41">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enter" Width="98px" CssClass="auto-style51" />
                    </td>
                    <td>
                        <asp:Label ID="t_error" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style40">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td>
                        <asp:Button ID="new_worker" runat="server" OnClick="new_worker_Click" Text="New worker" CssClass="auto-style51" Width="193px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">Worker&#39;s Name:</td>
                    <td class="auto-style40">
                        <asp:Label ID="w_name" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style41">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style44">Sex:</td>
                    <td class="auto-style45">
                        <asp:Label ID="w_sex" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style46"></td>
                </tr>
                <tr>
                    <td class="auto-style37">Age:</td>
                    <td class="auto-style40">
                        <asp:Label ID="w_age" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style41">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style40">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style40">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style44"></td>
                    <td class="auto-style45"></td>
                    <td class="auto-style46"></td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="tests_p" runat="server">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td class="auto-style47">
                        <asp:HyperLink ID="bm" runat="server" NavigateUrl="~/bm.aspx">Body Measurements</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style48"></td>
                    <td class="auto-style49">
                        <asp:HyperLink ID="gm" runat="server" NavigateUrl="~/general_exam.aspx">General Examination</asp:HyperLink>
                    </td>
                    <td class="auto-style35"></td>
                </tr>
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td class="auto-style47">
                        <asp:HyperLink ID="vt" runat="server" NavigateUrl="~/wvision.aspx">Vision Test</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td class="auto-style47">
                        <asp:HyperLink ID="ad" runat="server" NavigateUrl="~/advise.aspx">Advice</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    </form>
    <form id="form3" runat="server">
        <asp:Panel ID="view" runat="server">
        </asp:Panel>
    </form>
</body>
</html>
