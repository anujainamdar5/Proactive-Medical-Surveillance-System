<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="team_edit.aspx.cs" Inherits="WebApplication5.team_edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />

    <style type="text/css">
        .auto-style1 {
            width: 95px;
        }
        .auto-style3 {
            width: 183px;
        }
        .auto-style4 {
            width: 95px;
            height: 26px;
        }
        .auto-style5 {
            width: 183px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
            width: 199px;
        }
        .auto-style8 {
            width: 199px;
        }
        .auto-style9 {
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
        .auto-style10 {
            width: 95px;
            height: 27px;
        }
        .auto-style11 {
            width: 183px;
            height: 27px;
        }
        .auto-style12 {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="view" runat="server" OnClick="view_Click" Text="View Team" CssClass="auto-style9" Width="257px" />
        <asp:Button ID="add" runat="server" OnClick="add_Click" Text="Add new assistant" CssClass="auto-style9" Width="314px" />
        <asp:Button ID="delete" runat="server" OnClick="delete_Click" Text="Delete an assistant" CssClass="auto-style9" Width="275px" />
        <asp:Button ID="edit" runat="server" OnClick="edit_Click" Text="Edit details of an assistant" CssClass="auto-style9" Width="317px" Height="41px" />
    
    </div>
        <p>
            &nbsp;</p>
        <asp:Panel ID="view_pan" runat="server" CssClass="CSSTableGenerator">
            <asp:Table ID="team_view" runat="server" CssClass="auto-style1" BackColor="#33CC33" Width="518px">
            </asp:Table>
        </asp:Panel>
        <asp:Panel ID="add_pan" runat="server">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">Enter name :</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">Contact number :</td>
                    <td>
                        <asp:TextBox ID="number" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">Enter user name :</td>
                    <td>
                        <asp:TextBox ID="uname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">Password :</td>
                    <td>
                        <asp:TextBox ID="pwd" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">Designation:</td>
                    <td>
                        <asp:DropDownList ID="designation" runat="server">
                            <asp:ListItem>--select--</asp:ListItem>
                            <asp:ListItem>Chief Medical Officer</asp:ListItem>
                            <asp:ListItem>Assistant Doctor</asp:ListItem>
                            <asp:ListItem>Nurse</asp:ListItem>
                            <asp:ListItem>Receptionist</asp:ListItem>
                            <asp:ListItem>Data Processor</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="add_member" runat="server" OnClick="Button1_Click" Text="Add" CssClass="auto-style9" Width="150px" />
                        <asp:Button ID="update_mem" runat="server" OnClick="update_mem_Click" Text="Update" CssClass="auto-style9" Width="201px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="del_pan" runat="server">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">Enter name :</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="name0" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Find member" CssClass="auto-style9" Height="46px" Width="179px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">Contact number :</td>
                    <td class="auto-style7">
                        <asp:Label ID="c_no" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">User name :</td>
                    <td class="auto-style8">
                        <asp:Label ID="user" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">Designation:</td>
                    <td class="auto-style8">
                        <asp:Label ID="desig" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="del_mem" runat="server" OnClick="del_mem_Click" Text="Delete" CssClass="auto-style9" Width="172px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    </form>
</body>
</html>
