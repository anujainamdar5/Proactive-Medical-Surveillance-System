<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="winfo.aspx.cs" Inherits="MCS_trial.winfo" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
    <style type="text/css">

        .auto-style11 {
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
        }
        .auto-style24 {
            width: 506px;
            height: 23px;
        }
        .auto-style25 {
            height: 23px;
            width: 190px;
        }
        .auto-style28 {
            height: 23px;
            width: 849px;
        }
        .auto-style29 {
            width: 849px;
        }
        .auto-style30 {
            width: 190px;
        }
        .auto-style31 {
            width: 205px;
        }
        .auto-style32 {
            height: 23px;
            width: 205px;
        }
        .auto-style33 {
            width: 506px;
        }
        .auto-style34 {
            width: 230px;
            height: 23px;
        }
        .auto-style35 {
            width: 230px;
        }
        .auto-style36 {
            height: 23px;
        }
        .auto-style37 {
            text-align: center;
            font-size: large;
        }
        .auto-style38 {
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
    <div>
    
        <div class="auto-style37">
            <em>Worker&#39;s Information:<br/>
        </em>
        </div>
        <table >
            <tr>
                <td class="auto-style19">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back" CssClass="auto-style38" Width="138px" />
                </td>
    
                <td class="auto-style21">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Home" CssClass="auto-style38" Width="167px" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" CssClass="auto-style38" Width="179px" />
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
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">Session Code:</td>
                <td class="auto-style20">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">Factory Name:</td>
                <td class="auto-style20">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Count: </td>
                <td class="auto-style20">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </span>
        </table>
        
    
    </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style24"></td>
                <td class="auto-style28"></td>
                <td class="auto-style32">
                    &nbsp;</td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style36" colspan="2">&nbsp;Please enter the following details:</td>
                <td class="auto-style28"></td>
                <td class="auto-style32"></td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">Name:</td>
                <td class="auto-style29">
                    <asp:TextBox ID="wname" runat="server" Width="222px"></asp:TextBox>
                        <asp:Label ID="error_name" runat="server" ForeColor="#CC0000" Text="Alphabets only"></asp:Label>
                    </td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">Token Number:&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="auto-style29">
                    <asp:TextBox ID="token" runat="server" Width="152px"></asp:TextBox>
                        <asp:Label ID="error_token" runat="server" ForeColor="#CC0000" Text="Invalid token number"></asp:Label>
                    </td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">Age:&nbsp;&nbsp;</td>
                <td class="auto-style29">
                        <asp:TextBox ID="age" runat="server" Width="23px"></asp:TextBox>
                    </td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">Sex:</td>
                <td class="auto-style29">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="124px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">Date of employment:</td>
                <td class="auto-style29">
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">Materials handleld:&nbsp;&nbsp;</td>
                <td class="auto-style29">
                    <asp:TextBox ID="mathandled" runat="server" Width="186px"></asp:TextBox>
                </td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">Occupation:&nbsp; </td>
                <td class="auto-style29">
                    <asp:TextBox ID="woccupation" runat="server" Width="190px"></asp:TextBox>
                </td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style29">
                        <asp:Button ID="save" runat="server" OnClick="save_Click" Text="Save and new" Width="175px" CssClass="auto-style38" Height="46px" />
                    </td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style29">
    
        <asp:Label ID="Label5" runat="server" ForeColor="#009933" Text="Entry successfully saved"></asp:Label>
    
                </td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
