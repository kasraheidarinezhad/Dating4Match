<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AccountUpgrad.aspx.cs" Inherits="AccountUpgrad" Title="Matrimonial Site - Upgrade Account" MasterPageFile="~/HomeIn.master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="d" runat="server">



    <table style="height: 156px">
        <tr>
            <td colspan="3" style="height: 18px">
                <asp:Button ID="btnapplyvisitor" runat="server" CssClass="btn" Height="40px" OnClick="btnapplyvisitor_Click"
                    Text="Apply For Upgrade !!" Width="192px" /></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 18px">
                <asp:Label ID="lblallready" runat="server" Font-Bold="True" Font-Size="11pt" Text="Thank you, We will upgrade your Account within 24 Hours."
                    Visible="False"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 18px">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table style="width: 504px">
                            <tr>
                                <td align="left">
                                    <strong><span style="font-size: 12pt; color: #8b0000">Follow Easy Step to Upgrad 
                                    Your Account !!</span></strong></td>
                            </tr>
                            <tr>
                                <td align="left">
                                </td>
                            </tr>
                    <tr>
                        <td align="left" >
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="11pt" Text="1. Fiil up your Profile Detail "></asp:Label>&nbsp;
                            <asp:LinkButton ID="lnkp" runat="server" CausesValidation="False" Font-Bold="True"
                    Font-Size="11pt" ForeColor="DarkRed" OnClick="lnkp_Click">Personal</asp:LinkButton>&nbsp;
                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" Font-Bold="True"
                    Font-Size="11pt" ForeColor="DarkRed" OnClick="LinkButton2_Click">Educational</asp:LinkButton>&nbsp;
                            <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" Font-Bold="True"
                    Font-Size="11pt" ForeColor="DarkRed" OnClick="LinkButton3_Click">Other </asp:LinkButton></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            &nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 100px" align="left">
                            <asp:Label ID="lblemsg" runat="server" Visible="False"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:Button ID="btnupgrade" runat="server" CssClass="btn" Enabled="False" 
                                Font-Bold="True" Font-Size="Medium" Height="48px" OnClick="btnupgrade_Click" 
                                Text="Upgrade Now" Width="144px" />
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left">
                        </td>
                    </tr>
                </table>
                    </asp:View>
                </asp:MultiView></td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp; &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" valign="middle">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 20px" valign="middle">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="inputt" style="width: 164px">
                <span style="font-size: 14pt">
                    </span></td>
            <td colspan="2" style="text-align: left">
                </td>
        </tr>
        <tr>
            <td style="width: 164px; height: 18px;">
            </td>
            <td rowspan="1" style="width: 302px; text-align: left; height: 18px;" valign="middle">
                </td>
            <td style="width: 100px; height: 18px;">
            </td>
        </tr>
        <tr>
            <td style="width: 164px; height: 18px">
            </td>
            
<td rowspan="1" style="width: 302px; height: 18px; text-align: left" valign="middle">
                </td>
            <td style="width: 100px; height: 18px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 164px; height: 18px">
            </td>
            <td rowspan="1" style="width: 302px; height: 18px; text-align: left" valign="middle">
            </td>
            <td style="width: 100px; height: 18px">
            </td>
        </tr>
        <tr>
            <td style="width: 164px; height: 18px">
            </td>
            <td rowspan="1" style="width: 302px; height: 18px; text-align: left" valign="middle">
                <br />
            </td>
            <td style="width: 100px; height: 18px">
            
           <%-- <form action="https://www.paypal.com/cgi-bin/webscr" method="post">--%>
                &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 164px; height: 18px">
            </td>
            <td rowspan="1" style="width: 302px; height: 18px; text-align: left" valign="middle">
            
            
         

            
            </td>
            <td style="width: 100px; height: 18px">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 18px">
                </td>
        </tr>
    </table>





</asp:Content>