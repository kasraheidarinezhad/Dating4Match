<%@ Page Language="C#" MasterPageFile="~/ADMIN/Admin.master" AutoEventWireup="true" CodeFile="AAcount.aspx.cs" Inherits="ADMIN_AAcount" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 784px">
        <tr>
            <td colspan="3" class="inputt" style="height: 64px">
                <strong><span style="font-size: 14pt">
                Welcome To Account Active Panel !!<br />
                    <br />
                </span></strong></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <table>
                    <tr>
                        <td style="width: 100px">
                            <asp:Button ID="btnactive" runat="server" Text="Active Accounts" CssClass="btn" Font-Bold="True" Height="30px" OnClick="btnactive_Click" Width="150px" /></td>
                        <td style="width: 100px">
                            <asp:Button ID="btnactivated" runat="server" Text="Activated Accounts" CssClass="btn" Font-Bold="True" Height="30px" OnClick="btnactivated_Click" Width="150px" /></td>
                        <td style="width: 100px">
                            <asp:Button ID="btncanceledaccount" runat="server" Text="Canceled Accounts" CssClass="btn" Font-Bold="True" Height="30px" OnClick="btncanceledaccount_Click" Width="150px" /></td>
                    </tr>
                </table>
            </td>
            <td style="width: 100px">
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Width="80px" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 18px;">
            </td>
            <td style="width: 100px; height: 18px; text-align: center;">
                                    <asp:Label ID="lblmsg" runat="server" ForeColor="DarkGreen" Font-Bold="True" Font-Size="Small"></asp:Label></td>
            <td style="width: 100px; height: 18px;">
                <asp:Button ID="Button2" runat="server" CssClass="btn" OnClick="Button2_Click" Text="UPDATE" /></td>
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
            </td>
            <td style="width: 100px">
                <asp:Label ID="lblselect" runat="server" Visible="False"></asp:Label>&nbsp;
                            <asp:DropDownList ID="drpaccount" runat="server" Width="206px" Visible="False">
                            </asp:DropDownList>&nbsp;
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px; text-align: center">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 
                            <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" CssClass="btn" Visible="False" /><br />
                &nbsp;
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px; text-align: center;">
                <asp:MultiView ID="MultiView1" runat="server">
                    &nbsp;<asp:View ID="View2" runat="server">
                        <table style="width: 485px">
                            <tr>
                                <td style="width: 54px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="1" style="width: 54px">
                                </td>
                                <td colspan="3">
                                    <asp:DataList ID="listdetail" runat="server" DataKeyField="uid">
                                        <ItemTemplate>
                                            <table>
                                                <tr>
                                                    <td class="inputt" colspan="3">
                                                        <strong>Personal Detail</strong></td>
                                                    <td class="inputt" colspan="2">
                                                        <strong>Address Detail</strong></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px; height: 18px;">
                                                    </td>
                                                    <td style="width: 100px; height: 18px;">
                                                    </td>
                                                    <td style="width: 87px; height: 18px;">
                                                    </td>
                                                    <td style="width: 100px; height: 18px">
                                                    </td>
                                                    <td style="width: 100px; height: 18px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 100px">
                                    Name -</td>
                                                    <td align="left" colspan="2">
                                    <asp:Label ID="lblfname" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                                    <asp:Label ID="lbllname" runat="server" Text='<%#Eval("lname") %>'></asp:Label></td>
                                                    <td align="right" colspan="1">
                                                        Address1 -
                                                    </td>
                                                    <td align="left" colspan="1">
                                    <asp:Label ID="lbladderess" runat="server" Text='<%#Eval("Address1") %>'></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 100px; height: 18px;">
                                    Email -</td>
                                                    <td align="left" colspan="2" style="height: 18px">
                                    <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email") %>'></asp:Label></td>
                                                    <td align="right" colspan="1" style="height: 18px">
                                                        Address2 -
                                                    </td>
                                                    <td align="left" colspan="1" style="height: 18px">
                                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("Address2") %>'></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 100px; height: 18px">
                                    Mobile -</td>
                                                    <td align="left" colspan="2" style="height: 18px">
                                    <asp:Label ID="lblcontact" runat="server" Text='<%#Eval("mobile") %>'></asp:Label></td>
                                                    <td align="right" colspan="1" style="height: 18px">
                                    City -</td>
                                                    <td align="left" colspan="1" style="height: 18px">
                                    <asp:Label ID="lblcity" runat="server" Text='<%#Eval("city") %>'></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 100px; height: 18px">
                                    Contact -</td>
                                                    <td align="left" colspan="2" style="height: 18px">
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Areacode") %>'></asp:Label>
                                     - <asp:Label ID="Label2" runat="server" Text='<%#Eval("Landline") %>'></asp:Label>
                                    </td>
                                                    <td align="right" colspan="1" style="height: 18px">
                                    Pincode -</td>
                                                    <td align="left" colspan="1" style="height: 18px">
                                    <asp:Label ID="lblpincode" runat="server" Text='<%#Eval("pincode") %>'></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 100px; height: 18px;">
                                                        Birth Date -</td>
                                                    <td align="left" colspan="2" style="height: 18px">
                                    <asp:Label ID="lblbirthdate" runat="server" Text='<%#Eval("birthdate") %>'></asp:Label></td>
                                                    <td align="left" colspan="1" style="height: 18px">
                                                    </td>
                                                    <td align="left" colspan="1" style="height: 18px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 100px; height: 18px;">
                                    Age -</td>
                                                    <td align="left" style="height: 18px;" colspan="2">
                                                        <asp:Label ID="lblage" runat="server" Text='<%#Eval("age") %>'></asp:Label></td>
                                                    <td class="inputt" colspan="2" style="height: 18px">
                                                        <strong>Familty Detail</strong></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 100px">
                                    Religion -</td>
                                                    <td align="left" colspan="2">
                                    <asp:Label ID="lblreligion" runat="server" Text='<%#Eval("religion") %>'></asp:Label></td>
                                                    <td align="right" style="width: 100px">
                                                        FatherName -</td>
                                                    <td align="left" style="width: 100px">
                                                        <asp:Label ID="lblfathername" runat="server" Text='<%#Eval("fathername") %>'></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 100px">
                                                        Cast -</td>
                                                    <td align="left" colspan="2">
                                                        <asp:Label ID="lblcast" runat="server" Text='<%#Eval("cast") %>'></asp:Label></td>
                                                    <td align="right" style="width: 100px">
                                                        MotherName -</td>
                                                    <td align="left" style="width: 100px">
                                                        <asp:Label ID="lblmothernAME" runat="server" Text='<%#Eval("mothername") %>'></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td style="width: 87px">
                                                    </td>
                                                    <td style="width: 100px">
                                                    </td>
                                                    <td style="width: 100px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px; height: 18px">
                                                    </td>
                                                    <td colspan="2" style="height: 18px">
                                                    </td>
                                                    <td colspan="1" style="height: 18px">
                                                    </td>
                                                    <td colspan="1" style="height: 18px">
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:DataList></td>
                            </tr>
                            <tr>
                                <td style="width: 54px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px; text-align: left">
                                    <asp:Button ID="Button1" runat="server" Text="Active Account" CssClass="btn" OnClick="Button1_Click" Visible="False" />
                                </td>
                                <td style="width: 100px; text-align: left">
                                    <asp:Button ID="btncancel" runat="server" CssClass="btn" Text="Cancel Account" OnClick="btncancel_Click" Visible="False" /></td>
                            </tr>
                            <tr>
                                <td style="width: 54px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px; text-align: left">
                                    </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="1" style="width: 54px">
                                </td>
                                <td colspan="3">
                                    &nbsp;<br />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 54px; height: 18px">
                                </td>
                                <td style="width: 100px; height: 18px;">
                                </td>
                                <td style="width: 100px; height: 18px; text-align: center;">
                                </td>
                                <td style="width: 100px; height: 18px;">
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView></td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

