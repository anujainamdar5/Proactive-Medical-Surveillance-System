<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload_previos_data.aspx.cs" Inherits="WebApplication5.WebForm10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style1 {
            width: 164px;
        }
        .auto-style2 {
            width: 164px;
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 118px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Date:</td>
                <td>
                    <asp:Label ID="date" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Session Code:</td>
                <td class="auto-style3">
                    <asp:Label ID="scode" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Factory Name:</td>
                <td>
                    <asp:Label ID="fact_name" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Area:</td>
                <td>
                    <asp:Label ID="area" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style4">Enter the path:</td>
                <td>
                    <asp:TextBox ID="path" runat="server"></asp:TextBox>
                    <asp:Button ID="view" runat="server" OnClick="Upload_Click" Text="View the contents of this file" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Table ID="Tab" runat="server">
        </asp:Table>
        <p>
        <asp:Label ID="status" runat="server" Text="Employee list successfully uploaded"></asp:Label>
        </p>
    </form>
</body>
</html>
