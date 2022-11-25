<%@ Page Language="C#" MasterPageFile="~/HomeIn.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contactus" Title="Matrimonial Site - Contact Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 590px">
        <tr>
            <td colspan="3">
                <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 585px">
                    <tr>
                        <td id="rc1" style="height: 26px">
                        </td>
                        <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                            CONTACT US</td>
                        <td id="rc2" style="height: 26px">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 100px">
                Your good Name -</td>
            <td align="left" style="width: 100px">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="??" ControlToValidate="txtname"></asp:RequiredFieldValidator></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 100px; height: 18px">
                Your Email -</td>
            <td align="left" style="width: 100px; height: 18px">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="??" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
            <td style="width: 100px; height: 18px">
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 100px; height: 18px">
                Contact No -</td>
            <td align="left" style="width: 100px; height: 18px">
                <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="??" ControlToValidate="txtmobile"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="??" ControlToValidate="txtmobile" MaximumValue="9999999999" MinimumValue="1000000000" Type="Double"></asp:RangeValidator></td>
            <td style="width: 100px; height: 18px">
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 100px; height: 18px">
                Query/Suggestion -</td>
            <td align="left" style="width: 100px; height: 18px">
                <asp:TextBox ID="txtmessage" runat="server" Height="61px" TextMode="MultiLine" Width="219px"></asp:TextBox></td>
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
                <asp:Button ID="btncontactus" runat="server" CssClass="btn" Text="Submit" Width="92px" OnClick="btncontactus_Click" />
                <asp:Label ID="lblstatus" runat="server"></asp:Label></td>
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

