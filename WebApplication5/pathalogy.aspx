<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pathalogy.aspx.cs" Inherits="WebApplication5.pathalogy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style23 {
            text-align: center;
        }
                
        .auto-style11 {
            font-size: large;
        }
        
        .auto-style19 {
            width: 212px;
            font-size: medium;
            text-decoration: underline;
        }
        
        .auto-style21 {
            width: 285px;
        }
        .auto-style18 {
            width: 212px;
        }
        .auto-style20 {
            text-align: left;
            width: 286px;
        }
        .auto-style22 {
            text-align: left;
        }
        .auto-style14 {
            width: 58px;
            height: 23px;
        }
        .auto-style29 {
            height: 23px;
            width: 318px;
        }
        .auto-style16 {
            height: 23px;
            width: 205px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style30 {
            font-size: larger;
        }
        .auto-style36 {
            width: 64px;
        }
        .auto-style38 {
            width: 86px;
        }
        .auto-style40 {
            width: 64px;
            height: 26px;
        }
        .auto-style41 {
            width: 86px;
            height: 26px;
        }
        .auto-style42 {
            width: 126px;
            height: 26px;
        }
        .auto-style37 {
            height: 23px;
            width: 64px;
        }
        .auto-style39 {
            height: 23px;
            width: 86px;
        }
        .auto-style31 {
            height: 23px;
            width: 126px;
        }
        .auto-style43 {
            height: 23px;
            width: 212px;
        }
        .auto-style44 {
            text-align: left;
            width: 285px;
        }
        .auto-style45 {
            font-size: larger;
            height: 26px;
        }
        .auto-style33 {
            width: 56px;
            height: 23px;
        }
        .auto-style34 {
            width: 81px;
            height: 23px;
        }
        .auto-style27 {
            width: 56px;
        }
        .auto-style26 {
            width: 81px;
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
    
        .auto-style55 {
            text-align: left;
            width: 285px;
            height: 23px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div class="auto-style23">
    
        <span class="auto-style30"><em>Pathology</em></span><em><span class="auto-style30"> Test</span><br class="auto-style30" />
    
        </em>
    
    </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style19">
                    <asp:Button ID="back" runat="server" OnClick="Button3_Click" Text="Back" CssClass="auto-style54" Width="179px" />
                </td>
    
                <td class="auto-style21">
                    <asp:Button ID="home" runat="server" OnClick="Button1_Click" Text="Home" CssClass="auto-style54" Width="160px" />
                </td>
                <td>
                    <asp:Button ID="logout" runat="server" OnClick="Button2_Click" Text="Logout" CssClass="auto-style54" Width="201px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
    
                <td class="auto-style21">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
    
        <span class="auto-style11">
                <td class="auto-style21">Session Details:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">Session Code:</td>
                <td class="auto-style44">
                    <asp:Label ID="session_code" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">Factory Name:</td>
                <td class="auto-style44">
                    <asp:Label ID="fact_name" runat="server"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:Label ID="fact_area" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Count: </td>
                <td class="auto-style44">
                    <asp:Label ID="count" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style44">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style43">Enter Worker&#39;s Token Number:</td>
                <td class="auto-style55">
    
        <span class="auto-style11">
                    <asp:TextBox ID="token_no" runat="server" Width="193px" OnTextChanged="token_no_TextChanged" Visible="False"></asp:TextBox>
        </span>
                </td>
                <td class="auto-style2">
    
        <span class="auto-style11">
                    <asp:Button ID="find_worker" runat="server" OnClick="find_worker_Click" Text="View worker's profile" />
        </span>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style44">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style44">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">
    
        <span class="auto-style11">
                    Worker&#39;s Name:</span></td>
                <td class="auto-style44">
    
        <span class="auto-style11">
                <asp:Label ID="w_name" runat="server"></asp:Label>
        </span>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">
    
        <span class="auto-style11">
                    Sex:</span></td>
                <td class="auto-style44">
    
        <span class="auto-style11">
                <asp:Label ID="w_sex" runat="server"></asp:Label>
        </span>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">
    
        <span class="auto-style11">
                    Age:</span></td>
                <td class="auto-style44">
    
        <span class="auto-style11">
                <asp:Label ID="w_age" runat="server"></asp:Label>
        </span>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </span>
        <table style="width:100%;">
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            </table>
    
    </div>
        <asp:Panel ID="test_panel" runat="server">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style36">Hb%</td>
                    <td class="auto-style38">
                        <asp:TextBox ID="hb" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style36">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style40">RBC </td>
                    <td class="auto-style41">
                        <asp:TextBox ID="rbc" runat="server" OnTextChanged="rbc_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style42">&nbsp;</td>
                    <td class="auto-style42"></td>
                </tr>
                <tr>
                    <td class="auto-style36">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style40">TLC</td>
                    <td class="auto-style41">
                        <asp:TextBox ID="tlc" runat="server" OnTextChanged="tlc_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style42">&nbsp;</td>
                    <td class="auto-style42"></td>
                </tr>
                <tr>
                    <td class="auto-style36">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style36">DLC</td>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style37"></td>
                    <td class="auto-style39">N</td>
                    <td class="auto-style31">
                        <asp:TextBox ID="dlc_n" runat="server" OnTextChanged="dlc_n_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style31">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style36">&nbsp;</td>
                    <td class="auto-style38">L</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="dlc_l" runat="server" OnTextChanged="dlc_l_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style36">&nbsp;</td>
                    <td class="auto-style38">E</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="dlc_e" runat="server" OnTextChanged="dlc_e_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style40"></td>
                    <td class="auto-style41">M</td>
                    <td class="auto-style42">
                        <asp:TextBox ID="dlc_m" runat="server" OnTextChanged="dlc_m_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style42"></td>
                </tr>
                <tr>
                    <td class="auto-style40"></td>
                    <td class="auto-style41">B</td>
                    <td class="auto-style42">
                        <asp:TextBox ID="dlc_b" runat="server" OnTextChanged="dlc_b_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style42"></td>
                </tr>
                <tr>
                    <td class="auto-style36">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style40">Platelets</td>
                    <td class="auto-style41">
                        <asp:TextBox ID="platelets" runat="server" OnTextChanged="platelets_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style45"></td>
                    <td class="auto-style45"></td>
                </tr>
                <tr>
                    <td class="auto-style36">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style36">ESR</td>
                    <td class="auto-style38">
                        <asp:TextBox ID="esr" runat="server" OnTextChanged="esr_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style36">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33"></td>
                    <td class="auto-style34">Urine:</td>
                    <td class="auto-style41"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style42">Sugar</td>
                    <td class="auto-style38">
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
                            <asp:ListItem Selected="True">Absent</asp:ListItem>
                            <asp:ListItem>Present</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style42">Protein</td>
                    <td class="auto-style38">
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged">
                            <asp:ListItem Selected="True">Absent</asp:ListItem>
                            <asp:ListItem>Present</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style26">&nbsp;</td>
                    <td class="auto-style42">pH</td>
                    <td class="auto-style38">
                        <asp:RadioButtonList ID="RadioButtonList4" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList4_SelectedIndexChanged">
                            <asp:ListItem>Alkaline</asp:ListItem>
                            <asp:ListItem Selected="True">Acidic</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style36">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style36">&nbsp;</td>
                    <td class="auto-style38">Advice: </td>
                    <td class="auto-style30">
                        <asp:TextBox ID="advice" runat="server" OnTextChanged="advice_TextChanged" style="height: 22px"></asp:TextBox>
                    </td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style36">&nbsp;</td>
                    <td class="auto-style38">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style36">&nbsp;</td>
                    <td class="auto-style38">
                        <asp:Button ID="save0" runat="server" OnClick="upload_Click" Text="Save and New" Width="124px" />
                    </td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
