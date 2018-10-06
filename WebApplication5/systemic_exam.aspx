<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="systemic_exam.aspx.cs" Inherits="WebApplication5.systemic_exam" %>

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
        .auto-style58 {
            width: 141px;
            height: 23px;
        }
        .auto-style59 {
            margin-left: 0px;
        }
        .auto-style60 {
            width: 141px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <div>
    
    </div>
    <div>
    
        Systemic Examination<br />
    
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
                    <asp:Label ID="session_code" runat="server"></asp:Label>
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
                    <asp:Label ID="count" runat="server"></asp:Label>
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
    
        <span class="auto-style11">
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
        </span>
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
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">Respiratory System </td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">SPO2%</td>
                    <td>
                        <asp:RadioButtonList ID="spo2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="spo2_SelectedIndexChanged">
                            <asp:ListItem Selected="True">99.6</asp:ListItem>
                            <asp:ListItem Value="98"></asp:ListItem>
                            <asp:ListItem Value="Other"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="spo2_other" runat="server" OnTextChanged="spo2_other_TextChanged" Visible="False"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style58"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2" colspan="2"></td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">Chest</td>
                    <td>
                        <asp:RadioButtonList ID="chest" runat="server" AutoPostBack="True" OnSelectedIndexChanged="chest_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="Symmetric"></asp:ListItem>
                            <asp:ListItem Value="Asymmetric"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;&nbsp;Breathing</td>
                    <td>
                        <asp:RadioButtonList ID="BREATH" runat="server" AutoPostBack="True" OnSelectedIndexChanged="BREATH_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="Normal"></asp:ListItem>
                            <asp:ListItem Value="Abnormal"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td colspan="2">
                        <asp:RadioButtonList ID="breathing" runat="server" OnSelectedIndexChanged="breathing_SelectedIndexChanged" Visible="False">
                            <asp:ListItem Selected="True" Value="Broncho Vesicular"></asp:ListItem>
                            <asp:ListItem Value="Bronchial"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">Adventatious Sounds </td>
                    <td>
                        <asp:RadioButtonList ID="adv_lung" runat="server" AutoPostBack="True" CssClass="auto-style59" OnSelectedIndexChanged="adv_lung_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="None"></asp:ListItem>
                            <asp:ListItem Value="Right Lung"></asp:ListItem>
                            <asp:ListItem Value="Left Lung"></asp:ListItem>
                            <asp:ListItem Value="Both Lungs"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td colspan="2">
                        <asp:CheckBoxList ID="adv_sound" runat="server" OnSelectedIndexChanged="adv_sound_SelectedIndexChanged" Visible="False">
                            <asp:ListItem Value="Crepts Fine"></asp:ListItem>
                            <asp:ListItem Value="Crepts Coarse"></asp:ListItem>
                            <asp:ListItem Value="Plural Rub"></asp:ListItem>
                            <asp:ListItem Value="Fluid Plash"></asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">Cardio Vesicular System</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">Heart Sounds</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">S1S2</td>
                    <td>
                        <asp:RadioButtonList ID="s1s2" runat="server" OnSelectedIndexChanged="s1s2_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="Clear"></asp:ListItem>
                            <asp:ListItem Value="Muttled"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">Murmurs</td>
                    <td>
                        <asp:RadioButtonList ID="murmurs" runat="server" OnSelectedIndexChanged="murmurs_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">Cardiac Rub</td>
                    <td>
                        <asp:RadioButtonList ID="cardiac_rub" runat="server" OnSelectedIndexChanged="cardiac_rub_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">Central Nervous System</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">Intelligence</td>
                    <td>
                        <asp:RadioButtonList ID="intelligence" runat="server" OnSelectedIndexChanged="intelligence_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="Intelligent"></asp:ListItem>
                            <asp:ListItem Value="Above average"></asp:ListItem>
                            <asp:ListItem Value="Average"></asp:ListItem>
                            <asp:ListItem Value="Below average"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">Carnial Nervous</td>
                    <td>
                        <asp:RadioButtonList ID="carnial_nervous" runat="server" AutoPostBack="True" OnSelectedIndexChanged="carnial_nervous_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="Normal"></asp:ListItem>
                            <asp:ListItem Value="Abnormal"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="carnial_text" runat="server" OnTextChanged="carnial_text_TextChanged" Visible="False"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">Sensory</td>
                    <td>
                        <asp:RadioButtonList ID="sensory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="sensory_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="Normal"></asp:ListItem>
                            <asp:ListItem Value="Abnormal"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="sensory_text" runat="server" OnTextChanged="sensory_text_TextChanged" Visible="False"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">Motor</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>Tone</td>
                    <td colspan="2">
                        <asp:RadioButtonList ID="m_tone" runat="server" OnSelectedIndexChanged="m_tone_SelectedIndexChanged" Visible="False">
                            <asp:ListItem Selected="True" Value="Normal"></asp:ListItem>
                            <asp:ListItem Value="Abnormal"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>Power</td>
                    <td colspan="2">
                        <asp:RadioButtonList ID="m_power" runat="server" OnSelectedIndexChanged="m_power_SelectedIndexChanged" Visible="False">
                            <asp:ListItem Selected="True" Value="Normal"></asp:ListItem>
                            <asp:ListItem Value="Abnormal"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>Reflexes</td>
                    <td colspan="2">
                        <asp:RadioButtonList ID="m_reflexes" runat="server" OnSelectedIndexChanged="m_reflexes_SelectedIndexChanged" Visible="False">
                            <asp:ListItem Selected="True" Value="Normal"></asp:ListItem>
                            <asp:ListItem Value="Abnormal"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style58"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2" colspan="2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style60">Per Abdomen</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>Abdomen</td>
                    <td colspan="2">
                        <asp:RadioButtonList ID="abdomen" runat="server" OnSelectedIndexChanged="abdomen_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="Soft"></asp:ListItem>
                            <asp:ListItem Value="Hard"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;Umbilicus&nbsp;</td>
                    <td colspan="2">
                        <asp:RadioButtonList ID="sensory0" runat="server" OnSelectedIndexChanged="sensory0_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="Central"></asp:ListItem>
                            <asp:ListItem Value="Deviated"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>Liver</td>
                    <td>
                        <asp:RadioButtonList ID="liver1" runat="server" OnSelectedIndexChanged="liver1_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="Non Palpable"></asp:ListItem>
                            <asp:ListItem Value="Palpable"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="liver2" runat="server" OnSelectedIndexChanged="liver2_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="Non Tender"></asp:ListItem>
                            <asp:ListItem Value="Tender"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>Spleen</td>
                    <td>
                        <asp:RadioButtonList ID="spleen1" runat="server" OnSelectedIndexChanged="spleen1_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="Non Palpable"></asp:ListItem>
                            <asp:ListItem Value="Palpable"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="spleen2" runat="server" OnSelectedIndexChanged="spleen2_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="Non Tender"></asp:ListItem>
                            <asp:ListItem Value="Tender"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">Advice</td>
                    <td>
                        <asp:TextBox ID="advice" runat="server" OnTextChanged="advice_TextChanged"></asp:TextBox>
                    </td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">
                        <asp:Button ID="save" runat="server" OnClick="upload_Click" Text="Save and New" Width="124px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
