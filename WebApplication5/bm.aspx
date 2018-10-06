<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
    <style type="text/css">
        .auto-style3 {
            height: 23px;
            width: 201px;
        }
        .auto-style11 {
            height: 23px;
            text-align: right;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style4 {
            width: 201px;
        }
        .auto-style9 {
            width: 191px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style6 {
            width: 191px;
        }
        .auto-style12 {
            height: 26px;
            width: 330px;
        }
        .auto-style13 {
            width: 330px;
        }
        .auto-style14 {
            text-align: center;
            font-size: large;
        }
        
        .auto-style19 {
            width: 210px;
            font-size: medium;
            text-decoration: underline;
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
            height: 24px;
        }
        .auto-style23 {
            width: 210px;
            height: 24px;
        }
        .auto-style24 {
            text-align: left;
            width: 286px;
            height: 24px;
        }
        .auto-style25 {
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
            width: 191px;
            height: 20px;
        }
        .auto-style27 {
            height: 20px;
            width: 330px;
        }
        .auto-style28 {
            height: 20px;
        }
        .auto-style29 {
            height: 32px;
            width: 330px;
        }
        .auto-style30 {
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style14">
    
        Body Measurements<br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style19">
                    <asp:Button ID="Back" runat="server" Text="Back" CssClass="btn" />
                </td>
    
                <td class="auto-style21">
                    <asp:Button ID="home" runat="server" Text="Home" CssClass="auto-style25" Width="216px" />
                </td>
                <td>
                    <asp:Button ID="logout" runat="server" Text="Logout" CssClass="auto-style25" Width="226px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
    
                <td class="auto-style21">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
    
        <span class="auto-style11">
                <td class="auto-style21">Session Details:</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">Session Code:</td>
                <td class="auto-style20">
                    <asp:Label ID="Label1" runat="server" CssClass="field"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">Factory Name:</td>
                <td class="auto-style24">
                    <asp:Label ID="Label9" runat="server" CssClass="field"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:Label ID="Label10" runat="server" CssClass="field"></asp:Label>
                </td>
            </tr>
            </table>
        </span></div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                </tr>
            <tr>
                <td class="auto-style3">Enter Worker&#39;s Token Number:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="193px"></asp:TextBox>
                    <asp:Label ID="Error" runat="server" ForeColor="Red" CssClass="field"></asp:Label>
                </td>
                </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    &nbsp;</td>
                </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style9">Height:</td>
                <td class="auto-style12">&nbsp;<asp:TextBox ID="ht" runat="server" OnTextChanged="ht_TextChanged"></asp:TextBox>
                    centimeter</td>
                <td class="auto-style10">
                    <asp:Label ID="Label5" runat="server" ForeColor="Red" CssClass="field"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Weight</td>
                <td class="auto-style12">&nbsp;<asp:TextBox ID="wt" runat="server"></asp:TextBox>
                    kilogram</td>
                <td class="auto-style10">
                    <asp:Label ID="Label6" runat="server" ForeColor="Red" CssClass="btn"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Chest: </td>
                <td class="auto-style12">&nbsp;<asp:TextBox ID="chest" runat="server"></asp:TextBox>
                    centimeter</td>
                <td class="auto-style10">
                    <asp:Label ID="Label7" runat="server" ForeColor="Red" CssClass="field"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Abdomen:</td>
                <td class="auto-style12">&nbsp;<asp:TextBox ID="abdomen" runat="server"></asp:TextBox>
                    centimeter</td>
                <td class="auto-style10">
                    <asp:Label ID="Label8" runat="server" ForeColor="Red" CssClass="field"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="calculate BMI and WCR " CssClass="btn" />
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">B.M.I. </td>
                <td id="bmi" class="auto-style12">
                    <asp:Label ID="Label2" runat="server" Text="Label" CssClass="field"></asp:Label>
                </td>
                <td id="bmi" class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26"></td>
                <td class="auto-style27"></td>
                <td class="auto-style28"></td>
            </tr>
            <tr>
                <td class="auto-style6">Waist-Chest Ratio</td>
                <td class="auto-style29">
                    <asp:Label ID="Label3" runat="server" Text="Label" CssClass="field"></asp:Label>
                </td>
                <td class="auto-style30">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style12">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Save" Width="121px" CssClass="auto-style25" />
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style12">
                    <asp:Label ID="Label4" runat="server" CssClass="field"></asp:Label>
                </td>
                <td class="auto-style10"></td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
