<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="body_measurements.aspx.cs" Inherits="WebApplication5.body_measurements" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
    <style type="text/css">

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
            height: 30px;
        }
        .auto-style20 {
            text-align: left;
            width: 286px;
            height: 30px;
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
        .auto-style22 {
            text-align: left;
            height: 24px;
        }
        .auto-style4 {
            width: 201px;
        }
        .auto-style9 {
            width: 191px;
            height: 26px;
        }
        .auto-style12 {
            height: 26px;
            width: 330px;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style6 {
            width: 191px;
        }
        .auto-style13 {
            width: 330px;
        }
        .auto-style37 {
            width: 169px;
        }
        .auto-style40 {
            width: 214px;
        }
        .auto-style44 {
            width: 169px;
            height: 23px;
        }
        .auto-style45 {
            width: 214px;
            height: 23px;
        }
        .auto-style47 {
            width: 184%;
        }
        .auto-style48 {
            height: 23px;
            width: 70px;
        }
        .auto-style49 {
            width: 60px;
        }
        .auto-style50 {
            width: 60px;
            height: 23px;
        }
        .auto-style51 {
            width: 70px;
        }
        .auto-style52 {
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
        .auto-style53 {
            height: 30px;
        }
        .auto-style54 {
            padding: 5px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div class="auto-style14">
    
        Body Measurements<br />
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style19">
                    <asp:Button ID="Back" runat="server" Text="Back" OnClick="Back_Click" CssClass="btn" Width="178px" />
                </td>
    
                <td class="auto-style21">
                    <asp:Button ID="home" runat="server" Text="Home" OnClick="home_Click" CssClass="auto-style52" Width="165px" />
                </td>
                <td>
                    <asp:Button ID="logout" runat="server" Text="Logout" CssClass="auto-style52" Width="151px" />
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
    
        
                <td class="auto-style21">Session Details:</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">Session Code:</td>
                <td class="auto-style20">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style53"></td>
            </tr>
            <tr>
                <td class="auto-style23">Factory Name:</td>
                <td class="auto-style24">
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                </td>
            </tr>
            </table>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style4">
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
                    <br />
                </td>
                <td>
                    &nbsp;</td>
                </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style9">Height:</td>
                <td class="auto-style12">&nbsp;<asp:TextBox ID="ht" runat="server" OnTextChanged="ht_TextChanged" CssClass="auto-style54" Width="168px"></asp:TextBox>
                    centimeter</td>
                <td class="auto-style10">
                    <asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Weight</td>
                <td class="auto-style12">&nbsp;<asp:TextBox ID="wt" runat="server" OnTextChanged="wt_TextChanged"></asp:TextBox>
                    kilogram</td>
                <td class="auto-style10">
                    <asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Chest: </td>
                <td class="auto-style12">&nbsp;<asp:TextBox ID="chest" runat="server" OnTextChanged="chest_TextChanged"></asp:TextBox>
                    centimeter</td>
                <td class="auto-style10">
                    <asp:Label ID="Label7" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Abdomen:</td>
                <td class="auto-style12">&nbsp;<asp:TextBox ID="abdomen" runat="server" OnTextChanged="abdomen_TextChanged"></asp:TextBox>
                    centimeter</td>
                <td class="auto-style10">
                    <asp:Label ID="Label8" runat="server" ForeColor="Red"></asp:Label>
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
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td id="bmi0" class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style12"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style6">Waist-Chest Ratio</td>
                <td class="auto-style12">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style10">
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
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Save" Width="94px" CssClass="auto-style52" />
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style12">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
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
