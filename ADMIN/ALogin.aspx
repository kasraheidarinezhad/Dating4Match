<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ALogin.aspx.cs" Inherits="ADMIN_ALogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            text-align: right;
            color: #9B0033;
        }
        .style2
        {
            text-align: left;
        }
        .style3
        {
            color: #9B0033;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="head">
    <span style="font-family: Algerian"><span style="font-size: 48pt" class="style3">m</span><span 
            style="font-size: 32pt" class="style3">eera</span><span
                        style="font-size: 48pt" class="style3"> m</span><span 
            style="font-size: 32pt" class="style3">atrimonial.</span><span 
            style="font-size: 20pt" class="style3">com</span></span>
    </div>
    <div id="main">
    <div id="login">
        <table class="tbl">
            <tr>
                <td class="tblhead" colspan="2">
                    ADMIN LOGIN</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    UserName :
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Password :
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="btnlogin" runat="server" CssClass="btn" Text="Login" 
                        onclick="btnlogin_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: left">
                    <asp:Label ID="lbl" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="text-align: left">
                    &nbsp;</td>
            </tr>
        </table>
    </div></div>
    </form>
</body>
</html>
