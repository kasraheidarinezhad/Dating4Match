<%@ Page Language="C#" MasterPageFile="~/HomeIn.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Title="Matrimonial Site - User Profile" Inherits="User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px" valign="top" rowspan="2">
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
                <asp:Image ID="imguser" runat="server" Height="121px" Width="94px"  /></td>
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
                            <asp:LinkButton ID="lnkaddress" runat="server" OnClick="lnkaddress_Click" CssClass="inputt">Address Detail</asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:LinkButton ID="lnkmsg" runat="server" OnClick="lnkmsg_Click" CssClass="inputt">Send Message</asp:LinkButton></td>
                    </tr>
                </table>
            </td>
            <td colspan="3" rowspan="2" style="width: 562px">
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
                                                <asp:Label ID="Label33" runat="server" Text="State" Width="119px"></asp:Label></td>
                                            <td align="left">
                                                :&nbsp;
                                                <asp:Label ID="lblcity0" runat="server" ForeColor="Black">Gujarat</asp:Label>
                                            </td>
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
                                                <table style="width: 544px">
                                                    <tr>
                                                        <td >
                                                EDUCATION DETAIL</td>
                                                        <td>
                                                        </td>
                                                        <td >
                                                            ADDRESS DETAIL</td>
                                                    </tr>
                                                </table>
                                            </td>
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
                                                <asp:Label ID="Label9" runat="server" Text="City"></asp:Label></td>
                                            <td style="width: 100px">
                                                :
                                                <asp:Label ID="lcity" runat="server" ForeColor="Black"></asp:Label></td>
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
                                                <asp:Label ID="Label25" runat="server" Text="Pincode"></asp:Label></td>
                                            <td style="width: 100px">
                                                :
                                                <asp:Label ID="lpincodr" runat="server" ForeColor="Black"></asp:Label></td>
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
                                                <asp:Label ID="Label26" runat="server" Text="District"></asp:Label></td>
                                            <td style="width: 100px">
                                                :
                                                <asp:Label ID="ldistict" runat="server" ForeColor="Black"></asp:Label></td>
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
                    <asp:View ID="View2" runat="server">
                        <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 585px">
                            <tr>
                                <td id="rc1" style="width: 8px; height: 26px">
                                </td>
                                <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                                    Get full access upgrad your account !!</td>
                                <td id="rc2" style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                        </table>
                        <table style="width: 503px">
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
                                    <asp:Label ID="lbleverithings" runat="server" CssClass="inputt" 
                                        Text="Upgrade your Account to get Adderss/Contact Detail and Everthings." 
                                        Font-Size="Medium"></asp:Label></td>
                            </tr>
                            <tr>
                                <td colspan="3">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/upgd.gif" 
                                        PostBackUrl="~/Upgrade.aspx" /></td>
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
                                    <asp:Panel ID="pnladdress" runat="server" Height="50px" Width="125px" Visible="False">
                                        <table style="width: 468px">
                                            <tr>
                                                <td class="inputt" colspan="4">
                                                    <strong>&nbsp;Address Detail</strong></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px">
                                                </td>
                                                <td style="width: 71px">
                                                </td>
                                                <td style="width: 100px">
                                                </td>
                                                <td style="width: 100px">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px">
                                                </td>
                                                <td >
                                                    Address -</td>
                                                <td align="left" >
                                                    <asp:Label ID="lblupaddress" runat="server" CssClass="inputt"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px">
                                                </td>
                                                <td style="width: 71px">
                                                </td>
                                                <td align="left" >
                                                    <asp:Label ID="lblupadd2" runat="server" CssClass="inputt"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px">
                                                </td>
                                                <td style="width: 71px">
                                                </td>
                                                <td align="left" >
                                                    <asp:Label ID="lblupcity" runat="server" CssClass="inputt"></asp:Label><br />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px; height: 18px">
                                                </td>
                                                <td >
                                                    Contact No -</td>
                                                <td align="left" >
                                                    <asp:Label ID="lblupmobile" runat="server" CssClass="inputt"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px">
                                                </td>
                                                <td style="width: 71px">
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="lbluplandline" runat="server" CssClass="inputt"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px">
                                                </td>
                                                <td style="width: 71px">
                                                    E-mail -
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="lblemail" runat="server" CssClass="inputt"></asp:Label></td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                    <br />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 585px">
                            <tr>
                                <td id="rc1" style="width: 8px; height: 26px">
                                </td>
                                <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                                    Send Instant Message
                                </td>
                                <td id="rc2" style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; text-align: right">
                                    Message - &nbsp;</td>
                                <td colspan="2">
                                    <asp:TextBox ID="txtmsgsend" runat="server" Height="79px" TextMode="MultiLine" Width="362px"></asp:TextBox></td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px">
                                </td>
                                <td style="width: 100px; text-align: right">
                                    <asp:Button ID="btnsendmsg" runat="server" CssClass="btn" Text="Send" Width="49px" OnClick="btnsendmsg_Click" /></td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td colspan="2">
                                    <asp:Label ID="lblmsgsend" runat="server"></asp:Label></td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                </td>
                                <td colspan="2">
                                    <br />
                                    <br />
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View4" runat="server">
                        <table style="width: 512px">
                            <tr>
                                <td style="width: 35px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td >
                                </td>
                                <td class="inputt" style="font-size: medium" >
                                    You can not Send / Receive any message, and Address detail<br /> &nbsp;becaus you are 
                                    logged in as Visitor.</td>
                            </tr>
                            <tr>
                                <td style="width: 35px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View5" runat="server">
                        <table style="width: 512px">
                            <tr>
                                <td style="width: 35px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td >
                                </td>
                                <td class="inputt" style="font-size: medium" >
                                    Your Account is not Active.<br />
                                    Your account is under review, we will active your account soon.</td>
                            </tr>
                            <tr>
                                <td style="width: 35px">
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView></td>
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

