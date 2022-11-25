<%@ Page Language="C#" MasterPageFile="~/ADMIN/Admin.master" AutoEventWireup="true" CodeFile="Password.aspx.cs" Inherits="ADMIN_Password" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td class="inputt" colspan="3" style="height: 25px">
                <strong><span style="font-size: 14pt">Change Password</span></strong></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                New Password</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpass"
                    ErrorMessage="??"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Confi - Pass</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtcpass" runat="server" TextMode="Password"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass"
                    ControlToValidate="txtcpass" ErrorMessage="??"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="btnchange" runat="server" CssClass="btn" Text="Change" Width="82px" /></td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

