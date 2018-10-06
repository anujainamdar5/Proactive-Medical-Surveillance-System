<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="single_cross.aspx.cs" Inherits="WebApplication5.single_cross" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
    <style type="text/css">

        .auto-style1 {
            width: 164px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 98px;
        }
        .auto-style40 {
            width: 147px;
        }
        .auto-style16 {
            width: 195px;
            text-align: left;
        }
        .auto-style41 {
            width: 198px;
            text-align: left;
        }
        .auto-style37 {
            width: 100%;
        }
        .auto-style42 {
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
    
        <asp:Button ID="empl" runat="server" OnClick="empl_Click" Text="Employee List" CssClass="auto-style42" Width="170px" />
        <asp:Button ID="w_report" runat="server" OnClick="Button7_Click" Text="Worker's Report" CssClass="auto-style42" Width="246px" />
    
    </div>
        <asp:Panel ID="emp_list" runat="server">
            <br />
            Workers&#39; List:<br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style1">Factory Name:</td>
                    <td>
                        <asp:Label ID="fact_name" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style1">Area:</td>
                    <td>
                        <asp:Label ID="area" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style1">Total Number of Workers:</td>
                    <td>
                        <asp:Label ID="w_count" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <div class="auto-style4">
            </div>
            <asp:Table ID="Table1" runat="server">
            </asp:Table>
            <br />
            <br />
        </asp:Panel>
        <asp:Panel ID="token" runat="server">
            Enter Token Number:
            <asp:TextBox ID="token_no" runat="server" OnTextChanged="token_no_TextChanged"></asp:TextBox>
            &nbsp;<asp:Button ID="report" runat="server" OnClick="report_Click" Text="View Report" CssClass="auto-style42" Width="208px" />
            &nbsp;<asp:Label ID="Label1" runat="server" Text="token_error"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="reps" runat="server">
            <table class="auto-style37">
                <tr>
                    <td class="auto-style40">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style41">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style40">Area</td>
                    <td class="auto-style16">
                        <asp:Label ID="area0" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style41">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style40">Factory</td>
                    <td class="auto-style16">
                        <asp:Label ID="Fact_name0" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style41">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style40">Token Number</td>
                    <td class="auto-style16">
                        <asp:Label ID="token0" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style41">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style40">Name</td>
                    <td class="auto-style16">
                        <asp:Label ID="name" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style41">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style40">Age (in years)</td>
                    <td class="auto-style16">
                        <asp:Label ID="age" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style41">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style40">Sex</td>
                    <td class="auto-style16">
                        <asp:Label ID="sex" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style41">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style40">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style41">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Table ID="bm" runat="server">
            </asp:Table>
            <br />
            <asp:Table ID="ge" runat="server">
            </asp:Table>
            <br />
            <asp:Table ID="vision" runat="server">
            </asp:Table>
            <br />
            <asp:Table ID="adv" runat="server">
            </asp:Table>
            <br />
        </asp:Panel>
    </form>
</body>
</html>
