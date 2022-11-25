<%@ Page Language="C#" MasterPageFile="~/ADMIN/Admin.master" AutoEventWireup="true" CodeFile="AddAdmin.aspx.cs" Inherits="AddAdmin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>

    <table style="width: 607px" id="TABLE1" onclick="return TABLE1_onclick()">
        <tr>
            <td style="width: 100px; text-align: center;">
                <table style="width: 468px">
                    <tr>
                        <td style="width: 165px">
                            </td>
                        <td style="width: 100px">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD NEW" CausesValidation="False" /></td>
                        <td style="width: 100px">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="VIEW" Width="83px" CausesValidation="False" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table>
                            <tr>
                                <td style="width: 148px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 148px">
                                </td>
                                <td style="width: 100px">
                                    FName</td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtfname" runat="server" BackColor="#E0E0E0"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname"
                                        ErrorMessage="??"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 148px">
                                </td>
                                <td style="width: 100px">
                                    LName</td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtlname" runat="server" BackColor="#E0E0E0"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname"
                                        ErrorMessage="??"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 148px">
                                </td>
                                <td style="width: 100px">
                                    Email</td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtemail" runat="server" BackColor="#E0E0E0"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                                        ErrorMessage="??" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 148px">
                                </td>
                                <td style="width: 100px">
                                    Mobile</td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtmobile" runat="server" BackColor="#E0E0E0"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmobile"
                                        ErrorMessage="??"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 148px">
                                </td>
                                <td style="width: 100px">
                                    Branch</td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtbranch" runat="server" BackColor="#E0E0E0"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtbranch"
                                        ErrorMessage="??"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 148px">
                                </td>
                                <td style="width: 100px">
                                    Code</td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtcode" runat="server" BackColor="#E0E0E0"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcode"
                                        ErrorMessage="??"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 148px">
                                </td>
                                <td style="width: 100px">
                                    Type</td>
                                <td style="width: 100px; text-align: left">
                                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#E0E0E0" Width="50px"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1"
                                        ErrorMessage="???" MaximumValue="2" MinimumValue="1" Type="Integer"></asp:RangeValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 148px">
                                </td>
                                <td style="width: 100px">
                                    Password</td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtpass" runat="server" BackColor="#E0E0E0" TextMode="Password"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpass"
                                        ErrorMessage="??"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 148px">
                                </td>
                                <td style="width: 100px">
                                    Confi-Pass</td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtconpass" runat="server" BackColor="#E0E0E0" TextMode="Password"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtconpass"
                                        ControlToValidate="txtpass" ErrorMessage="??"></asp:CompareValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 148px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 148px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                    <asp:Button ID="btnadd" runat="server" Text="ADD" Width="104px" OnClick="btnadd_Click" /></td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 148px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                    <asp:Label ID="lblmsg" runat="server"></asp:Label></td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <asp:GridView ID="GVAdmin" runat="server" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
                        </asp:GridView>
                    </asp:View>
                </asp:MultiView></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

