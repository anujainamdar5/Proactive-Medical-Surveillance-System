<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="MCS_trial.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
    <style type="text/css">


        .auto-style1 {
            text-align: center;
            font-size: large;
            text-decoration: underline;
        }
        .auto-style14 {
            width: 16px;
        }
        .auto-style8 {
            width: 450px;
        }
        .auto-style2 {            font-style: italic;
        }
        .auto-style15 {
            width: 16px;
            height: 23px;
        }
        .auto-style9 {
            width: 450px;
            height: 23px;
        }
        .auto-style22 {
            width: 285px;
        }
        .auto-style23 {
            height: 23px;
            width: 285px;
        }
        .auto-style24 {
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
        .auto-style25 {
            height: 23px;
        }
        </style>
</head>
<body>
    <div class="auto-style1">
    
        REGISTRATION FORM</div>
        <p>
            <em>Enter factory details:</em></p>
        <p>
            &nbsp;</p>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style14">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" Width="86px" CssClass="auto-style24" />
                    </td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">Date:&nbsp; </td>
                    <td class="auto-style8">
                        <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" SelectedDate="10/19/2015 17:07:56"></asp:Calendar>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">Factory Name:&nbsp;</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="factname" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">Factory Area:&nbsp;&nbsp;&nbsp;</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="drop">
                            <asp:ListItem>--select--</asp:ListItem>
                            <asp:ListItem>Aurangabad</asp:ListItem>
                            <asp:ListItem>Jalgaon</asp:ListItem>
                            <asp:ListItem>Jalna</asp:ListItem>
                            <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>Nagar</asp:ListItem>
                            <asp:ListItem>Nashik</asp:ListItem>
                            <asp:ListItem>Pune</asp:ListItem>
                            <asp:ListItem>Satara</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">Factory Address:&nbsp;&nbsp; </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox2" runat="server" Height="37px" TextMode="MultiLine" Width="453px"></asp:TextBox>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style2" colspan="2">Details of person to contact:</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style2" colspan="2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">Name:&nbsp; </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="p_contact" runat="server" MaxLength="20" Width="264px"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" Text="Letters only" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style23">Contact Number:</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="PTCno" runat="server"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" ForeColor="#CC0000" Text="10 digit numbers only" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style23"><em>Enter Session Code:</em></td>
                    <td class="auto-style9">
                        &nbsp;<asp:Label ID="session_code" runat="server"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="generate" runat="server" OnClick="Button1_Click" Text="Generate Code" CssClass="auto-style24" Width="345px" />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style25" colspan="2">Tests to be conducted:</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style25">
                        <asp:CheckBoxList ID="tests" runat="server" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="tests_SelectedIndexChanged">
                            <asp:ListItem Value="History Form"></asp:ListItem>
                            <asp:ListItem Value="Body Measurement"></asp:ListItem>
                            <asp:ListItem Value="General Examination"></asp:ListItem>
                            <asp:ListItem Value="Systemic Examination"></asp:ListItem>
                            <asp:ListItem Value="Investigation"></asp:ListItem>
                            <asp:ListItem Value="Audiometry Test"></asp:ListItem>
                            <asp:ListItem Value="Pulmonary Function Test"></asp:ListItem>
                            <asp:ListItem Value="ECG"></asp:ListItem>
                            <asp:ListItem Value="X-Ray "></asp:ListItem>
                        </asp:CheckBoxList>
                        <br />
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style23">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="btnStartSession" runat="server" style="text-align: right" Text="Start Session" OnClick="btnStartSession_Click" CssClass="auto-style24" Width="168px" />
                        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" CssClass="field"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Logout" Width="102px" CssClass="auto-style24" />
                    </td>
                </tr>
            </table>
            <br />
        </asp:Panel>
    <div>
    
    </div>
    </form>
</body>
</html>
