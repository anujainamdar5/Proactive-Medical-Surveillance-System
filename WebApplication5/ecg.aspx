<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ecg.aspx.cs" Inherits="WebApplication5.ecg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        
        .auto-style11 {
            font-size: large;
        }
        .auto-style52 {
            width: 289px;
            font-size: medium;
            text-decoration: underline;
            height: 23px;
        }
        .auto-style53 {
            width: 286px;
            height: 23px;
        }
        .auto-style2 {
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
    
        .auto-style19 {
            width: 289px;
            font-size: medium;
            text-decoration: underline;
        }
        
        .auto-style21 {
            width: 286px;
        }
        .auto-style56 {
            width: 289px;
        }
        .auto-style20 {
            text-align: left;
            width: 286px;
        }
        .auto-style22 {
            text-align: left;
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
        .auto-style14 {
            width: 58px;
            height: 23px;
        }
        .auto-style29 {
            height: 23px;
            width: 197px;
        }
        .auto-style16 {
            height: 23px;
            width: 154px;
        }
        .auto-style33 {
            text-align: left;
            width: 160px;
        }
        .auto-style55 {
            text-align: left;
            width: 160px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        ECG<br />
    
    </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style52"></td>
    
                <td class="auto-style53"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style52">
                    <asp:Button ID="back" runat="server" OnClick="Button3_Click" Text="Back" CssClass="auto-style54" Width="179px" />
                </td>
    
                <td class="auto-style53">
                    <asp:Button ID="home" runat="server" OnClick="Button1_Click" Text="Home" CssClass="auto-style54" Width="160px" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="logout" runat="server" OnClick="Button2_Click" Text="Logout" CssClass="auto-style54" Width="201px" />
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
                <td class="auto-style56">Session Code:</td>
                <td class="auto-style20">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style56">Factory Name:</td>
                <td class="auto-style20">
                    <asp:Label ID="fact_name" runat="server"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:Label ID="area" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style56">Count: </td>
                <td class="auto-style20">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style56">Enter token number of worker:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="token_no" runat="server" Width="193px" OnTextChanged="token_no_TextChanged" Visible="False"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="find_worker" runat="server" OnClick="find_worker_Click" Text="View worker's profile" />
                </td>
            </tr>
            <tr>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style56">
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
        <asp:Panel ID="test_pan" runat="server">
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
                    <td class="auto-style29">
                        <asp:Label ID="Label5" runat="server" Text="ECG"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged1">
                            <asp:ListItem Selected="True">Normal</asp:ListItem>
                            <asp:ListItem Value="Abnormal"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style29">Advice:</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="advice" runat="server" OnTextChanged="advice_TextChanged" style="height: 22px"></asp:TextBox>
                    </td>
                    <td class="auto-style55"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style55">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style29">
                        <asp:Label ID="attach" runat="server" Text="Attach the X-ray"></asp:Label>
                    </td>
                    <td class="auto-style16">
                        <asp:TextBox ID="path" runat="server" OnTextChanged="path_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style55">
                        <asp:Button ID="browser" runat="server" OnClick="browser_Click" Text="Browse" />
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style55">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:Button ID="save" runat="server" OnClick="upload_Click" Text="Save and New" Width="124px" />
                    </td>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
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
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
