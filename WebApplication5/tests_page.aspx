<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tests_page.aspx.cs" Inherits="WebApplication5.tests_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="StyleSheet1.css" type="text/css" />
    <style type="text/css">

        .auto-style43 {
            width: 182px;
        }
        .auto-style47 {
            text-align: center;
            width: 396px;
        }
        .auto-style48 {
            width: 182px;
            height: 23px;
        }
        .auto-style49 {
            text-align: center;
            width: 396px;
            height: 23px;
        }
        .auto-style35 {
            height: 23px;
        }
        .auto-style50 {
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
        .auto-style51 {
            width: 182px;
            height: 22px;
        }
        .auto-style52 {
            text-align: center;
            width: 396px;
            height: 22px;
        }
        .auto-style53 {
            height: 22px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="tests_p" runat="server">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style48">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back" CssClass="btn" />
                    </td>
                    <td class="auto-style49">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Home" CssClass="auto-style50" Width="231px" />
                    </td>
                    <td class="auto-style35">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" CssClass="auto-style50" Width="211px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td class="auto-style47">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td class="auto-style47">
                        <asp:HyperLink ID="history" runat="server" NavigateUrl="~/history.aspx">History Form</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td class="auto-style47">
                        <asp:HyperLink ID="bm" runat="server" NavigateUrl="~/body_measurements.aspx">Body Measurements</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style48"></td>
                    <td class="auto-style49">
                        <asp:HyperLink ID="gm" runat="server" NavigateUrl="~/general_exam.aspx">General Examination</asp:HyperLink>
                    </td>
                    <td class="auto-style35"></td>
                </tr>
                <tr>
                    <td class="auto-style51"></td>
                    <td class="auto-style52">
                        <asp:HyperLink ID="vt" runat="server" NavigateUrl="~/wvision.aspx">Vision Test</asp:HyperLink>
                    </td>
                    <td class="auto-style53"></td>
                </tr>
                <tr>
                    <td class="auto-style51">&nbsp;</td>
                    <td class="auto-style52">
                        <asp:HyperLink ID="pft" runat="server" NavigateUrl="~/pftest.aspx">Pulmonary Function Test</asp:HyperLink>
                    </td>
                    <td class="auto-style53">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style51"></td>
                    <td class="auto-style52">
                        <asp:HyperLink ID="xray" runat="server" NavigateUrl="~/xray.aspx">X-ray </asp:HyperLink>
                    </td>
                    <td class="auto-style53"></td>
                </tr>
                <tr>
                    <td class="auto-style51">&nbsp;</td>
                    <td class="auto-style52">
                        <asp:HyperLink ID="systemic_exam" runat="server" NavigateUrl="~/systemic_exam.aspx">Systemic Examination</asp:HyperLink>
                    </td>
                    <td class="auto-style53">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style51">&nbsp;</td>
                    <td class="auto-style52">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/pathalogy.aspx">Pathology</asp:HyperLink>
                    </td>
                    <td class="auto-style53">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style51">&nbsp;</td>
                    <td class="auto-style52">
                        <asp:HyperLink runat="server" NavigateUrl="~/investigation.aspx">Investigation</asp:HyperLink>
                    </td>
                    <td class="auto-style53">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td class="auto-style47">
                        <asp:HyperLink ID="ad" runat="server" NavigateUrl="~/advise.aspx">Advice</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td class="auto-style47">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ecg.aspx">ECG</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style43">&nbsp;</td>
                    <td class="auto-style47">
                        <asp:HyperLink ID="HyperLink4" runat="server">Audiometry</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
