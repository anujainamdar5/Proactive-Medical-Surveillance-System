<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="emp_list.aspx.cs" Inherits="WebApplication5.emp_list" %>

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
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Workers List</div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Date:</td>
                <td>
                    <asp:Label ID="date" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Session Code:</td>
                <td class="auto-style3">
                    <asp:Label ID="scode" runat="server"></asp:Label>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">Factory Name:</td>
                <td>
                    <asp:Label ID="fact_name" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Area:</td>
                <td>
                    <asp:Label ID="area" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Total Number of Workers:</td>
                <td>
                    <asp:Label ID="w_count" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div class="auto-style4">
        <asp:Table ID="Table1" runat="server">
        </asp:Table>
        </div>
    </form>
</body>
</html>
