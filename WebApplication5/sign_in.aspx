<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_in.aspx.cs" Inherits="WebApplication5.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="StyleSheet1.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 223px;
        }
        .auto-style6 {
            height: 23px;
            width: 223px;
        }
        .auto-style7 {
            width: 163px;
            text-align: center;
        }
        .auto-style8 {
            height: 23px;
            width: 163px;
            text-align: center;
        }
        .auto-style9 {
            width: 204px;
            text-align: center;
        }
        .auto-style10 {
            height: 23px;
            width: 204px;
            text-align: center;
        }
        .auto-style11 {
            width: 133px;
        }
        .auto-style12 {
            height: 23px;
            width: 133px;
        }
        .auto-style13 {
            text-align: center;
            color: #003366;
        }
        .auto-style14 {
            text-align: center;
        }
      
    </style>
</head>
<body style="height: 348px">
    <form id="form1" runat="server">
    <div class="auto-style14">
    
        Medical Check-up data storage and data analysis system
    
    </div>
        <p class="auto-style14">
            SIM&#39;S PROACTIVE MEDICAL SURVILLANCE SYSTEM<o:p></o:p></p>
        <p class="auto-style13">
            <asp:Image ID="Image1" runat="server" CssClass="auto-style14" Height="261px" ImageUrl="~/stock-vector-illustration-of-a-team-of-doctors-demonstrating-unity-97065179.jpg" Width="286px" />
        </p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                        <asp:Label ID="uadmin" runat="server" Text="MASTER LOGIN :"></asp:Label>
                        </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">
                        <asp:Label ID="doclog" runat="server" Text="DOCTOR LOGIN:"></asp:Label>
                        </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">Username:</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style10">Select Test Station</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style8">
                        <asp:TextBox ID="uname" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style10">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>--select--</asp:ListItem>
                            <asp:ListItem>Workers Information</asp:ListItem>
                            <asp:ListItem>Body Measurements</asp:ListItem>
                            <asp:ListItem>Vision Test</asp:ListItem>
                            <asp:ListItem>General Examination</asp:ListItem>
                            <asp:ListItem>Advise</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                        <asp:Label ID="upass" runat="server" Text="PASSWORD:"></asp:Label>
                        </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">
                        <asp:Label ID="scode" runat="server" Text="SESSION CODE:"></asp:Label>
                        </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7"><asp:TextBox ID="adpass" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">
                        <asp:TextBox ID="sdoclog" runat="server" OnTextChanged="sdoclog_TextChanged"></asp:TextBox>
                        </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                        <asp:Label ID="error" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                        </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">
                        <asp:Label ID="Label1" runat="server" Text="PASSWORD:"></asp:Label>
                        </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9"><asp:TextBox ID="docpass" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">
                        <asp:Label ID="error1" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                        <asp:Button ID="si" runat="server" OnClick="si_Click" Text="Sign In" />
                    </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">
                        <asp:Button ID="dsi" runat="server" Text="Sign In" OnClick="dsi_Click" />
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <p>
            <asp:Chart ID="Chart1" runat="server" OnLoad="Chart1_Load">
                <Series>
                    <asp:Series Name="Series1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </p>
    </form>
</body>
</html>
