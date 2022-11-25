<%@ Page Language="C#" MasterPageFile="~/HomeIn.master" AutoEventWireup="true" CodeFile="Online.aspx.cs" Inherits="Online" Title="Skvivah - SabarKantha Matrimonial Site - Online" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="FMTKP53V26SPS">
<table>
<tr><td><input type="hidden" name="on0" value="Select Plan">Select Plan</td></tr><tr><td><select name="os0">
	<option value="For 1 month">For 1 month $8.00 USD</option>
	<option value="For 3 month">For 3 month $10.00 USD</option>
	<option value="For 1 year">For 1 year $20.00 USD</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="USD">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_cart_LG.gif" border="0" name="submit" alt="PayPal — The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>

</asp:Content>

