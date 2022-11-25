<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="UserView.aspx.cs" Title="Skvivah - SabarKantha Matrimonial Site - User Profile" Inherits="User" %>
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
                        <td style="width: 100px; border-left-color: #003300; border-bottom-color: #003300; border-top-color: #003300; border-right-color: #003300;">
                <asp:Image ID="imguser" runat="server" Height="121px" Width="94px" /></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:LinkButton ID="lnkpersonal" runat="server" OnClick="lnkpersonal_Click" CssClass="inputt">Basic Detail</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:LinkButton ID="lnkaddress" runat="server"  CssClass="inputt" PostBackUrl="~/Registration.aspx">Address Detail</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:LinkButton ID="lnkmsg" runat="server"  CssClass="inputt" PostBackUrl="~/Registration.aspx">Send Message</asp:LinkButton></td>
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
                                            <td align="left" style="width: 129px">
                                                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
                                            <td align="left" >
                                                :&nbsp;
                                                <asp:Label ID="lblfnale" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td style="width: 100px; text-align: left">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 129px">
                                                <asp:Label ID="Label3" runat="server" Text="Middle Name" Width="85px"></asp:Label></td>
                                            <td align="left">
                                                :&nbsp;
                                                <asp:Label ID="lblmname" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td align="left" style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 129px" >
                                                <asp:Label ID="Label2" runat="server" Text=" Last Name"></asp:Label>
                                            </td>
                                            <td align="left" >
                                                :&nbsp;
                                                <asp:Label ID="lbllnam" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td align="left" style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 129px" >
                                                <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label></td>
                                            <td align="left" >
                                                : &nbsp;<asp:Label ID="lblgender" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td align="left" style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 129px" >
                                                <asp:Label ID="Label6" runat="server" Text="BirthDate"></asp:Label></td>
                                            <td align="left" >
                                                :&nbsp;
                                                <asp:Label ID="lblbirthdate" runat="server" ForeColor="Black"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 129px" >
                                                <asp:Label ID="Label15" runat="server" Text="Religion"></asp:Label></td>
                                            <td align="left" >
                                                :&nbsp;
                                                <asp:Label ID="lblreligion" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td align="left" style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 129px" >
                                                <asp:Label ID="Label16" runat="server" Text="Cast"></asp:Label></td>
                                            <td align="left" >
                                                :&nbsp;
                                                <asp:Label ID="lblcast" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td align="left" style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 129px" >
                                                <asp:Label ID="Label5" runat="server" Text="City" Width="126px"></asp:Label></td>
                                            <td align="left" >
                                                :&nbsp;
                                                <asp:Label ID="lblcity" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td align="left" style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 129px" >
                                                <asp:Label ID="Label33" runat="server" Text="District" Width="119px"></asp:Label></td>
                                            <td align="left">
                                                :&nbsp;
                                                <asp:TextBox ID="txtdist" runat="server" ReadOnly="True">Sabar Kantha</asp:TextBox></td>
                                            <td align="left" style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 129px" >
                                                <asp:Label ID="Label11" runat="server" Text="FatherName"></asp:Label></td>
                                            <td align="left" >
                                                :&nbsp;
                                                <asp:Label ID="lblfathername" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td align="left" style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 129px" >
                                                <asp:Label ID="Label18" runat="server" Text="MotherName"></asp:Label></td>
                                            <td align="left" >
                                                :&nbsp;
                                                <asp:Label ID="lblmothername" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td align="left" style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 129px; height: 10px">
                                                <asp:Label ID="Label27" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label></td>
                                            <td colspan="2" style="height: 10px">
                                                :&nbsp;
                                                <asp:Label ID="labout" runat="server" ForeColor="Black"></asp:Label>u</td>
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
                                                EDUCATION DETAIL</td>
                                            <td id="rc2" style="height: 26px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" >
                                    <table style="height: 136px">
                                        <tr>
                                            <td style="width: 129px" >
                                                <asp:Label ID="Label8" runat="server" Text="Education"></asp:Label></td>
                                            <td >
                                                :&nbsp;
                                                <asp:Label ID="lbleducation" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td style="width: 41px">
                                            </td>
                                            <td style="width: 100px">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 129px" >
                                                <asp:Label ID="Label12" runat="server" Text="Occupation"></asp:Label></td>
                                            <td >
                                                :&nbsp;
                                                <asp:Label ID="lbloccupation" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td style="width: 41px">
                                            </td>
                                            <td style="width: 100px">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 129px">
                                                <asp:Label ID="Label7" runat="server" Text="Occupation Location"></asp:Label></td>
                                            <td>
                                                :&nbsp;
                                                <asp:Label ID="lblocclocation" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td style="width: 41px">
                                            </td>
                                            <td style="width: 100px">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 129px" >
                                                <asp:Label ID="Label10" runat="server" Text="Father Occupation" Width="119px"></asp:Label></td>
                                            <td >
                                                :&nbsp;
                                                <asp:Label ID="lblfatheroccupation" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td style="width: 41px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 129px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 41px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 41px">
                                    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 585px">
                                        <tr>
                                            <td id="rc1" style="height: 26px">
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
                                    <table style="height: 300px">
                                        <tr>
                                            <td style="width: 129px" >
                                                <asp:Label ID="Label13" runat="server" Text="Maritial Status"></asp:Label></td>
                                            <td >
                                                :&nbsp;
                                                <asp:Label ID="lblmaritial" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 129px" >
                                                <asp:Label ID="Label14" runat="server" Text="Body Type"></asp:Label></td>
                                            <td >
                                                :&nbsp;
                                                <asp:Label ID="lblbody" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 129px" >
                                                <asp:Label ID="Label17" runat="server" Text="Food" Width="80px"></asp:Label></td>
                                            <td >
                                                :&nbsp;
                                                <asp:Label ID="lblfood" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 129px" >
                                                <asp:Label ID="Label19" runat="server" Text="Hight" Width="44px"></asp:Label></td>
                                            <td >
                                                :&nbsp;
                                                <asp:Label ID="lblhight" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 129px" >
                                                <asp:Label ID="Label20" runat="server" Text="Weight" Width="44px"></asp:Label></td>
                                            <td >
                                                :&nbsp;
                                                <asp:Label ID="lblweight" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 129px" >
                                                <asp:Label ID="Label21" runat="server" Text="Smoking" Width="44px"></asp:Label></td>
                                            <td >
                                                :&nbsp;
                                                <asp:Label ID="lblsmok" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 129px" >
                                                <asp:Label ID="Label22" runat="server" Text="Drinking" Width="44px"></asp:Label></td>
                                            <td >
                                                :&nbsp;
                                                <asp:Label ID="lbldrink" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 129px" >
                                                <asp:Label ID="Label23" runat="server" Text="Blood Group" Width="90px"></asp:Label></td>
                                            <td >
                                                :&nbsp;
                                                <asp:Label ID="lblblood" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 129px" >
                                                <asp:Label ID="Label24" runat="server" Text="Mangal" Width="90px"></asp:Label></td>
                                            <td >
                                                :&nbsp;
                                                <asp:Label ID="lblmangal" runat="server" ForeColor="Black"></asp:Label></td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 129px">
                                            </td>
                                            <td style="width: 114px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
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

