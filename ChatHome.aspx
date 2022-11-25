<%@ Page Language="C#" MasterPageFile="~/Chat.master" AutoEventWireup="true" CodeFile="ChatHome.aspx.cs" Inherits="ChatHome" Title="Online Chat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 136px; height: 16px">
            </td>
            <td style="width: 100px; height: 16px">
            </td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
        <tr>
            <td style="width: 136px; height: 39px">
            </td>
            <td style="width: 100px; height: 39px">
                <iframe frameborder="no" height="310" scrolling="no" src="Msg.aspx" style="width: 512px"
                    width="500"></iframe>
            </td>
            <td style="width: 100px; height: 39px">
            </td>
        </tr>
        <tr>
            <td style="width: 136px">
            </td>
            <td style="width: 100px">
                <table>
                    <tr>
                        <td >
                        </td>
                        <td style="width: 100px">
                <asp:TextBox ID="txtsend" runat="server" Height="50px" TextMode="MultiLine" Width="392px"></asp:TextBox></td>
                        <td style="width: 100px">
                <asp:Button ID="btnsend" runat="server"  Text="SEND" CssClass="btn" Font-Bold="False" Font-Size="Large" Height="56px" OnClick="btnsend_Click" Width="96px" /></td>
                    </tr>
                </table>
            </td>
            <td style="width: 100px">
                </td>
        </tr>
        <tr>
            <td style="width: 136px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

