<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="advise.aspx.cs" Inherits="WebApplication5.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
    <style type="text/css">
        .auto-style2 {
            width: 206px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
            width: 302px;
        }
        .auto-style7 {
            width: 302px;
            height: 28px;
        }
        .auto-style8 {
            height: 28px;
        }
        .auto-style16 {
            width: 195px;
            text-align: left;
        }
        .auto-style11 {
            width: 146px;
            text-align: left;
        }
        .auto-style17 {
            width: 195px;
            text-align: left;
            height: 23px;
        }
        .auto-style9 {
            width: 146px;
            text-align: left;
            height: 23px;
        }
        .auto-style10 {
            height: 23px;
        }
        .auto-style13 {
            height: 23px;
            text-align: center;
        }
        .auto-style14 {
            width: 120px;
        }
        .auto-style18 {
            height: 26px;
            text-align: center;
        }
        .auto-style19 {
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
        .auto-style20 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin: 20px auto 10px auto;
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
<body style="width: 922px">
    <form id="form1" runat="server">
    <div>
    
        <br />
    
    </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style18" colspan="4">Doctor&#39;s Advice</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back" CssClass="btn" />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Home" CssClass="auto-style19" Width="206px" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" CssClass="auto-style20" Width="183px" />
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style7">Date</td>
                <td class="auto-style16">
                    <asp:Label ID="date" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Area</td>
                <td class="auto-style16">
                    <asp:Label ID="area" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Factory</td>
                <td class="auto-style16">
                    <asp:Label ID="Fact_name" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Token Number</td>
                <td class="auto-style16">
                    <asp:Label ID="token" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Name</td>
                <td class="auto-style16">
                    <asp:Label ID="name" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Age (in years)</td>
                <td class="auto-style16">
                    <asp:Label ID="age" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Sex</td>
                <td class="auto-style16">
                    <asp:Label ID="sex" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Parameter</td>
                <td class="auto-style16">
                    Observed Value</td>
                <td class="auto-style11">
                    Normal Value</td>
                <td>Deduction</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Height (in cm)</td>
                <td class="auto-style16">
                    <asp:Label ID="height" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Weight (in kg)</td>
                <td class="auto-style16">
                    <asp:Label ID="weight" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">BMI</td>
                <td class="auto-style16">
                    <asp:Label ID="bmi" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    19 to 25</td>
                <td>
                    <asp:Label ID="bmi_d" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Abdomen</td>
                <td class="auto-style17">
                    <asp:Label ID="abdomen" runat="server"></asp:Label>
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Chest</td>
                <td class="auto-style16">
                    <asp:Label ID="chest" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Waist Chest Ratio</td>
                <td class="auto-style16">
                    <asp:Label ID="wcr" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:Label ID="wcr_satus" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style17"></td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style7">Pulse</td>
                <td class="auto-style16">
                    <asp:Label ID="pulse" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    60 to 80 per minute</td>
                <td>
                    <asp:Label ID="pulse_d" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">B.P.</td>
                <td class="auto-style16">
                    <asp:Label ID="bp" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    140/100 mm Hg</td>
                <td>
                    <asp:Label ID="bp_d" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Respiratory Rate</td>
                <td class="auto-style17">
                    <asp:Label ID="resp_rate" runat="server"></asp:Label>
                </td>
                <td class="auto-style9">
                    12 to 18 per minute</td>
                <td class="auto-style10">
                    <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Skin</td>
                <td class="auto-style16">
                    <asp:Label ID="skin" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    Normal Texture</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Cynosis</td>
                <td class="auto-style16">
                    <asp:Label ID="cynosis" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    Nil</td>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Jaundice</td>
                <td class="auto-style16">
                    <asp:Label ID="jaundice" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    Nil</td>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">ENT</td>
                <td class="auto-style16">
                    <asp:Label ID="ent" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Mouth Cavity</td>
                <td class="auto-style16">
                    <asp:Label ID="mouth_cavity" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    Nil</td>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Neck</td>
                <td class="auto-style16">
                    <asp:Label ID="neck" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Gait</td>
                <td class="auto-style16">
                    <asp:Label ID="gait" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    Walks in a straight line</td>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Tremors</td>
                <td class="auto-style16">
                    <asp:Label ID="tremors" runat="server"></asp:Label>
                </td>
                <td class="auto-style11">
                    Nil</td>
                <td>
                    <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Distant Vision</td>
                <td class="auto-style16">
                    &nbsp;6/<asp:Label ID="dv" runat="server" Text="dv"></asp:Label>
                &nbsp;(left)&nbsp;&nbsp;&nbsp;&nbsp; 6/<asp:Label ID="dv0" runat="server" Text="dv"></asp:Label>
                &nbsp;(right)</td>
                <td class="auto-style11">
                    6/6&nbsp;&nbsp; 6/6</td>
                <td>
                    <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Near Vision</td>
                <td class="auto-style16">
                    N/<asp:Label ID="nv" runat="server" Text="nv"></asp:Label>
                &nbsp;(left)&nbsp;&nbsp;&nbsp; N/<asp:Label ID="nv0" runat="server" Text="nv"></asp:Label>
                &nbsp;(right)</td>
                <td class="auto-style11">
                    N/6&nbsp; N/6</td>
                <td>
                    <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Color Vision</td>
                <td class="auto-style16">
                    <asp:Label ID="cv" runat="server" Text="cv"></asp:Label>
                </td>
                <td class="auto-style11">
                    Can read red, green, yellow<br />
                    Grade III</td>
                <td>
                    <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            </table>
    <table style="width:100%;">
        <tr>
            <td class="auto-style13" colspan="3">Doctor&#39;s Feedback</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">Advice</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="328px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">Fitness</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Selected="True">Fit</asp:ListItem>
                    <asp:ListItem>Unfit</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>
                <asp:Button ID="save" runat="server" OnClick="save_Click" Text="Save" CssClass="auto-style19" Width="115px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
