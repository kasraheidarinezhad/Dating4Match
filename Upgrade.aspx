<%@ Page Title="" Language="C#" MasterPageFile="~/HomeIn.master" AutoEventWireup="true" CodeFile="Upgrade.aspx.cs" Inherits="Upgrade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="font-weight: 700; font-size: x-large">
            Please, fillup Education, Personal and Other detail for upgrad your account.</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table style="width: 476px">
                <tr>
                    <td style="text-align: left">
                        1.
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Font-Bold="True"
                    Font-Size="11pt" ForeColor="DarkRed" PostBackUrl="~/UserProfile.aspx">Personal</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        2.
                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" Font-Bold="True"
                    Font-Size="11pt" ForeColor="DarkRed" 
                            PostBackUrl="~/UserProfile.aspx?edit=education">Educational</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        3.
                            <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" Font-Bold="True"
                    Font-Size="11pt" ForeColor="DarkRed" PostBackUrl="~/UserProfile.aspx?edit=other">Other </asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left">
                            <asp:Button ID="btnupgrade" runat="server" CssClass="btn" Enabled="False" 
                                Font-Bold="True" Font-Size="Medium" Height="48px" OnClick="btnupgrade_Click" 
                                Text="Upgrade Now" Width="144px" />
                        </td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

