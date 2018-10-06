<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="WebApplication5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />

    <style type="text/css">
        .auto-style1 {
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
    
        <br />
        <br />
                    <asp:Button ID="sas" runat="server" OnClick="sas_Click" Text="Schedule a Session" Width="223px" CssClass="auto-style1" />
                    <asp:Button ID="sns" runat="server" OnClick="sns_Click" Text="Start New Session" Width="220px" CssClass="auto-style1" />
                    <asp:Button ID="psd" runat="server" OnClick="psd_Click" Text="Previous Session Detail" Width="265px" CssClass="auto-style1" />
                <asp:Button ID="Button1" runat="server" Text="Schedule" Width="131px" OnClick="Button1_Click2" CssClass="auto-style1" />
        <asp:Button ID="Button2" runat="server" Text=" History" OnClick="Button2_Click" Width="102px" CssClass="auto-style1" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Enter Record" Width="161px" CssClass="auto-style1" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="User Settings" Width="191px" CssClass="auto-style1" />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Logout" CssClass="auto-style1" Width="155px" />
    
    </div>
        <br />
        <asp:Panel ID="upcomig" runat="server">
            <br />
            Upcoming check ups<br />
            <br />
            <asp:Table ID="Table2" runat="server" GridLines="Both">
            </asp:Table>
        </asp:Panel>
        <br />
        <asp:Panel ID="hist" runat="server">
            <asp:Label ID="Label2" runat="server" Text="List of recent check ups" CssClass="content"></asp:Label>
            <br />
            <br />
            <asp:Table ID="Table3" runat="server" GridLines="Both">
            </asp:Table>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <asp:Calendar ID="Calendar1" runat="server" Visible="False"></asp:Calendar>
    </form>
</body>
</html>
