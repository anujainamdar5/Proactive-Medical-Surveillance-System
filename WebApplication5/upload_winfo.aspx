<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upload_winfo.aspx.cs" Inherits="WebApplication5.WebForm9" %>

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
        <br />
        Employee List<br />
        Enter path of the .csv file :<asp:TextBox ID="path" runat="server" Width="280px"></asp:TextBox>
        <asp:Button ID="view_the_file" runat="server" OnClick="read_the_file_Click" Text="View the contents of file" />
        <br />
        <br />
        <br />
        Please make sure that the order of columns in the .csv file are as follows:<br />
        Name,Token no, Age, Date of Employment, Materials Handled, Occupation<br />
        <br />
    
    </div>
        <asp:Table ID="Tab" runat="server">
        </asp:Table>
        <br />
        <br />
        <asp:Label ID="status" runat="server" Text="Employee list successfully uploaded"></asp:Label>
        <p>
            &nbsp;</p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload whole database" />
    </form>
</body>
</html>
