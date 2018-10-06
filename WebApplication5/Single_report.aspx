<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Single_report.aspx.cs" Inherits="WebApplication5.Single_report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 142px;
        }
        .auto-style3 {
            width: 201px;
        }
        .auto-style4 {
            width: 144px;
        }
        .auto-style7 {
            width: 146px;
        }
        .auto-style8 {
            width: 146px;
            height: 23px;
        }
        .auto-style9 {
            width: 198px;
            text-align: left;
            height: 23px;
        }
        .auto-style10 {
            height: 23px;
        }
        .auto-style11 {
            width: 146px;
            text-align: left;
        }
        .auto-style12 {
            width: 191px;
        }
        .auto-style13 {
            height: 23px;
            text-align: center;
        }
        .auto-style14 {
            width: 160px;
        }
        .auto-style16 {
            width: 195px;
            text-align: left;
        }
        .auto-style17 {
            width: 195px;
            text-align: left;
            height: 23px;
        }
        .auto-style18 {
            width: 151px;
        }
        .auto-style23 {
            width: 40px;
            text-align: center;
        }
        .auto-style24 {
            width: 38px;
            text-align: center;
        }
        .auto-style25 {
            width: 47px;
            text-align: center;
        }
        .auto-style26 {
            width: 38px;
        }
        .auto-style28 {
            width: 27px;
        }
        .auto-style30 {
            width: 34px;
        }
        .auto-style31 {
            width: 32px;
        }
        .auto-style32 {
            width: 34px;
            text-align: center;
        }
        .auto-style33 {
            width: 27px;
            text-align: center;
        }
        .auto-style34 {
            width: 32px;
            text-align: center;
        }
        .auto-style35 {
            width: 191px;
            height: 23px;
        }
        .auto-style36 {
            width: 151px;
            height: 23px;
        }
        .auto-style37 {
            width: 100%;
        }
        .auto-style38 {
            width: 385%;
        }
        .auto-style39 {
            width: 147px;
            height: 23px;
        }
        .auto-style40 {
            width: 147px;
        }
        .auto-style41 {
            width: 198px;
            text-align: left;
        }
        .auto-style42 {
            text-align: center;
            font-size: large;
        }
        .auto-style43 {
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
    <div class="auto-style42">
    
        Final Report</div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Token Number:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="token_no" runat="server" Width="167px"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="token_error"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Report" CssClass="auto-style43" Width="174px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style37">
            <tr>
                <td class="auto-style1" colspan="4">DR. PRADEEP INAMDAR<br />
                    Certifying Surgeon for Factories, Under Factories Act 1948<br />
                    <br />
                    Medical Check-Up Report</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">Date</td>
                <td class="auto-style16">
                    <asp:Label ID="date" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">Area</td>
                <td class="auto-style16">
                    <asp:Label ID="area" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">Factory</td>
                <td class="auto-style16">
                    <asp:Label ID="Fact_name" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">Token Number</td>
                <td class="auto-style16">
                    <asp:Label ID="token" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">Name</td>
                <td class="auto-style16">
                    <asp:Label ID="name" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">Age (in years)</td>
                <td class="auto-style16">
                    <asp:Label ID="age" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">Sex</td>
                <td class="auto-style16">
                    <asp:Label ID="sex" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">Parameter</td>
                <td class="auto-style16">
                    Observed Value</td>
                <td class="auto-style41">
                    Normal Value</td>
                <td>Deduction</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">Height (in cm)</td>
                <td class="auto-style16">
                    <asp:Label ID="height" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">Weight (in kg)</td>
                <td class="auto-style16">
                    <asp:Label ID="weight" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">BMI</td>
                <td class="auto-style16">
                    <asp:Label ID="bmi" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    19 to 25</td>
                <td>
                    <asp:Label ID="bmi_d" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">Abdomen</td>
                <td class="auto-style17">
                    <asp:Label ID="abdomen" runat="server"></asp:Label>
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">Chest</td>
                <td class="auto-style16">
                    <asp:Label ID="chest" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">Waist Chest Ratio</td>
                <td class="auto-style16">
                    <asp:Label ID="wcr" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    <asp:Label ID="wcr_satus" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style39"></td>
                <td class="auto-style17"></td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style40">Pulse</td>
                <td class="auto-style16">
                    <asp:Label ID="pulse" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    60 to 80 per minute</td>
                <td>
                    <asp:Label ID="pulse_d" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style40">B.P.</td>
                <td class="auto-style16">
                    <asp:Label ID="bp" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    140/100 mm Hg</td>
                <td>
                    <asp:Label ID="bp_d" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">Respiratory Rate</td>
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
                <td class="auto-style40">Skin</td>
                <td class="auto-style16">
                    <asp:Label ID="skin" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    Normal Texture</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">Cynosis</td>
                <td class="auto-style16">
                    <asp:Label ID="cynosis" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    Nil</td>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style40">Jaundice</td>
                <td class="auto-style16">
                    <asp:Label ID="jaundice" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    Nil</td>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style40">ENT</td>
                <td class="auto-style16">
                    <asp:Label ID="ent" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style40">Mouth Cavity</td>
                <td class="auto-style16">
                    <asp:Label ID="mouth_cavity" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    Nil</td>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style40">Neck</td>
                <td class="auto-style16">
                    <asp:Label ID="neck" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style40">Gait</td>
                <td class="auto-style16">
                    <asp:Label ID="gait" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    Walks in a straight line</td>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style40">Tremors</td>
                <td class="auto-style16">
                    <asp:Label ID="tremors" runat="server"></asp:Label>
                </td>
                <td class="auto-style41">
                    Nil</td>
                <td>
                    <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">Distant Vision</td>
                <td class="auto-style16">
                    &nbsp;6/<asp:Label ID="dv" runat="server" Text="dv"></asp:Label>
                &nbsp;(left)&nbsp;&nbsp;&nbsp;&nbsp; 6/<asp:Label ID="dv0" runat="server" Text="dv"></asp:Label>
                &nbsp;(right)</td>
                <td class="auto-style41">
                    6/6&nbsp;&nbsp; 6/6</td>
                <td>
                    <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style40">Near Vision</td>
                <td class="auto-style16">
                    N/<asp:Label ID="nv" runat="server" Text="nv"></asp:Label>
                &nbsp;(left)&nbsp;&nbsp;&nbsp; N/<asp:Label ID="nv0" runat="server" Text="nv"></asp:Label>
                &nbsp;(right)</td>
                <td class="auto-style41">
                    N/6&nbsp; N/6</td>
                <td>
                    <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style40">Color Vision</td>
                <td class="auto-style16">
                    <asp:Label ID="cv" runat="server" Text="cv"></asp:Label>
                </td>
                <td class="auto-style41">
                    Can read red, green, yellow<br />
                    Grade III</td>
                <td>
                    <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
                <td class="auto-style41">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40">
    <table class="auto-style38">
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
                <asp:Label ID="advice" runat="server"></asp:Label>
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
                <asp:Label ID="fitness" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
                </td>
            </tr>
            </table>
        <asp:Panel ID="Panel1" runat="server">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1" colspan="12">Pathology Report</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style12" colspan="5">&nbsp;</td>
                    <td class="auto-style18" colspan="5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">Urine pH</td>
                    <td class="auto-style12" colspan="5">
                        <asp:Label ID="ph" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style18" colspan="5">Acidic</td>
                    <td>
                        <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Urine Protein</td>
                    <td class="auto-style12" colspan="5">
                        <asp:Label ID="protein" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style18" colspan="5">Nil</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Urine Sugar</td>
                    <td class="auto-style12" colspan="5">
                        <asp:Label ID="sugar" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style18" colspan="5">Nil</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Hb%</td>
                    <td class="auto-style12" colspan="5">
                        <asp:Label ID="hb" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style18" colspan="5">
                        <asp:Label ID="hb_range" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">RBC</td>
                    <td class="auto-style12" colspan="5">
                        <asp:Label ID="rbc" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style18" colspan="5">
                        <asp:Label ID="rbc_range" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">TLC</td>
                    <td class="auto-style12" colspan="5">
                        <asp:Label ID="tlc" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style18" colspan="5">4,000-11,000 cumm</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" rowspan="3">DLC</td>
                </tr>
                <tr>
                    <td class="auto-style24">N</td>
                    <td class="auto-style25">L</td>
                    <td class="auto-style24">E</td>
                    <td class="auto-style23">M</td>
                    <td class="auto-style23">B</td>
                    <td class="auto-style24">N</td>
                    <td class="auto-style34">L</td>
                    <td class="auto-style33">E</td>
                    <td class="auto-style24">M</td>
                    <td class="auto-style32">B</td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">
                        <asp:Label ID="dlc_n" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style25">
                        <asp:Label ID="dlc_l" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style24">
                        <asp:Label ID="dlc_e" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style23">
                        <asp:Label ID="dlc_m" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style23">
                        <asp:Label ID="dlc_b" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style26">40 -75%</td>
                    <td class="auto-style31">20 - 40%</td>
                    <td class="auto-style28">2 - 6%</td>
                    <td class="auto-style26">2 - 10%</td>
                    <td class="auto-style30">0 - 1%</td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Platelets</td>
                    <td class="auto-style35" colspan="5">
                        <asp:Label ID="platelets" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style36" colspan="5">1.5</td>
                    <td class="auto-style10">
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">ESR</td>
                    <td class="auto-style12" colspan="5">
                        <asp:Label ID="esr" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style18" colspan="5">0 - 8 mm at 1 hr</td>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style12" colspan="5">&nbsp;</td>
                    <td class="auto-style18" colspan="5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    </form>
    </body>
</html>
