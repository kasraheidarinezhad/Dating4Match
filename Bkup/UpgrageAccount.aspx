<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpgrageAccount.aspx.cs" Inherits="UpgrageAccount" Title="Skvivah - SabarKantha Matrimonial Site - Upgrade Account" MasterPageFile="~/HomeIn.master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="d" runat="server">



    <table style="height: 156px">
        <tr>
            <td colspan="2" style="height: 18px">
                <br />
            </td>
            <td style="width: 100px; height: 18px">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 18px">
                <span style="font-size: 12pt; color: darkred"><strong>We offer you three Plan for Upgrad
                    Your Account !!</strong></span></td>
            <td style="width: 100px; height: 18px">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                ------------------------------------------------------------------------------------------------</td>
            <td style="width: 100px">
                <asp:Button ID="btnupgrade" runat="server" CssClass="btn" OnClick="btnupgrade_Click"
                    Text="Upgrade Now" Visible="False" /></td>
        </tr>
        <tr>
            <td colspan="3">
                <table style="width: 664px">
                    <tr>
                        <td style="width: 100px; height: 22px">
                <asp:RadioButton ID="rdoone" runat="server" AutoPostBack="True" CssClass="inputt"
                    GroupName="A" OnCheckedChanged="rdoone_CheckedChanged" Text="300 INR For 3 month"
                    Width="184px" Checked="True" /></td>
                        <td style="width: 100px; height: 22px">
                <asp:RadioButton ID="rdothree" runat="server" AutoPostBack="True" CssClass="inputt"
                    GroupName="A" OnCheckedChanged="rdothree_CheckedChanged" Text="500 INR For 6 month" Width="160px" /></td>
                        <td style="width: 100px; height: 22px">
                <asp:RadioButton ID="rdoyear" runat="server" AutoPostBack="True" CssClass="inputt"
                    GroupName="A" OnCheckedChanged="rdoyear_CheckedChanged" Text="1000 INR For 1 year" Width="144px" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3" rowspan="2" valign="middle">
                <br />
                -------------------------------------------------------------------------------------------------------------------------------------------------------------------<br />
            </td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td class="inputt" style="width: 217px">
                <span style="font-size: 14pt">
                    <asp:Label ID="lblpayment" runat="server" Font-Bold="True" Font-Size="11pt" Text="Select Payment Method"
                        Visible="False"></asp:Label></span></td>
            <td colspan="2" style="text-align: left">
                <asp:RadioButtonList ID="rdopayment" runat="server" CssClass="inputt" Font-Bold="True"
                    Font-Size="10pt" Width="404px" OnSelectedIndexChanged="rdopayment_SelectedIndexChanged">
                    <asp:ListItem Value="Cash" Enabled="False">Deposite Cash at Our Nearest Branch.</asp:ListItem>
                    <asp:ListItem Value="Online" Selected="True">Pay Online By Paypal Account or Debit/Creadit Card.</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td style="width: 217px; height: 18px;">
            </td>
            <td rowspan="1" style="width: 302px; text-align: left; height: 18px;" valign="middle">
            </td>
            <td style="width: 100px; height: 18px;">
            </td>
        </tr>
        <tr>
            <td style="width: 217px; height: 18px">
            </td>
            
<td rowspan="1" style="width: 302px; height: 18px; text-align: left" valign="middle">
                <asp:Button ID="btnpay" runat="server"  CssClass="btn" Text="Pay Now" OnClick="btnpay_Click" Height="34px" Width="107px" />
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/bbtn.gif" /></td>
            <td style="width: 100px; height: 18px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 217px; height: 18px">
            </td>
            <td rowspan="1" style="width: 302px; height: 18px; text-align: left" valign="middle">
            </td>
            <td style="width: 100px; height: 18px">
            </td>
        </tr>
        <tr>
            <td style="width: 217px; height: 18px">
            </td>
            <td rowspan="1" style="width: 302px; height: 18px; text-align: left" valign="middle">
                <asp:Panel ID="Panel2" runat="server" Height="50px" Width="170px" Visible="False">
                
                
                <form action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="Q9KHS7EWR7VWJ">
<table>
<tr><td><input type="hidden" name="on0" value="Select Plan">Select Plan</td></tr><tr><td><select name="os0" style="width: 184px">
	<option value="For 3 month" selected="selected">For 3 month $0.50 USD</option>
	<option value="For 6 month">For 6 month $10.00 USD</option>
	<option value="For 1 year">For 1 year $20.00 USD</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="USD"><asp:Image ID="Image2" runat="server"
    ImageUrl="~/img/paypal.JPG" /><br />
                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="45px" ImageUrl="~/img/pay1.jpg"
                        PostBackUrl="https://www.paypal.com/cgi-bin/webscr" />
                    </form>

                
                
                
                
</asp:Panel>
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td style="width: 100px; height: 18px">
            
           <%-- <form action="https://www.paypal.com/cgi-bin/webscr" method="post">--%>
                <asp:Panel ID="Panel3" runat="server" Height="50px" Visible="False" Width="125px">
                    <table style="width: 158px">
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 100px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="inputt">
                                1 USD = 45 to 50 INR</td>
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
                            <td colspan="3" class="inputt">
                                300 INR = 6$ USD</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="inputt">
                                500 INR = 10$ USD</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="inputt">
                                1000 = 20$ USD</td>
                        </tr>
                    </table>
                </asp:Panel>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 217px; height: 18px">
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