<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="FPassword.aspx.cs" Inherits="FPassword" Title="Matrimonial Site - Forgot Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 590px">
        <tr>
            <td colspan="3">
                <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 585px">
                    <tr>
                        <td id="rc1" style="height: 26px">
                        </td>
                        <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                            &nbsp;PASSWORD RECOVERY FORM</td>
                        <td id="rc2" style="height: 26px">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 154px">
            </td>
            <td align="left" style="width: 100px">
                <br />
                <br />
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 154px" >
                Select Your City -</td>
            <td align="left" style="width: 100px">
                <asp:DropDownList ID="drpCity" runat="server" CssClass="inputt" Width="118px">
                    <asp:ListItem>SELECT</asp:ListItem>
                     <asp:ListItem>Ahmedabad</asp:ListItem>
                                    <asp:ListItem>Anand</asp:ListItem>
                                    <asp:ListItem>Bharuch</asp:ListItem>
                                    <asp:ListItem>Bhavnagar</asp:ListItem>
                                    <asp:ListItem>Bhuj</asp:ListItem>
                                    <asp:ListItem>Gandhinagar</asp:ListItem>
                                    <asp:ListItem>Godhra</asp:ListItem>
                                    <asp:ListItem>Himmatnagar</asp:ListItem>
                                    <asp:ListItem>Jamnagar</asp:ListItem>
                                    <asp:ListItem>Modasa</asp:ListItem>
                                    <asp:ListItem>Mehsana</asp:ListItem>
                                    <asp:ListItem>Patan</asp:ListItem>
                                    <asp:ListItem>Rajkot</asp:ListItem>
                                    <asp:ListItem>Surat</asp:ListItem>
                                    <asp:ListItem>Vadodara</asp:ListItem>   
                                    <asp:ListItem>Vijaynagar</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr style="color: #3f3f3f">
            <td align="right" style="width: 154px" >
                Enter
                Your Email -</td>
            <td align="left" style="width: 100px; height: 18px">
                <asp:TextBox ID="txtemail" runat="server" Width="160px"></asp:TextBox><asp:RegularExpressionValidator
                    ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="??" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
            <td style="width: 100px; color: #3f3f3f; height: 18px">
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 154px; height: 18px">
            </td>
            <td align="left" style="width: 100px; height: 18px">
            </td>
            <td style="width: 100px; height: 18px">
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 154px; height: 18px">
            </td>
            <td align="left" style="width: 100px; height: 18px">
                <asp:Button ID="btncontactus" runat="server" CssClass="btn" OnClick="btncontactus_Click"
                    Text="Send" Width="92px" /></td>
            <td style="width: 100px; height: 18px">
            </td>
        </tr>
        <tr>
            <td style="width: 154px; height: 18px">
            </td>
            <td style="width: 100px; height: 18px">
            </td>
            <td style="width: 100px; height: 18px">
            </td>
        </tr>
        <tr>
            <td style="width: 154px; height: 18px">
            </td>
            <td align="left" colspan="2" style="height: 18px">
                <asp:Label ID="lblmsg" runat="server"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

