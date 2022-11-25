<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="SkAdminPanel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="../CSS/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 89px;
        }
        .style2
        {
            height: 18px;
            width: 89px;
        }
        .style3
        {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="z-index: 100; left: 14px; width: 1139px; position: absolute; top: 15px; text-align: center;">
            <tr>
                <td style="width: 96px">
                </td>
                <td style="width: 100px; text-align: center;" class="name">
                    <span style="font-family: Algerian"><span style="font-size: 48pt">m</span><span style="font-size: 32pt">eera</span><span
                        style="font-size: 48pt">m</span>atrimonial<span style="font-size: 20pt">.com</span></span></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 96px">
                </td>
                <td style="width: 100px; text-align: center;">
                    <span style="font-size: 16pt">WelCome to Administrative Panel</span></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 96px; height: 322px;">
                </td>
                <td style="height: 322px; text-align: center;" colspan="2" valign="top">
                    <table style="width: 509px">
                        <tr>
                            <td class="style1">
                            </td>
                            <td style="width: 111px">
                            </td>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;</td>
                            <td style="width: 111px">
                                &nbsp;</td>
                            <td style="width: 100px">
                                &nbsp;</td>
                            <td style="width: 100px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;</td>
                            <td style="width: 111px">
                                &nbsp;</td>
                            <td style="width: 100px">
                                &nbsp;</td>
                            <td style="width: 100px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style1">
                            </td>
                            <td style="width: 111px" class="style3">
                                Admin UserName :</td>
                            <td style="width: 100px">
                                <asp:TextBox ID="txtusename" runat="server"></asp:TextBox></td>
                            <td style="width: 100px; text-align: left">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusename"
                                    ErrorMessage="??"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td class="style1">
                            </td>
                            <td style="width: 111px" class="style3">
                                Password
                                :</td>
                            <td style="width: 100px">
                                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></td>
                            <td style="width: 100px; text-align: left">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"
                                    ErrorMessage="??"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td class="style2">
                            </td>
                            <td style="width: 111px; height: 18px">
                            </td>
                            <td style="width: 100px; height: 18px">
                                <asp:Button ID="btnlogin" runat="server" Text="Login" Width="60px" OnClick="btnlogin_Click" /></td>
                            <td style="width: 100px; height: 18px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                            </td>
                            <td style="width: 111px">
                            </td>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                            </td>
                            <td style="width: 111px">
                            </td>
                            <td colspan="2" style="text-align: left">
                                <asp:Label ID="lblmsg" runat="server" ForeColor="#C00000"></asp:Label></td>
                        </tr>
                    </table>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
