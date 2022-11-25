<%@ Page Language="C#" MasterPageFile="~/HomeIn.master" AutoEventWireup="true" CodeFile="Password.aspx.cs" Inherits="Password" Title="Matrimonial Site - Change Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 590px">
        <tr>
            <td colspan="3">
                <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 585px">
                    <tr>
                        <td id="rc1" style="height: 26px">
                        </td>
                        <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                            Change Password</td>
                        <td id="rc2" style="height: 26px">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 100px; height: 9px;">
            </td>
            <td align="left" style="width: 100px; height: 9px;">
                <br />
                <br />
            </td>
            <td style="width: 100px; height: 9px;">
            </td>
        </tr>
        <tr>
            <td align="right">
                Current Password -</td>
            <td align="left" style="width: 100px">
                <asp:TextBox ID="txtcurrentpass" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcurrentpass"
                    ErrorMessage="??"></asp:RequiredFieldValidator></td>
            <td style="width: 100px; color: #3f3f3f">
            </td>
        </tr>
        <tr style="color: #3f3f3f">
            <td align="right">
                New Password -</td>
            <td align="left" style="width: 100px; height: 18px">
                <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnewpass"
                    ErrorMessage="??"></asp:RequiredFieldValidator></td>
            <td style="width: 100px; color: #3f3f3f; height: 18px">
            </td>
        </tr>
        <tr style="color: #3f3f3f">
            <td align="right">
                Confirm - Password -</td>
            <td align="left" style="width: 100px; height: 18px">
                <asp:TextBox ID="txtconfirm" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnewpass"
                    ControlToValidate="txtconfirm" ErrorMessage="??"></asp:CompareValidator></td>
            <td style="width: 100px; height: 18px">
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 100px; height: 18px">
            </td>
            <td align="left" style="width: 100px; height: 18px">
            </td>
            <td style="width: 100px; height: 18px">
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 100px; height: 18px">
            </td>
            <td align="left" style="width: 100px; height: 18px">
                <asp:Button ID="btnchange" runat="server" CssClass="btn" Text="Change Password" Width="135px" OnClick="btnchange_Click" /></td>
            <td style="width: 100px; height: 18px">
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 100px; height: 18px">
            </td>
            <td align="left" style="width: 100px; height: 18px">
                <asp:Label ID="lblmsg" runat="server"></asp:Label></td>
            <td style="width: 100px; height: 18px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 18px">
            </td>
            <td style="width: 100px; height: 18px">
            </td>
            <td style="width: 100px; height: 18px">
            </td>
        </tr>
    </table>
</asp:Content>

