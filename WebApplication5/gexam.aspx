<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gexam.aspx.cs" Inherits="WebApplication5.gexam" %>

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
        .auto-style18 {
            width: 210px;
        }
        .auto-style20 {
            text-align: left;
            width: 286px;
        }
        .auto-style3 {
            height: 23px;
            width: 214px;
        }
        .auto-style6 {
            width: 245px;
        }
        .auto-style5 {
            width: 183px;
        }
        .auto-style36 {
            text-align: center;
        }
        .auto-style27 {
            width: 100%;
        }
        .auto-style14 {
            width: 58px;
            height: 23px;
        }
        .auto-style15 {
            width: 176px;
            height: 23px;
        }
        .auto-style16 {
            height: 23px;
            width: 205px;
        }
        .auto-style26 {
            height: 23px;
            width: 181px;
        }
        .auto-style2 {
            height: 23px;
            width: 315px;
        }
        .auto-style28 {
            width: 58px;
            height: 24px;
        }
        .auto-style29 {
            width: 176px;
            height: 24px;
        }
        .auto-style30 {
            height: 24px;
            width: 205px;
        }
        .auto-style31 {
            height: 24px;
            width: 181px;
        }
        .auto-style32 {
            height: 24px;
            width: 315px;
        }
    
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div>
    
        <div class="auto-style36">
            &nbsp;
    
        <em>General Examination<br />
        </em>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style19"></td>
    
        <span class="auto-style11">
                <td class="auto-style21">Session Details:</td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" />
                </td>
            </tr>
            <tr>
                <td class="auto-style33">Session Code:</td>
                <td class="auto-style34">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="auto-style35"></td>
            </tr>
            <tr>
                <td class="auto-style33">Factory Name:</td>
                <td class="auto-style34">
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </span></div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">Enter Worker&#39;s Token Number:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="token_no" runat="server" Width="193px" OnTextChanged="token_no_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <table class="auto-style27">
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style15">Pulse:</td>
                <td class="auto-style16">
                    <asp:TextBox ID="pulse" runat="server" OnTextChanged="pulse_TextChanged" Height="22px"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">B.P.:</td>
                <td class="auto-style16">
                    <asp:TextBox ID="bp" runat="server" OnTextChanged="bp_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style15">Respiratory Rate:</td>
                <td class="auto-style16">
                    <asp:TextBox ID="rp_rate" runat="server" OnTextChanged="rp_rate_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style15"></td>
                <td class="auto-style16"></td>
                <td class="auto-style26"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style15">Skin:</td>
                <td class="auto-style16">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>--select--</asp:ListItem>
                        <asp:ListItem>Normal Texture</asp:ListItem>
                        <asp:ListItem>Eczematous</asp:ListItem>
                        <asp:ListItem>Oily</asp:ListItem>
                        <asp:ListItem>Dry</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style26">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28"></td>
                <td class="auto-style29">Cynosis:</td>
                <td class="auto-style30">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                        <asp:ListItem Selected="True">No</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style31"></td>
                <td class="auto-style32"></td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">Jaundice:</td>
                <td class="auto-style16">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
                        <asp:ListItem Selected="True">No</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">ENT:</td>
                <td class="auto-style16">
                    <asp:RadioButtonList ID="ent" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ent_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Normal</asp:ListItem>
                        <asp:ListItem>Abnormal</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="entt" runat="server" TextMode="MultiLine" Visible="False" Width="383px" OnTextChanged="entt_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style15">Mouth Cavity:</td>
                <td class="auto-style16">
                    <asp:RadioButtonList ID="mouth_cavity" runat="server" AutoPostBack="True" OnSelectedIndexChanged="mouth_cavity_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Normal</asp:ListItem>
                        <asp:ListItem>Abnormal</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="mct" runat="server" TextMode="MultiLine" Visible="False" Width="377px" OnTextChanged="mct_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">Neck:</td>
                <td class="auto-style16">
                    <asp:RadioButtonList ID="neck" runat="server" AutoPostBack="True" OnSelectedIndexChanged="neck_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Normal</asp:ListItem>
                        <asp:ListItem>Abnormal</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Visible="False" Width="374px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style15"></td>
                <td class="auto-style16"></td>
                <td class="auto-style26"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">Gait:</td>
                <td class="auto-style16">
                    <asp:RadioButtonList ID="gait" runat="server" AutoPostBack="True" OnSelectedIndexChanged="gait_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Normal</asp:ListItem>
                        <asp:ListItem>Abnormal</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Visible="False" Width="371px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">Tremors: </td>
                <td class="auto-style16">
                    <asp:RadioButtonList ID="tremors" runat="server" OnSelectedIndexChanged="tremors_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem Selected="True">Nil</asp:ListItem>
                        <asp:ListItem>Present</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="365px" Visible="False" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
                </td>
                <td class="auto-style26">
                    <asp:Label ID="Label9" runat="server" Text="Entry saved successfully" Visible="False"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            </table>
    
    </form>
</body>
</html>
