<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="history.aspx.cs" Inherits="WebApplication5.history" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 28px;
        }
        .auto-style2 {
            width: 287px;
        }
        .auto-style3 {
            width: 28px;
            height: 23px;
        }
        .auto-style4 {
            width: 287px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
    
        .auto-style19 {
            width: 289px;
            font-size: medium;
            text-decoration: underline;
        }
        
        .auto-style11 {
            font-size: large;
        }
                
        .auto-style21 {
            width: 286px;
        }
        .auto-style57 {
            width: 289px;
            height: 23px;
        }
        .auto-style58 {
            text-align: left;
            width: 286px;
            height: 23px;
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
    
        .auto-style59 {
            height: 23px;
            width: 188px;
        }
        .auto-style60 {
            width: 188px;
        }
    
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        history form<br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style19">
                    <asp:Button ID="back" runat="server" OnClick="Button3_Click" Text="Back" CssClass="auto-style54" Width="179px" />
                </td>
    
                <td class="auto-style21">
                    <asp:Button ID="home" runat="server" OnClick="Button1_Click" Text="Home" CssClass="auto-style54" Width="160px" />
                </td>
                <td>
                    <asp:Button ID="save" runat="server" OnClick="Button2_Click" Text="Logout" CssClass="auto-style54" Width="201px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
    
                <td class="auto-style21">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
    
        <span class="auto-style11">
                <td class="auto-style21">Session Details:</td>
        </span>
    
        <span class="auto-style11">
                <td>&nbsp;</td>
        </span>
            </tr>
            <tr>
    
        <span class="auto-style11">
                <td class="auto-style57">Session Code:</td>
        </span>
    
        <span class="auto-style11">
                <td class="auto-style58">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
        </span>
    
        <span class="auto-style11">
                <td class="auto-style2"></td>
        </span>
            </tr>
            <tr>
    
        <span class="auto-style11">
                <td class="auto-style56">Factory Name:</td>
        </span>
    
        <span class="auto-style11">
                <td class="auto-style20">
                    <asp:Label ID="fact_name" runat="server"></asp:Label>
                </td>
        </span>
    
        <span class="auto-style11">
                <td class="auto-style22">
                    <asp:Label ID="area" runat="server"></asp:Label>
                </td>
        </span>
            </tr>
            <tr>
    
        <span class="auto-style11">
                <td class="auto-style56">Count: </td>
        </span>
    
        <span class="auto-style11">
                <td class="auto-style20">
                    <asp:Label ID="total_count" runat="server"></asp:Label>
                </td>
        </span>
    
        <span class="auto-style11">
                <td>&nbsp;</td>
        </span>
            </tr>
            <tr>
    
        <span class="auto-style11">
                <td class="auto-style56">&nbsp;</td>
        </span>
    
        <span class="auto-style11">
                <td class="auto-style20">
                    &nbsp;</td>
        </span>
    
        <span class="auto-style11">
                <td>&nbsp;</td>
        </span>
            </tr>
            <tr>
    
        <span class="auto-style11">
                <td class="auto-style56">Enter token number of worker:</td>
        </span>
    
        <span class="auto-style11">
                <td class="auto-style20">
                    <asp:TextBox ID="token_no" runat="server" Width="193px" OnTextChanged="token_no_TextChanged"></asp:TextBox>
                </td>
        </span>
    
        <span class="auto-style11">
                <td>
    
        <span class="auto-style11">
                    <asp:Button ID="find_worker" runat="server" OnClick="find_worker_Click" Text="View worker's profile" />
        </span>
                </td>
        </span>
            </tr>
            <tr>
    
        <span class="auto-style11">
                <td class="auto-style56">&nbsp;</td>
        </span>
    
        <span class="auto-style11">
                <td class="auto-style20">
                    &nbsp;</td>
        </span>
    
        <span class="auto-style11">
                <td>&nbsp;</td>
        </span>
            </tr>
            <tr>
    
        <span class="auto-style11">
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
        </span>
    
        <span class="auto-style11">
                <td class="auto-style20">
                    &nbsp;</td>
        </span>
    
        <span class="auto-style11">
                <td>&nbsp;</td>
        </span>
            </tr>
        </table>
    
    </div>
        <asp:Panel ID="test_pan" runat="server">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style59"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style1">1.</td>
                    <td class="auto-style2">You are in current trade for how many years?</td>
                    <td class="auto-style60">
                        <asp:TextBox ID="trade_years" runat="server" Width="57px" OnTextChanged="trade_years_TextChanged"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">2.</td>
                    <td class="auto-style2">History of frequent fever</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="fever" runat="server" Width="119px" OnSelectedIndexChanged="fever_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">3.</td>
                    <td class="auto-style2">Acidity/ Digestion problem</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="acidity_digestion" runat="server" Width="119px" OnSelectedIndexChanged="acidity_digestion_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">4.</td>
                    <td class="auto-style2">Any allergy or drug reaction</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="allergy_reaction" runat="server" Width="119px" OnSelectedIndexChanged="allergy_reaction_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">5.</td>
                    <td class="auto-style2">Eye diseases/ Vision problem</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="eye_problem" runat="server" Width="119px" OnSelectedIndexChanged="eye_problem_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">6.</td>
                    <td class="auto-style2">Ear disease</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="ear_disease" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">7.</td>
                    <td class="auto-style2">Difficulty in hearing</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="hearing_problem" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">8.</td>
                    <td class="auto-style2">T.B.</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="tb" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">9.</td>
                    <td class="auto-style2">Do you have breathlessness?</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="breathlessness" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="149px">
                            <asp:ListItem Selected="True" Value="After a little work"></asp:ListItem>
                            <asp:ListItem Value="At rest"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">10.</td>
                    <td class="auto-style2">Respiratory diseases</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="respiratory" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">11.</td>
                    <td class="auto-style2">Heart Disease/ Blood Pressure</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="bp_heart_disease" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">12.</td>
                    <td class="auto-style2">Diabetes</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="diabetes" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">13.</td>
                    <td class="auto-style4">Suffered from Jaundice</td>
                    <td class="auto-style59">
                        <asp:RadioButtonList ID="jaundice" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">14.</td>
                    <td class="auto-style2">Any dental problem</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="dental" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">15.</td>
                    <td class="auto-style2">Any change in handwriting/ walking</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="walking_handwriting" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">16.</td>
                    <td class="auto-style2">Skin Problem</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="skin_problem" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">17.</td>
                    <td class="auto-style2">Any urinary complaints?</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="urinary_complaints" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">18.</td>
                    <td class="auto-style2">Your blood group is</td>
                    <td class="auto-style60">
                        <asp:TextBox ID="blood_group" runat="server" Width="57px" OnTextChanged="blood_group_TextChanged"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">19.</td>
                    <td class="auto-style2">Hernias/ Hydrocele</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="hernia" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">20.</td>
                    <td class="auto-style2">Any mental worries?</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="mental_illness" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">21.</td>
                    <td class="auto-style2">Fits</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="fits" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">22.</td>
                    <td class="auto-style2">Do you get joint pains/ muscle pains</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="joint_muscle_pain" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">23.</td>
                    <td class="auto-style2">Your work performance level</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="work_performance" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="Steady"></asp:ListItem>
                            <asp:ListItem Value="Gone Down"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">24.</td>
                    <td class="auto-style2">Cancer</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="cancer" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">25.</td>
                    <td class="auto-style2">Abnormal blood tests</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="abnormal_blood_tests" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">26.</td>
                    <td class="auto-style2">Any addiction?<br /> (Tobaco, Smoking Alcohol, Drugs)</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="addiction" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">27.</td>
                    <td class="auto-style2">Any other compaints?</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="complaints" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">28.</td>
                    <td class="auto-style2">Oral/ Nasal Ulcers</td>
                    <td class="auto-style60">
                        <asp:RadioButtonList ID="oral" runat="server" OnSelectedIndexChanged="eye_problem0_SelectedIndexChanged" Width="119px">
                            <asp:ListItem Selected="True" Value="No"></asp:ListItem>
                            <asp:ListItem Value="Yes"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="save_new" runat="server" OnClick="save_new_Click" Text="Save and New" />
                    </td>
                    <td class="auto-style60">
                        <asp:Button ID="update" runat="server" OnClick="update_Click" Text="Update and New" Visible="False" />
                    </td>
                    <td>
                        <asp:Button ID="delete" runat="server" OnClick="delete_Click" Text="Delete and New" Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style60">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
