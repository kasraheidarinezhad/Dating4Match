<%@ Page Language="C#" MasterPageFile="~/HomeIn.master" AutoEventWireup="true" CodeFile="Alert.aspx.cs" Inherits="Alert" Title="Matrimonial Site - Profile Alert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td colspan="3">
                <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 585px">
                    <tr>
                        <td id="rc1" style="height: 26px">
                        </td>
                        <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                You are looking for
                <asp:Label ID="lblsex" runat="server" Font-Bold="True"></asp:Label></td>
                        <td id="rc2" style="height: 26px">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                </td>
        </tr>
        <tr>
            <td colspan="3">
                <table style="width: 556px">
                    <tr>
                        <td style="width: 22px; text-align: right">
                            <asp:CheckBox ID="chkage" runat="server" Checked="True" /></td>
                        <td style="width: 128px; text-align: right">
                            Age Between -&nbsp;</td>
                        <td style="width: 214px; text-align: left">
                            <asp:Label ID="lblagefrom" runat="server" Text=" - "></asp:Label>
                            to &nbsp;<asp:Label ID="lblageto" runat="server" Text=" -"></asp:Label></td>
                        <td style="width: 100px; text-align: right">
                            <asp:CheckBox ID="chklocation" runat="server" Checked="True" /></td>
                        <td style="width: 100px; text-align: right">
                            Location -&nbsp;
                        </td>
                        <td style="width: 100px; text-align: left">
                            <asp:Label ID="lbllocation" runat="server" Text="-"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 22px; height: 18px; text-align: right">
                            <asp:CheckBox ID="chkftype" runat="server" Checked="True" /></td>
                        <td style="width: 128px; height: 18px; text-align: right">
                            Family Type -&nbsp;
                        </td>
                        <td style="width: 214px; height: 18px; text-align: left">
                            &nbsp;<asp:Label ID="lblfamily" runat="server" Text="-"></asp:Label></td>
                        <td style="width: 100px; height: 18px; text-align: right">
                            <asp:CheckBox ID="chkeducation" runat="server" Checked="True" /></td>
                        <td style="width: 100px; height: 18px; text-align: right">
                            Education -&nbsp;
                        </td>
                        <td style="width: 100px; height: 18px; text-align: left">
                            <asp:Label ID="lbleducation" runat="server" Text="-"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 22px; text-align: right">
                            </td>
                        <td style="width: 128px; text-align: right">
                            Height between -&nbsp;
                        </td>
                        <td style="width: 214px; text-align: left">
                            <asp:Label ID="lblheightfrom" runat="server" Text=" - "></asp:Label>
                            to
                            <asp:Label ID="lblheightto" runat="server" Text=" -"></asp:Label>
                            (Optional)</td>
                        <td style="width: 100px; text-align: right">
                            </td>
                        <td style="width: 100px; text-align: right">
                            Mangal -&nbsp;
                        </td>
                        <td style="width: 100px; text-align: left">
                            <asp:Label ID="lblmangal" runat="server" Text="-"></asp:Label>
                            (Optional)</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="btnsearchalert" runat="server" CssClass="btn" Text="Search" OnClick="btnsearchalert_Click" /></td>
        </tr>
        <tr>
            <td colspan="3">
                Profile matches with your -
                <asp:Label ID="lblpmatch" runat="server" CssClass="inputt"></asp:Label></td>
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
            <td colspan="3">
                <asp:DataList ID="listmatch" runat="server" BackColor="White" BorderColor="#CCCCCC"
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="inputt" ForeColor="Black"
                    GridLines="Horizontal" Width="558px" DataKeyField="uid" OnItemCommand="listmatch_ItemCommand">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td rowspan="4" style="width: 100px">
                                    <asp:Image ID="imgsearch" runat="server" Height="133px" ImageUrl='<%#Eval("Image") %>'
                                        Width="103px" /></td>
                                <td colspan="1" style="width: 51px">
                                </td>
                                <td colspan="4">
                                    <asp:Label ID="lblsfname" runat="server" Font-Size="Large" ForeColor="#9B0033" Text='<%# Eval("fname") %>'></asp:Label>
                                    <asp:Label ID="lblslname" runat="server" Font-Size="Large" ForeColor="#9B0033" Text='<%# Eval("lname") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 51px; height: 31px">
                                </td>
                                <td style="width: 124px; height: 31px">
                                    Age -
                                </td>
                                <td style="width: 100px; height: 31px">
                                    <asp:Label ID="lblsage" runat="server" ForeColor="Purple" Text='<%#Eval("Age") %>'></asp:Label></td>
                                <td style="width: 100px; height: 31px">
                                    Education -
                                </td>
                                <td style="width: 100px; height: 31px">
                                    <asp:Label ID="lblseducation" runat="server" ForeColor="Purple" Text='<%#Eval("Education") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 51px">
                                </td>
                                <td style="width: 124px">
                                    Location -
                                </td>
                                <td style="width: 100px">
                                    <asp:Label ID="lblslocation" runat="server" ForeColor="Purple" Text='<%#Eval("City") %>'></asp:Label></td>
                                <td style="width: 100px">
                                    Religion -</td>
                                <td style="width: 100px">
                                    <asp:Label ID="lblsreligion" runat="server" ForeColor="Purple" Text='<%#Eval("Religion") %>'></asp:Label></td>
                            </tr>
                            <tr>
                                <td style="width: 51px">
                                </td>
                                <td style="width: 124px">
                                    Family Type -
                                </td>
                                <td style="width: 100px">
                                    <asp:Label ID="lblsfamily" runat="server" ForeColor="Purple" Text='<%#Eval("familyType") %>'></asp:Label></td>
                                <td style="width: 100px">
                                </td>
                                <td class="details" style="width: 100px">
                                    <asp:LinkButton ID="lnksviewmore" runat="server" CommandName="viewmore" CssClass="form-txt">View Profile..</asp:LinkButton></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:DataList ID="dlPaging" runat="server">
                </asp:DataList></td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;<asp:Panel ID="pnlpaging" runat="server" Height="50px" Visible="False" Width="125px">
                    <table style="width: 576px">
                        <tr>
                            <td style="width: 100px">
                                <asp:Button ID="lbtnFirst" runat="server" CssClass="btn" OnClick="lbtnFirst_Click"
                                    Text="First" /></td>
                            <td style="width: 100px">
                                <asp:Button ID="lbtnPrevious" runat="server" CssClass="btn" OnClick="lbtnPrevious_Click"
                                    Text="Previous" /></td>
                            <td style="width: 100px">
                                <asp:Label ID="lblPageInfo" runat="server" CssClass="inputt"></asp:Label></td>
                            <td style="width: 100px">
                                <asp:Button ID="lbtnNext" runat="server" CssClass="btn" OnClick="lbtnNext_Click"
                                    Text="Next" /></td>
                            <td style="width: 100px">
                                <asp:Button ID="lbtnLast" runat="server" CssClass="btn" OnClick="lbtnLast_Click"
                                    Text="Last" /></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

