<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registraion" Title="Matrimonial Site - New Registration" MasterPageFile="~/Home.master" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="d" runat="server">
    <asp:MultiView ID="MultiView1" runat="server" >
        <asp:View ID="View1" runat="server" >
            <table>
                <tr>
                    <td colspan="2">
                        <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 693px">
                            <tr>
                                <td id="rc1" style="width: 8px; height: 26px">
                                </td>
                                <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                                    PERSONAL DETAIL</td>
                                <td id="rc2" style="height: 26px">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr >
                    <td style="width: 100px" valign="top" >
            <table style="width: 399px; height: 386px">
                <tr>
                    <td colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:RadioButtonList ID="rdomember" runat="server" CssClass="inputt"
                            Font-Bold="True" OnSelectedIndexChanged="rdomember_SelectedIndexChanged" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Register as Member</asp:ListItem>
                            <asp:ListItem>Register as Visitor</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td colspan="2">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                    </td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblpersonalerror" runat="server" ForeColor="Red"></asp:Label></td>
                    <td style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="left" style="width: 115px; height: 26px">
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
                    <td align="left" style="width: 26px; height: 26px">
                        <asp:TextBox ID="txtfname" runat="server" CssClass="inputt"></asp:TextBox></td>
                    <td style="width: 100px; height: 26px; text-align: left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname"
                            ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="left" style="width: 115px; text-align: left">
                        <asp:Label ID="Label3" runat="server" Text="Middle Name"></asp:Label></td>
                    <td align="left" style="width: 26px">
                        <asp:TextBox ID="txtmname" runat="server" CssClass="inputt"></asp:TextBox></td>
                    <td align="left" style="width: 100px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmname"
                            ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="left" style="width: 115px; height: 26px">
                        <asp:Label ID="Label2" runat="server" Text=" Last Name"></asp:Label>
                    </td>
                    <td align="left" style="width: 26px; height: 26px">
                        <asp:TextBox ID="txtlname" runat="server" CssClass="inputt"></asp:TextBox></td>
                    <td align="left" style="width: 100px; height: 26px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtlname"
                            ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="left" style="width: 115px; text-align: left">
                        <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label></td>
                    <td align="left" style="width: 26px">
                        <asp:DropDownList ID="drpgender" runat="server" CssClass="inputt">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>MALE</asp:ListItem>
                            <asp:ListItem>FEMALE</asp:ListItem>
                        </asp:DropDownList></td>
                    <td align="left" style="width: 100px">
                        <asp:Label ID="lblgender" runat="server" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td align="left" style="width: 115px; height: 26px; text-align: left">
                        <asp:Label ID="Label5" runat="server" Text="E-mail"></asp:Label></td>
                    <td align="left" style="width: 26px; height: 26px">
                        <asp:TextBox ID="txtemail" runat="server" CssClass="inputt"></asp:TextBox></td>
                    <td align="left" style="width: 100px; height: 26px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtemail"
                            ErrorMessage="!!"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                            ErrorMessage="!!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td align="left" style="width: 115px; text-align: left">
                        <asp:Label ID="Label6" runat="server" Text="BirthDate"></asp:Label></td>
                    <td align="left" colspan="2">
                        <asp:DropDownList ID="drpDD" runat="server" Width="41px" CssClass="inputt">
                            <asp:ListItem>DD</asp:ListItem>
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                            <asp:ListItem>05</asp:ListItem>
                            <asp:ListItem>06</asp:ListItem>
                            <asp:ListItem>07</asp:ListItem>
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="drpMM" runat="server" Width="45px" CssClass="inputt">
                            <asp:ListItem>MM</asp:ListItem>
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                            <asp:ListItem>05</asp:ListItem>
                            <asp:ListItem>06</asp:ListItem>
                            <asp:ListItem>07</asp:ListItem>
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="drpYYYY" runat="server" Width="60px" CssClass="inputt">
                            <asp:ListItem>YYYY</asp:ListItem>
                            <asp:ListItem>1960</asp:ListItem>
                            <asp:ListItem>1961</asp:ListItem>
                            <asp:ListItem>1962</asp:ListItem>
                            <asp:ListItem>1963</asp:ListItem>
                            <asp:ListItem>1964</asp:ListItem>
                            <asp:ListItem>1965</asp:ListItem>
                            <asp:ListItem>1966</asp:ListItem>
                            <asp:ListItem>1967</asp:ListItem>
                            <asp:ListItem>1968</asp:ListItem>
                            <asp:ListItem>1969</asp:ListItem>
                            <asp:ListItem>1970</asp:ListItem>
                            <asp:ListItem>1971</asp:ListItem>
                            <asp:ListItem>1972</asp:ListItem>
                            <asp:ListItem>1973</asp:ListItem>
                            <asp:ListItem>1974</asp:ListItem>
                            <asp:ListItem>1975</asp:ListItem>
                            <asp:ListItem>1976</asp:ListItem>
                            <asp:ListItem>1977</asp:ListItem>
                            <asp:ListItem>1978</asp:ListItem>
                            <asp:ListItem>1979</asp:ListItem>
                            <asp:ListItem>1980</asp:ListItem>
                            <asp:ListItem>1981</asp:ListItem>
                            <asp:ListItem>1982</asp:ListItem>
                            <asp:ListItem>1983</asp:ListItem>
                            <asp:ListItem>1984</asp:ListItem>
                            <asp:ListItem>1985</asp:ListItem>
                            <asp:ListItem>1986</asp:ListItem>
                            <asp:ListItem>1987</asp:ListItem>
                            <asp:ListItem>1988</asp:ListItem>
                            <asp:ListItem>1989</asp:ListItem>
                            <asp:ListItem>1990</asp:ListItem>
                            <asp:ListItem>1991</asp:ListItem>
                            <asp:ListItem>1992</asp:ListItem>
                            <asp:ListItem>1993</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="lbldate" runat="server" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td align="left" style="width: 115px; height: 26px; text-align: left">
                        <asp:Label ID="Label7" runat="server" Text="Mobile No"></asp:Label></td>
                    <td align="left" style="width: 26px; height: 26px">
                        <asp:TextBox ID="txtmobile" runat="server" MaxLength="10" CssClass="inputt"></asp:TextBox></td>
                    <td align="left" style="width: 100px; height: 26px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmobile"
                            ErrorMessage="!!" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtmobile"
                            ErrorMessage="?" MaximumValue="9999999999" MinimumValue="1000000000" Type="Double" Display="Dynamic"></asp:RangeValidator></td>
                </tr>
                <tr>
                    <td align="left" style="width: 115px">
                        <asp:Label ID="Label15" runat="server" Text="Religion"></asp:Label></td>
                    <td align="left" style="width: 26px">
                        <asp:DropDownList ID="drpReligion" runat="server" Width="150px" CssClass="inputt">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>Hindu</asp:ListItem>
                            <asp:ListItem>Muslim - Shia</asp:ListItem>
                            <asp:ListItem>Muslim - Sunni</asp:ListItem>
                            <asp:ListItem>Muslim - Others</asp:ListItem>
                            <asp:ListItem>Christian - Catholic</asp:ListItem>
                            <asp:ListItem>Christian - Orthodox</asp:ListItem>
                            <asp:ListItem>Christian - Protestant</asp:ListItem>
                            <asp:ListItem>Christian - Others</asp:ListItem>
                            <asp:ListItem>Sikh</asp:ListItem>
                            <asp:ListItem>Jain - Digambar</asp:ListItem>
                            <asp:ListItem>Jain - Shwetambar</asp:ListItem>
                            <asp:ListItem>Jain - Others</asp:ListItem>
                            <asp:ListItem>Parsi</asp:ListItem>
                            <asp:ListItem>Buddhist</asp:ListItem>
                            <asp:ListItem>Inter-Religion</asp:ListItem>
                            <asp:ListItem>No Religious</asp:ListItem>
                        </asp:DropDownList></td>
                    <td align="left" style="width: 100px">
                        <asp:Label ID="lblreligion" runat="server" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td align="left" style="width: 115px">
                        <asp:Label ID="Label17" runat="server" Text="SubCast"></asp:Label></td>
                    <td align="left" style="width: 26px">
                        <asp:TextBox ID="txtsubcast" runat="server" CssClass="inputt"></asp:TextBox></td>
                    <td align="left" style="width: 100px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtsubcast"
                            ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 115px; text-align: left;">
                        <asp:Label ID="Label25" runat="server" Text="FamilyType"></asp:Label></td>
                    <td style="width: 26px">
                        <asp:RadioButtonList ID="rdoftype" runat="server" RepeatDirection="Horizontal" CssClass="inputt">
                            <asp:ListItem>Joint</asp:ListItem>
                            <asp:ListItem>Nuclear</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td style="width: 100px">
                        <asp:Label ID="lblftype" runat="server" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 115px">
                    </td>
                    <td style="width: 26px">
                        <asp:Label ID="lbl" runat="server"></asp:Label></td>
                    <td style="width: 100px">
                        &nbsp;<asp:Button ID="btnnext" runat="server" CssClass="btn" OnClick="btnnext_Click"
                            Text="Next.." /></td>
                </tr>
            </table>
                    </td>
                    <td align="left" style="width: 100px" valign="top" id="left">
                        <table align="center" border="0" cellpadding="0" cellspacing="0" width="194">
                            <tr>
                                <td class="leftlinks">
                                    <asp:DataList ID="dlistadv" runat="server" Height="200px" OnItemCommand="dlistadv_ItemCommand">
                                        <ItemTemplate>
                                            <table align="center" border="0" cellpadding="0" cellspacing="0" width="194" style="height: 13px">
                                                <tr>
                                                    <td class="cat-head" style="height: 1px; text-align: center">
                                                        <asp:Label ID="lblpname" runat="server" Text='<%#Eval("Fname") %>' CssClass="inputt"></asp:Label>
                                                        &nbsp;<asp:Label ID="lbllname" runat="server" CssClass="inputt" Text='<%# Eval("Lname") %>'></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="leftlinks" rowspan="8" style="height: 1px; text-align: center">
                                                        <table>
                                                            <tr>
                                                                <td class="inputt" rowspan="3" style="width: 100px">
                                                                    <asp:Image ID="Image1" runat="server" Width="76px" ImageUrl='<%#Eval("Image") %>' Height="99px" /></td>
                                                                <td class="inputt" style="width: 100px">
                                                                    Age -
                                                                    <asp:Label ID="lblpage" runat="server" Text='<%#Eval("Age") %>' CssClass="inputt"></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 100px; height: 34px">
                                                                    <asp:Label ID="lblcast" runat="server" CssClass="inputt" Text='<%# Eval("Religion") %>'></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 100px; height: 34px">
                                                                    <asp:LinkButton ID="btnpview" runat="server" CssClass="inputt">View Profile</asp:LinkButton></td>
                                                            </tr>
                                                        </table>
                                                        <%--<a href="http://www.templatesperfect.com" target="_blank">--%>
                                                        <%--</a>--%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                </tr>
                                                <tr>
                                                </tr>
                                                <tr>
                                                </tr>
                                                <tr>
                                                </tr>
                                                <tr>
                                                </tr>
                                                <tr>
                                                </tr>
                                                <tr>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:DataList><%--<a href="http://www.templatesperfect.com" target="_blank">--%><%--</a>--%></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table>
                <tr>
                    <td style="width: 100px">
                        <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 693px">
                            <tr>
                                <td id="rc1" style="width: 8px; height: 26px">
                                </td>
                                <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                                    ADDRESS DETAIL</td>
                                <td id="rc2" style="height: 26px">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
            <table style="height: 249px; width: 392px;">
                <tr>
                    <td align="left" style="width: 100px">
                    </td>
                    <td align="left" style="width: 100px">
                    </td>
                    <td align="left" style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="left" style="width: 100px">
                        <asp:Label ID="Label8" runat="server" Text="Address1"></asp:Label></td>
                    <td align="left" style="width: 100px">
                        <asp:TextBox ID="txtadd1" runat="server" CssClass="inputt"></asp:TextBox></td>
                    <td align="left" style="width: 100px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtadd1"
                            ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="left" style="width: 100px">
                        <asp:Label ID="Label9" runat="server" Text="Address2"></asp:Label></td>
                    <td align="left" style="width: 100px">
                        <asp:TextBox ID="txtadd2" runat="server" CssClass="inputt"></asp:TextBox></td>
                    <td align="left" style="width: 100px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtadd2"
                            ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="left" style="width: 100px">
                        <asp:Label ID="Label10" runat="server" Text="City"></asp:Label></td>
                    <td align="left" style="width: 100px">
                        <asp:DropDownList ID="drpCity" runat="server" Width="118px" CssClass="inputt">
                            <asp:ListItem>SELECT</asp:ListItem>
                                    <asp:ListItem>Ahmedabad</asp:ListItem>
                                    <asp:ListItem>Anand</asp:ListItem>
                                    <asp:ListItem>Bharuch</asp:ListItem>
                                    <asp:ListItem>Bhavnagar</asp:ListItem>
                                    <asp:ListItem>Bhuj</asp:ListItem>
                                    <asp:ListItem>Gandhinagar</asp:ListItem>
                                    <asp:ListItem>Godhra</asp:ListItem>
                                    <asp:ListItem>Himmatnagar</asp:ListItem>
                                    <asp:ListItem>Jamnagar</asp:ListItem>
                                    <asp:ListItem>Modasa</asp:ListItem>
                                    <asp:ListItem>Mehsana</asp:ListItem>
                                    <asp:ListItem>Patan</asp:ListItem>
                                    <asp:ListItem>Rajkot</asp:ListItem>
                                    <asp:ListItem>Surat</asp:ListItem>
                                    <asp:ListItem>Vadodara</asp:ListItem>   
                                    <asp:ListItem>Vijaynagar</asp:ListItem>
                        </asp:DropDownList></td>
                    <td align="left" style="width: 100px">
                        <asp:Label ID="lblcity" runat="server" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td align="left" style="width: 100px">
                        State</td>
                    <td align="left" style="width: 100px">
                        <asp:TextBox ID="txtdist" runat="server" ReadOnly="True" CssClass="inputt">GUJARAT</asp:TextBox></td>
                    <td align="left" style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="left" style="width: 100px">
                        <asp:Label ID="Label14" runat="server" Text="Pincode"></asp:Label></td>
                    <td align="left" style="width: 100px">
                        <asp:TextBox ID="txtpincode" runat="server" MaxLength="6" CssClass="inputt"></asp:TextBox></td>
                    <td align="left" style="width: 100px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtpincode"
                            ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="txtpincode"
                            ErrorMessage="?" MaximumValue="999999" MinimumValue="100000" Type="Double" SetFocusOnError="True"></asp:RangeValidator></td>
                </tr>
                <tr>
                    <td align="left" style="width: 100px">
                        <asp:Label ID="Label12" runat="server" Text="AreaCode"></asp:Label></td>
                    <td align="left" style="width: 100px">
                        <asp:TextBox ID="txtareacode" runat="server" CssClass="inputt"></asp:TextBox></td>
                    <td style="width: 100px">
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtareacode"
                            ErrorMessage="?" MaximumValue="9999" MinimumValue="1000" Type="Double" SetFocusOnError="True"></asp:RangeValidator></td>
                </tr>
                <tr>
                    <td align="left" style="width: 100px">
                        <asp:Label ID="Label13" runat="server" Text="LandLine No"></asp:Label></td>
                    <td align="left" style="width: 100px">
                        <asp:TextBox ID="txtlandline" runat="server" CssClass="inputt" MaxLength="6"></asp:TextBox></td>
                    <td style="width: 100px">
                        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtlandline"
                            ErrorMessage="?" MaximumValue="9999999999" MinimumValue="100000" Type="Double" SetFocusOnError="True"></asp:RangeValidator></td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 21px"><asp:Button ID="btnback1" runat="server" CssClass="btn" OnClick="btnback1_Click"
                            Text="Back.." CausesValidation="False" /></td>
                    <td align="left" style="width: 100px; height: 21px">
                    </td>
                    <td style="width: 100px; height: 21px">
                        &nbsp; &nbsp;<asp:Button ID="btnaddress" runat="server" CssClass="btn" OnClick="btnaddress_Click"
                            Text="Next.." /></td>
                </tr>
            </table>
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <table>
                <tr>
                    <td style="width: 100px">
                        <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 693px">
                            <tr>
                                <td id="rc1" style="width: 8px; height: 26px">
                                </td>
                                <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                                    PARTNER DETAIL</td>
                                <td id="rc2" style="height: 26px">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px">
            <table style="height: 249px; width: 472px;">
                <tr>
                    <td align="left" style="width: 100px">
                    </td>
                    <td align="left" style="width: 106px">
                    </td>
                    <td align="left" style="width: 100px">
                    </td>
                </tr>
                <tr>
                    <td align="left" style="width: 100px">
                        <asp:Label ID="Label24" runat="server" Text="Age"></asp:Label></td>
                    <td align="left" >
                        <asp:DropDownList ID="drpfromage" runat="server" Width="59px" CssClass="inputt">
                            <asp:ListItem>AGE</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                            <asp:ListItem>32</asp:ListItem>
                            <asp:ListItem>33</asp:ListItem>
                            <asp:ListItem>34</asp:ListItem>
                            <asp:ListItem>35</asp:ListItem>
                            <asp:ListItem>36</asp:ListItem>
                            <asp:ListItem>37</asp:ListItem>
                            <asp:ListItem>38</asp:ListItem>
                            <asp:ListItem>39</asp:ListItem>
                            <asp:ListItem>40</asp:ListItem>
                            <asp:ListItem>41</asp:ListItem>
                            <asp:ListItem>42</asp:ListItem>
                            <asp:ListItem>43</asp:ListItem>
                            <asp:ListItem>44</asp:ListItem>
                            <asp:ListItem>45</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="drptoage" runat="server" Width="58px" CssClass="inputt">
                            <asp:ListItem>AGE</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                            <asp:ListItem>32</asp:ListItem>
                            <asp:ListItem>33</asp:ListItem>
                            <asp:ListItem>34</asp:ListItem>
                            <asp:ListItem>35</asp:ListItem>
                            <asp:ListItem>36</asp:ListItem>
                            <asp:ListItem>37</asp:ListItem>
                            <asp:ListItem>38</asp:ListItem>
                            <asp:ListItem>39</asp:ListItem>
                            <asp:ListItem>40</asp:ListItem>
                            <asp:ListItem>41</asp:ListItem>
                            <asp:ListItem>42</asp:ListItem>
                            <asp:ListItem>43</asp:ListItem>
                            <asp:ListItem>44</asp:ListItem>
                            <asp:ListItem>45</asp:ListItem>
                            <asp:ListItem>46</asp:ListItem>
                            <asp:ListItem>47</asp:ListItem>
                            <asp:ListItem>48</asp:ListItem>
                            <asp:ListItem>49</asp:ListItem>
                            <asp:ListItem>50</asp:ListItem>
                            <asp:ListItem>51</asp:ListItem>
                            <asp:ListItem>52</asp:ListItem>
                            <asp:ListItem>53</asp:ListItem>
                            <asp:ListItem>54</asp:ListItem>
                            <asp:ListItem>55</asp:ListItem>
                        </asp:DropDownList></td>
                    <td align="left" style="width: 100px">
                        <asp:Label ID="lblage" runat="server" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td align="left" style="width: 100px">
                        <asp:Label ID="Height" runat="server" Text="Height"></asp:Label></td>
                    <td align="left" >
                        <asp:DropDownList ID="drpfromheight" runat="server" Width="75px" CssClass="inputt">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>4ft 1in</asp:ListItem>
                            <asp:ListItem>4ft 2in</asp:ListItem>
                            <asp:ListItem>4ft 3in</asp:ListItem>
                            <asp:ListItem>4ft 4in</asp:ListItem>
                            <asp:ListItem>4ft 5in</asp:ListItem>
                            <asp:ListItem>4ft 6in</asp:ListItem>
                            <asp:ListItem>4ft 7in</asp:ListItem>
                            <asp:ListItem>4ft 8in</asp:ListItem>
                            <asp:ListItem>4ft 9in</asp:ListItem>
                            <asp:ListItem>4ft 10in</asp:ListItem>
                            <asp:ListItem>4ft 11in</asp:ListItem>
                            <asp:ListItem>5ft</asp:ListItem>
                            <asp:ListItem>5ft 1in</asp:ListItem>
                            <asp:ListItem>5ft 2in</asp:ListItem>
                            <asp:ListItem>5ft 3in</asp:ListItem>
                            <asp:ListItem>5ft 4in</asp:ListItem>
                            <asp:ListItem>5ft 5in</asp:ListItem>
                            <asp:ListItem>5ft 6in</asp:ListItem>
                            <asp:ListItem>5ft 7in</asp:ListItem>
                            <asp:ListItem> 5ft 8in</asp:ListItem>
                            <asp:ListItem>5ft 9in</asp:ListItem>
                            <asp:ListItem>5ft 10in</asp:ListItem>
                            <asp:ListItem>5ft 11in</asp:ListItem>
                            <asp:ListItem> 6ft</asp:ListItem>
                            <asp:ListItem>6ft 1in</asp:ListItem>
                            <asp:ListItem>6ft 2in</asp:ListItem>
                            <asp:ListItem> 6ft 3in</asp:ListItem>
                            <asp:ListItem>6ft 4in</asp:ListItem>
                            <asp:ListItem>6ft 5in</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="drptoheight" runat="server" Width="74px" CssClass="inputt" >
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>4ft 1in</asp:ListItem>
                            <asp:ListItem>4ft 2in</asp:ListItem>
                            <asp:ListItem>4ft 3in</asp:ListItem>
                            <asp:ListItem>4ft 4in</asp:ListItem>
                            <asp:ListItem>4ft 5in</asp:ListItem>
                            <asp:ListItem>4ft 6in</asp:ListItem>
                            <asp:ListItem>4ft 7in</asp:ListItem>
                            <asp:ListItem>4ft 8in</asp:ListItem>
                            <asp:ListItem>4ft 9in</asp:ListItem>
                            <asp:ListItem>4ft 10in</asp:ListItem>
                            <asp:ListItem>4ft 11in</asp:ListItem>
                            <asp:ListItem>5ft</asp:ListItem>
                            <asp:ListItem>5ft 1in</asp:ListItem>
                            <asp:ListItem>5ft 2in</asp:ListItem>
                            <asp:ListItem>5ft 3in</asp:ListItem>
                            <asp:ListItem>5ft 4in</asp:ListItem>
                            <asp:ListItem>5ft 5in</asp:ListItem>
                            <asp:ListItem>5ft 6in</asp:ListItem>
                            <asp:ListItem>5ft 7in</asp:ListItem>
                            <asp:ListItem> 5ft 8in</asp:ListItem>
                            <asp:ListItem>5ft 9in</asp:ListItem>
                            <asp:ListItem>5ft 10in</asp:ListItem>
                            <asp:ListItem>5ft 11in</asp:ListItem>
                            <asp:ListItem> 6ft</asp:ListItem>
                            <asp:ListItem>6ft 1in</asp:ListItem>
                            <asp:ListItem>6ft 2in</asp:ListItem>
                            <asp:ListItem> 6ft 3in</asp:ListItem>
                            <asp:ListItem>6ft 4in</asp:ListItem>
                            <asp:ListItem>6ft 5in</asp:ListItem>
                        </asp:DropDownList></td>
                    <td align="left" style="width: 100px">
                        <asp:Label ID="lblhight" runat="server" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td align="left" style="width: 100px">
                        <asp:Label ID="Location" runat="server" Text="Location"></asp:Label></td>
                    <td align="left" >
                        <asp:DropDownList ID="drplocation" runat="server" Width="118px" CssClass="inputt">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>ALL</asp:ListItem>
                            <asp:ListItem>Ahmedabad</asp:ListItem>
                                    <asp:ListItem>Anand</asp:ListItem>
                                    <asp:ListItem>Bharuch</asp:ListItem>
                                    <asp:ListItem>Bhavnagar</asp:ListItem>
                                    <asp:ListItem>Bhuj</asp:ListItem>
                                    <asp:ListItem>Gandhinagar</asp:ListItem>
                                    <asp:ListItem>Godhra</asp:ListItem>
                                    <asp:ListItem>Himmatnagar</asp:ListItem>
                                    <asp:ListItem>Jamnagar</asp:ListItem>
                                    <asp:ListItem>Modasa</asp:ListItem>
                                    <asp:ListItem>Mehsana</asp:ListItem>
                                    <asp:ListItem>Patan</asp:ListItem>
                                    <asp:ListItem>Rajkot</asp:ListItem>
                                    <asp:ListItem>Surat</asp:ListItem>
                                    <asp:ListItem>Vadodara</asp:ListItem>   
                                    <asp:ListItem>Vijaynagar</asp:ListItem>
                        </asp:DropDownList></td>
                    <td align="left" style="width: 100px">
                        <asp:Label ID="lbllocation" runat="server" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td align="left" style="width: 100px; height: 24px">
                        <asp:Label ID="Label28" runat="server" Text="Education"></asp:Label></td>
                    <td align="left" style="width: 106px; height: 24px">
                        <asp:DropDownList ID="drpeducation" runat="server" Width="151px" CssClass="inputt">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>ALL</asp:ListItem>
                            <asp:ListItem>Primary</asp:ListItem>
                            <asp:ListItem>Secondary</asp:ListItem>
                            <asp:ListItem>Higher Secondary</asp:ListItem>
                            <asp:ListItem>Diploma</asp:ListItem>
                            <asp:ListItem>Graduate</asp:ListItem>
                            <asp:ListItem>Post Graduate</asp:ListItem>
                            <asp:ListItem>Doctorate</asp:ListItem>
                        </asp:DropDownList></td>
                    <td align="left" style="width: 100px; height: 24px">
                        <asp:Label ID="lbleducation" runat="server" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td align="left" style="width: 100px">
                        <asp:Label ID="Label29" runat="server" Text="FamilyType"></asp:Label></td>
                    <td align="left" >
                        <asp:RadioButtonList ID="rdofamily" runat="server" RepeatDirection="Horizontal" CssClass="inputt" Width="152px">
                            <asp:ListItem>Joint</asp:ListItem>
                            <asp:ListItem>Nuclear</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td align="left" style="width: 100px">
                        &nbsp;<asp:Label ID="lblfamily" runat="server" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td align="left" style="width: 100px">
                        <asp:Label ID="Label30" runat="server" Text="Mangal"></asp:Label></td>
                    <td align="left" >
                        <asp:RadioButtonList ID="rdomangal" runat="server" RepeatDirection="Horizontal" Width="120px" CssClass="inputt">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                    <td style="width: 100px">
                        <asp:Label ID="lblmangal" runat="server" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td align="left" style="width: 100px; height: 18px;">
                    </td>
                    <td align="left" style="width: 106px; height: 18px;">
                    </td>
                    <td style="width: 100px; height: 18px;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; height: 21px"><asp:Button ID="btnback2" runat="server" CssClass="btn" OnClick="btnback2_Click"
                            Text="Back.." CausesValidation="False" /></td>
                    <td align="right">
                        <asp:Button ID="btnpartner" runat="server" CssClass="btn" OnClick="btnpartner_Click"
                            Text="Next.." /></td>
                    <td style="width: 100px; height: 21px">
                        &nbsp;
                        </td>
                </tr>
            </table>
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View4" runat="server">
            <table>
                <tr>
                    <td style="width: 100px">
                        <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 693px">
                            <tr>
                                <td id="rc1" style="width: 8px; height: 26px">
                                </td>
                                <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                                    LOGIN DETAIL</td>
                                <td id="rc2" style="height: 26px">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: left;">
            <table style="height: 194px">
                <tr>
                    <td align="right" colspan="3">
                        <asp:Label ID="lbllogin" runat="server" ForeColor="Red"></asp:Label></td>
                    <td align="right" colspan="1" style="width: 443px">
                    </td>
                </tr>
                <tr>
                    <td align="left" style="width: 157px">
                        <asp:Label ID="Label18" runat="server" Text="UserName"></asp:Label></td>
                    <td align="left" >
                        <asp:TextBox ID="txtuname" runat="server" CssClass="inputt" AutoPostBack="True" OnTextChanged="txtuname_TextChanged"></asp:TextBox></td>
                    <td align="left" colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtuname"
                            ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator><asp:Label ID="lblavilable" runat="server" ForeColor="DarkGreen" Width="300px"></asp:Label></td>
                </tr>
                <tr>
                    <td align="left" style="width: 157px; height: 21px">
                        <asp:Label ID="Label19" runat="server" Text="Password"></asp:Label></td>
                    <td align="left" style="width: 100px; height: 21px">
                        <asp:TextBox ID="txtupass" runat="server" CssClass="inputt" TextMode="Password"></asp:TextBox></td>
                    <td align="left" style="width: 76px; height: 21px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtupass"
                            ErrorMessage="!!" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    <td align="left" >
                        </td>
                </tr>
                <tr>
                    <td align="left" style="width: 157px">
                        <asp:Label ID="Label20" runat="server" Text="Confirm-Password" Width="116px"></asp:Label></td>
                    <td align="left" style="width: 100px">
                        <asp:TextBox ID="txtupassconfirm" runat="server" CssClass="inputt" TextMode="Password"></asp:TextBox></td>
                    <td align="left" style="width: 76px">
                        </td>
                    <td align="left" style="width: 443px">
                    </td>
                </tr>
                <tr>
                    <td align="right" style="width: 157px">
                    </td>
                    <td style="width: 100px">
                    </td>
                    <td style="width: 76px">
                    </td>
                    <td style="width: 443px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 157px" align="center"><asp:Button ID="btnback3" runat="server" CssClass="btn" OnClick="btnback3_Click"
                            Text="Back.." CausesValidation="False" /></td>
                    <td style="width: 100px" align="right">
                        <asp:Button ID="btnregistration" runat="server" OnClick="btnregistration_Click" Text="Submit" CssClass="btn" /></td>
                    <td style="width: 76px">
                    </td>
                    <td style="width: 443px">
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblregistration" runat="server" ForeColor="Purple"></asp:Label></td>
                    <td colspan="1" style="width: 443px">
                    </td>
                </tr>
            </table>
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>