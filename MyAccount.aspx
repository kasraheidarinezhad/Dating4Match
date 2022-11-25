<%@ Page Language="C#" MasterPageFile="~/HomeIn.master" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="MyAccount" Title="Matrimonial Site - MyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        &nbsp;<asp:View ID="View1" runat="server">
            <table style="width: 694px">
                <tr>
                    <td style="text-align: left; height: 278px;">
                        <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 585px">
                            <tr>
                                <td id="rc1" style="width: 8px; height: 26px">
                                </td>
                                <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                                    Account Detail !!&nbsp;</td>
                                <td id="rc2" style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 26px">
                                </td>
                                <td bgcolor="" style="width: 813px; height: 26px">
                                </td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 26px">
                                </td>
                                <td bgcolor="" style="width: 813px; height: 26px">
                                    <span class="inputt" style="font-size: 14pt">Currently you are registred as Free member.</span></td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 26px">
                                </td>
                                <td style="width: 813px; height: 26px">
                                </td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 26px">
                                </td>
                                <td class="inputt" style="width: 813px; height: 26px">
                                    <span style="font-size: 14pt">Your Profile ID = </span>
                                    <asp:Label ID="lblprofile" runat="server" CssClass="inputt" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 26px">
                                </td>
                                <td style="width: 813px; height: 26px">
                                </td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 26px">
                                </td>
                                <td style="width: 813px; height: 26px">
                                    <span class="inputt" style="font-size: 14pt"><span id="_ctl0_lblstatusmsg" class="map">Upgrade your Account, and
                                        get full Access.</span></span></td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 26px">
                                </td>
                                <td style="font-weight: bold; width: 813px; color: #003300; height: 26px">
                                    &nbsp;- Get Advance Search Option.</td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 26px">
                                </td>
                                <td style="font-weight: bold; width: 813px; color: #003300; height: 26px">
                                    &nbsp;- Get Address and Contact/Email Detail.</td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 26px">
                                </td>
                                <td style="font-weight: bold; width: 813px; color: #003300; height: 26px">
                                    &nbsp;- Send and Read Messages.</td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 26px">
                                    &nbsp;</td>
                                <td style="font-weight: bold; width: 813px; color: #003300; height: 26px">
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/upgd.gif" 
                                        OnClick="ImageButton1_Click" />
                                </td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 26px">
                                    &nbsp;</td>
                                <td style="font-weight: bold; width: 813px; color: #003300; height: 26px; border-top-style: solid; border-top-width: thin; border-top-color: #C0C0C0;">
                                    &nbsp;</td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width: 694px">
                <tr>
                    <td>
                        <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 585px">
                            <tr>
                                <td id="rc1" style="width: 8px; height: 26px">
                                </td>
                                <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                                    Account Detail !!&nbsp;</td>
                                <td id="rc2" style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 26px">
                                </td>
                                <td style="width: 813px; height: 26px">
                                </td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 26px">
                                </td>
                                <td bgcolor="" style="width: 813px; height: 26px; text-align: left;">
                                    <span class="inputt" style="font-size: 14pt">Currently you are registred as
                                        <asp:Label ID="lblpname" runat="server"></asp:Label>
                                        &nbsp;member of meeramatrimonial.</span></td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 26px">
                                </td>
                                <td class="inputt" style="width: 813px; height: 26px; text-align: left">
                                    <span style="font-size: 14pt">Your Profile ID =</span>
                                    <asp:Label ID="lblpid" runat="server" CssClass="inputt" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 26px">
                                </td>
                                <td style="font-weight: bold; width: 813px; color: #003300; height: 26px; text-align: left">
                                    Acount Status = &nbsp;<asp:Label ID="lblplanname" runat="server"></asp:Label>
                                    <asp:Label ID="lblprice" runat="server" Visible="False"></asp:Label></td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 26px">
                                </td>
                                <td style="font-weight: bold; width: 813px; color: #003300; height: 26px; text-align: left">
                                    &nbsp;<asp:Label ID="lblstartdate" runat="server" Visible="False"></asp:Label>
                                    &nbsp; &nbsp;<asp:Label ID="lblenddate" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="lbldays" runat="server" CssClass="inputt" Font-Bold="True" 
                                        Font-Size="Medium" Visible="False"></asp:Label>
                                </td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 5px">
                                </td>
                                <td style="font-weight: bold; width: 813px; color: #003300; height: 5px; text-align: left">
                                </td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 5px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 8px; height: 26px">
                                </td>
                                <td style="font-weight: bold; width: 813px; color: #003300; height: 26px">
                                    <asp:Label ID="lblamount" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="lblpaidto" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="lblpaidbranch" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="lblpaydate" runat="server" Visible="False"></asp:Label></td>
                                <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </asp:View>
        
        <asp:View ID="View3" runat="server">
            <table align="center" border="0" cellpadding="0" cellspacing="0" 
                style="width: 585px">
                <tr>
                    <td ID="rc3" style="width: 8px; height: 26px">
                    </td>
                    <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                        Account Detail !!&nbsp;</td>
                    <td ID="rc4" 
                        style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 8px; height: 26px">
                    </td>
                    <td bgcolor="" style="width: 813px; height: 26px">
                    </td>
                    <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 8px; height: 26px">
                    </td>
                    <td bgcolor="" style="width: 813px; height: 26px">
                        <span class="inputt" style="font-size: 14pt">Currently you are registred as 
                        Visitor.</span></td>
                    <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 8px; height: 26px">
                    </td>
                    <td style="width: 813px; height: 26px">
                    </td>
                    <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 8px; height: 26px">
                    </td>
                    <td class="inputt" style="width: 813px; height: 26px">
                        <span style="font-size: 14pt">Your Profile ID = </span>
                        <asp:Label ID="lblprofile0" runat="server" CssClass="inputt" Font-Bold="True" 
                            Font-Size="Medium"></asp:Label>
                    </td>
                    <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 8px; height: 26px">
                    </td>
                    <td style="width: 813px; height: 26px">
                    </td>
                    <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 8px; height: 26px">
                    </td>
                    <td style="width: 813px; height: 26px">
                        <span class="inputt" style="font-size: 14pt"><span ID="_ctl0_lblstatusmsg0" 
                            class="map">For upgrade your Account, and get full Access Register as 
                        Member.</span></span></td>
                    <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 8px; height: 26px">
                    </td>
                    <td style="font-weight: bold; width: 813px; color: #003300; height: 26px">
                        &nbsp;- Get Advance Search Option.</td>
                    <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 8px; height: 26px">
                    </td>
                    <td style="font-weight: bold; width: 813px; color: #003300; height: 26px">
                        &nbsp;- Get Address and Contact/Email Detail.</td>
                    <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 8px; height: 26px">
                    </td>
                    <td style="font-weight: bold; width: 813px; color: #003300; height: 26px">
                        &nbsp;- Send and Read Messages.</td>
                    <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 8px; height: 26px">
                        &nbsp;</td>
                    <td style="font-weight: bold; width: 813px; color: #003300; height: 26px">
                        &nbsp;</td>
                    <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 8px; height: 26px">
                        &nbsp;</td>
                    <td style="font-weight: bold; width: 813px; color: #003300; height: 26px; border-top-style: solid; border-top-width: thin; border-top-color: #C0C0C0;">
                        &nbsp;</td>
                    <td style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial; height: 26px">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        
    </asp:MultiView>
    <table >
            <tr>
                <td class="inputt" style="font-size: 14pt">
                   <asp:Label ID="Label1" runat="server" Text=" Please, Notify us if you are enggaged."></asp:Label>
                    </td>
            </tr>
            <tr>
                <td >
                    <asp:RadioButton id="rdonotengage" runat="server" CssClass="map" GroupName="a" Text="I am not Enggaged yet." AutoPostBack="True" OnCheckedChanged="rdonotengage_CheckedChanged" Checked="True">
                    </asp:RadioButton>
                    <asp:RadioButton id="rdoenggage" runat="server" CssClass="map" GroupName="a" Text="I am Enggaged." AutoPostBack="True" OnCheckedChanged="rdoenggage_CheckedChanged">
                    </asp:RadioButton></td>
            </tr>
            <tr>
                <td >
                    <asp:Label id="lblengage" runat="server" Text="You are already enggaged, so your profile is out of search engine."
                        Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td >
                    <asp:CheckBox id="CheckBox1" runat="server" CssClass="map" 
                        Text="Please, Check Here !! If you get partner from our website." 
                        AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Visible="False">
                    </asp:CheckBox></td>
            </tr>
        </table>
</asp:Content>

