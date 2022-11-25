<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" MasterPageFile="~/Home.master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="s" runat="server">
    <table>
        <tr>
            <td style="width: 100px">
                <asp:Label ID="lblsearch" runat="server" ForeColor="#004000"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:DataList ID="listsearch" runat="server" Width="558px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnItemCommand="listsearch_ItemCommand" CssClass="inputt">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td rowspan="4" style="width: 100px">
                                    <asp:Image ID="imgsearch" runat="server" Height="133px" ImageUrl='<%#Eval("Image") %>' Width="103px" /></td>
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
                                <td style="width: 100px" class="details">
                                    <asp:LinkButton ID="lnksviewmore" runat="server" CommandName="viewmore" CssClass="form-txt">View Profile..</asp:LinkButton></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                </asp:DataList></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
        </tr>
    </table>

</asp:Content>