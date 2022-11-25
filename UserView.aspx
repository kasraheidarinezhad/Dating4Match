<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="UserView.aspx.cs" Title="Matrimonial Site - User Profile" Inherits="User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px" valign="top" rowspan="3">
                <table>
                    <tr>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="border-left-color: #003300; border-bottom-color: #003300; width: 100px;
                            border-top-color: #003300; border-right-color: #003300" align="center">
                            <asp:Label ID="lblname" runat="server" Font-Bold="True" ForeColor="#9B0033"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; border-right: gray thick ridge; border-top: gray thick ridge; border-left: gray thick ridge; border-bottom: gray thick ridge;">
                <asp:Image ID="imguser" runat="server" Height="121px" Width="94px" /></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: center;" bgcolor="#ffe8ff">
                            <asp:LinkButton ID="lnkpersonal" runat="server" OnClick="lnkpersonal_Click" CssClass="inputtt">Basic Detail</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: center;" bgcolor="#ffe8ff">
                            <asp:LinkButton ID="lnkaddress" runat="server"  CssClass="inputtt" PostBackUrl="~/Registration.aspx">Address Detail</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: center;" bgcolor="#ffe8ff">
                            <asp:LinkButton ID="lnkmsg" runat="server"  CssClass="inputtt" PostBackUrl="~/Registration.aspx">Send Message</asp:LinkButton></td>
                    </tr>
                </table>
            </td>
            <td colspan="3" rowspan="3" style="width: 562px">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table style="width: 531px">
                            <tr>
                                <td style="width: 100px; height: 37px">
                                    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 585px">
                                        <tr>
                                            <td id="rc1" style="width: 8px; height: 26px">
                                            </td>
                                            <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                                                PERSONAL DETAIL</td>
                                            <td id="rc2" style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr >
                                <td align="left" >
                                    <table style="height: 360px">
                                        <tr>
                                            <td align="left" style="width: 111px">
                                                <asp:Label ID="Label1" runat="server" Text="First Name" Font-Bold="True"></asp:Label></td>
                                            <td align="left" style="width: 150px" >
                                                :&nbsp;
                                                <asp:Label ID="lblfnale" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label></td>
                                            <td style="width: 270px; text-align: left">
                                                <strong><span style="font-size: 12pt; color: darkgreen">100% Totally Free Serveice</span></strong></td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 111px">
                                                <asp:Label ID="Label3" runat="server" Text="Middle Name" Width="85px" Font-Bold="True"></asp:Label></td>
                                            <td align="left" style="width: 150px">
                                                :&nbsp;
                                                <asp:Label ID="lblmname" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label></td>
                                            <td align="left" rowspan="8" style="width: 270px; color: #cd3164;" valign="top">
                                                <table style="width: 248px; height: 144px">
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td align="right">
                                                            <asp:Image ID="Image3" runat="server" Height="16px" ImageUrl="~/img/5.jpg" Width="16px" /></td>
                                                        <td align="left">
                                                            <strong>&nbsp;- Search Options Free</strong></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 8px">
                                                        </td>
                                                        <td align="right">
                                                            <asp:Image ID="Image2" runat="server" Height="16px" ImageUrl="~/img/5.jpg" Width="16px" /></td>
                                                        <td align="left">
                                                            <strong>&nbsp;- Contact Members&nbsp;Free</strong></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 8px">
                                                        </td>
                                                        <td align="right">
                                                            <asp:Image ID="Image4" runat="server" Height="16px" ImageUrl="~/img/5.jpg" Width="16px" /></td>
                                                        <td align="left">
                                                            <strong>&nbsp;- View Contact Details Free</strong></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 8px">
                                                        </td>
                                                        <td align="right">
                                                            <asp:Image ID="Image5" runat="server" Height="16px" ImageUrl="~/img/5.jpg" Width="16px" /></td>
                                                        <td align="left">
                                                            &nbsp;<strong>- Send Messages Free</strong></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 8px">
                                                        </td>
                                                        <td align="right">
                                                            <asp:Image ID="Image6" runat="server" Height="16px" ImageUrl="~/img/5.jpg" Width="16px" /></td>
                                                        <td align="left">
                                                            &nbsp;<strong>- Get Profile Alert Free</strong></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 8px">
                                                        </td>
                                                        <td style="width: 8px">
                                                        </td>
                                                        <td style="width: 100px">
                                                        </td>
                                                    </tr>
                                                </table>
                                                <br />
                                                <strong><span style="font-size: 11pt">For get Other Deatil and Everythings.<asp:ImageButton
                                                    ID="ImageButton1" runat="server" ImageUrl="~/img/skvivah_regi.gif" PostBackUrl="~/Registration.aspx" /></span></strong></td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 111px" >
                                                <asp:Label ID="Label2" runat="server" Text=" Last Name" Font-Bold="True"></asp:Label>
                                            </td>
                                            <td align="left" style="width: 150px" >
                                                :&nbsp;
                                                <asp:Label ID="lbllnam" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 111px" >
                                                <asp:Label ID="Label4" runat="server" Text="Gender" Font-Bold="True"></asp:Label></td>
                                            <td align="left" style="width: 150px" >
                                                : &nbsp;<asp:Label ID="lblgender" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 111px">
                                                <asp:Label ID="Label6" runat="server" Text="BirthDate" Font-Bold="True"></asp:Label></td>
                                            <td align="left" style="width: 150px">
                                                :&nbsp;
                                                <asp:Label ID="lblbirthdate" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 111px" >
                                                <asp:Label ID="Label15" runat="server" Text="Religion" Font-Bold="True"></asp:Label></td>
                                            <td align="left" style="width: 150px" >
                                                :&nbsp;
                                                <asp:Label ID="lblreligion" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 111px" >
                                                <asp:Label ID="Label16" runat="server" Text="Cast" Font-Bold="True"></asp:Label></td>
                                            <td align="left" style="width: 150px" >
                                                :&nbsp;
                                                <asp:Label ID="lblcast" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 111px" >
                                                <asp:Label ID="Label5" runat="server" Text="City" Width="96px" Font-Bold="True"></asp:Label></td>
                                            <td align="left" style="width: 150px" >
                                                :&nbsp;
                                                <asp:Label ID="lblcity" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 111px" >
                                                <asp:Label ID="Label33" runat="server" Text="District" Width="104px" Font-Bold="True"></asp:Label></td>
                                            <td align="left" style="width: 150px">
                                                :&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Black"
                                                    Text="Sabar Kantha"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 111px" >
                                                </td>
                                            <td align="left" style="width: 150px" >
                                                </td>
                                            <td align="left" style="width: 270px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial">
                                <td style="width: 100px; height: 41px" valign="top">
                                    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 585px">
                                        <tr>
                                            <td id="rc1" style="width: 8px; height: 26px">
                                            </td>
                                            <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                                                OTHER DETAIL</td>
                                            <td id="rc2" style="height: 26px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" >
                                    <table style="height: 192px">
                                        <tr>
                                            <td style="width: 111px; height: 36px">
                                                <asp:Label ID="Label27" runat="server" Font-Bold="True"></asp:Label></td>
                                            <td colspan="1" style="width: 7px; height: 36px">
                                                :</td>
                                            <td colspan="4" style="height: 36px" bgcolor="#ffe8ff">
                                                <asp:Label ID="labout" runat="server" Font-Bold="False" Height="1px" Width="40px" CssClass="inputt"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 111px" >
                                                <asp:Label ID="Label8" runat="server" Text="Education" Font-Bold="True"></asp:Label></td>
                                            <td colspan="1" style="width: 7px">
                                                :</td>
                                            <td colspan="2">
                                                <asp:Label ID="lbleducation" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label></td>
                                            <td style="width: 100px">
                                                <asp:Label ID="Label11" runat="server" Text="FatherName" Font-Bold="True"></asp:Label></td>
                                            <td style="width: 161px">
                                                :&nbsp;
                                                <asp:Label ID="lblfathername" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 111px" >
                                                <asp:Label ID="Label12" runat="server" Text="Occupation" Font-Bold="True"></asp:Label></td>
                                            <td colspan="1" style="width: 7px">
                                                :</td>
                                            <td colspan="2">
                                                <asp:Label ID="lbloccupation" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label></td>
                                            <td style="width: 100px">
                                                <asp:Label ID="Label18" runat="server" Text="MotherName" Font-Bold="True"></asp:Label></td>
                                            <td style="width: 161px">
                                                :&nbsp;
                                                <asp:Label ID="lblmothername" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 111px; height: 5px;">
                                                <asp:Label ID="Label7" runat="server" Text="Occupation Location" Font-Bold="True"></asp:Label></td>
                                            <td colspan="1" style="width: 7px; height: 5px">
                                                :</td>
                                            <td colspan="2" style="height: 5px">
                                                <asp:Label ID="lblocclocation" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label></td>
                                            <td style="width: 100px; height: 5px;">
                                                <asp:Label ID="Label10" runat="server" Text="Father Occupation" Width="119px" Font-Bold="True"></asp:Label></td>
                                            <td style="width: 161px; height: 5px">
                                                :&nbsp;
                                                <asp:Label ID="lblfatheroccupation" runat="server" ForeColor="Black" Font-Bold="True"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 111px; height: 36px;">
                                                <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Work Profile"></asp:Label></td>
                                            <td style="width: 7px; height: 36px">
                                                :</td>
                                            <td style="height: 36px;" bgcolor="#ffe8ff" colspan="4">
                                                <asp:Label ID="lblwork" runat="server" Font-Bold="False" Height="1px"
                                                    Width="40px" CssClass="inputt"></asp:Label></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" >
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    &nbsp; &nbsp;
                </asp:MultiView></td>
        </tr>
        <tr>
        </tr>
        <tr>
        <td></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td colspan="3" style="width: 562px">
            </td>
        </tr>
    </table>
</asp:Content>

