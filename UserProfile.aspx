<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" Title="Matrimonial Site - User Profile" MasterPageFile="~/HomeIn.master" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="pro" runat="server">
    <table>
        <tr>
            <td style="width: 100px">
                <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 693px;
                    height: 45px">
                    <tr>
                        <td id="rc1" style="width: 8px; height: 26px">
                        </td>
                        <td bgcolor="#cd3164" class="toplinks" style="width: 813px; height: 26px; text-align: center">
                            <asp:LinkButton ID="lnkpersonall" runat="server" OnClick="lnkpersonall_Click" CausesValidation="False">PERSONAL</asp:LinkButton>
                            &nbsp; &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="LNKEDUCATIONN" runat="server" OnClick="LNKEDUCATIONN_Click" CausesValidation="False">EDUCATION</asp:LinkButton>
                            &nbsp; &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="lnkaddessss" runat="server" OnClick="lnkaddessss_Click" CausesValidation="False">ADDRESS</asp:LinkButton>
                            &nbsp; &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="lnlotherr" runat="server" OnClick="lnlotherr_Click" CausesValidation="False">OTHER</asp:LinkButton>
                            &nbsp; &nbsp; &nbsp;
                            <asp:LinkButton ID="lnkpartnerr" runat="server" OnClick="lnkpartnerr_Click" CausesValidation="False">PARTNER</asp:LinkButton></td>
                        <td id="rc2" style="height: 26px">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px">
                <table style="width: 688px">
                    <tr>
                        <td style="width: 132px">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                <table style="width: 436px; height: 480px">
                    <tr>
                        <td colspan="2" style="height: 18px; text-align: center;">
                <asp:Label ID="Label25" runat="server" Text="PERSONAL DETAIL" Width="147px" Font-Bold="True"></asp:Label></td>
                        <td style="width: 100px; height: 18px;">
                        </td>
                        <td style="width: 100px; height: 18px">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px; height: 26px">
                            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
                        <td align="left" style="width: 26px; height: 26px">
                            <asp:TextBox ID="txtfname" runat="server" CssClass="inputt"></asp:TextBox></td>
                        <td style="width: 100px; height: 26px; text-align: left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname"
                                ErrorMessage="!!"></asp:RequiredFieldValidator></td>
                        <td rowspan="12" style="width: 100px; text-align: left">
                            </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px; text-align: left">
                            <asp:Label ID="Label3" runat="server" Text="Middle Name" Width="85px"></asp:Label></td>
                        <td align="left" style="width: 26px">
                            <asp:TextBox ID="txtmname" runat="server" CssClass="inputt"></asp:TextBox></td>
                        <td align="left" style="width: 100px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmname"
                                ErrorMessage="!!"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px; height: 26px">
                            <asp:Label ID="Label2" runat="server" Text=" Last Name"></asp:Label>
                        </td>
                        <td align="left" style="width: 26px; height: 26px">
                            <asp:TextBox ID="txtlname" runat="server" CssClass="inputt"></asp:TextBox></td>
                        <td align="left" style="width: 100px; height: 26px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtlname"
                                ErrorMessage="!!"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px; text-align: left">
                            <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label></td>
                        <td align="left" style="width: 26px">
                            <asp:DropDownList ID="drpgender" runat="server" CssClass="inputt">
                                <asp:ListItem>SEELCT</asp:ListItem>
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
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                                ErrorMessage="!!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px; text-align: left">
                            <asp:Label ID="Label6" runat="server" Text="BirthDate"></asp:Label></td>
                        <td align="left" colspan="2">
                            <asp:DropDownList ID="drpDD" runat="server" Width="41px" CssClass="inputt">
                                <asp:ListItem>DD</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
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
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
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
                                <asp:ListItem>1994</asp:ListItem>
                                <asp:ListItem>1995</asp:ListItem>
                                <asp:ListItem>1996</asp:ListItem>
                                <asp:ListItem>1997</asp:ListItem>
                                <asp:ListItem>1998</asp:ListItem>
                                <asp:ListItem>1999</asp:ListItem>
                                <asp:ListItem>2000</asp:ListItem>
                                <asp:ListItem>2001</asp:ListItem>
                                <asp:ListItem>2002</asp:ListItem>
                                <asp:ListItem>2003</asp:ListItem>
                                <asp:ListItem>2004</asp:ListItem>
                                <asp:ListItem>2005</asp:ListItem>
                                <asp:ListItem>2006</asp:ListItem>
                                <asp:ListItem>2007</asp:ListItem>
                                <asp:ListItem>2008</asp:ListItem>
                                <asp:ListItem>2009</asp:ListItem>
                                <asp:ListItem>2010</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="lbldate" runat="server" ForeColor="Red"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px; height: 26px; text-align: left">
                            <asp:Label ID="Label7" runat="server" Text="Mobile No"></asp:Label></td>
                        <td align="left" style="width: 26px; height: 26px">
                            <asp:TextBox ID="txtmobile" runat="server" CssClass="inputt"></asp:TextBox></td>
                        <td align="left" style="width: 100px; height: 26px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmobile"
                                ErrorMessage="!!"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtmobile"
                                ErrorMessage="?" MaximumValue="9999999999" MinimumValue="1000000000" Type="Double"></asp:RangeValidator></td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px">
                            <asp:Label ID="Label15" runat="server" Text="Religion"></asp:Label></td>
                        <td align="left" style="width: 26px">
                            <asp:DropDownList ID="drpReligion" runat="server" Width="151px" CssClass="inputt">
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
                            <asp:Label ID="Label16" runat="server" Text="Cast"></asp:Label></td>
                        <td align="left" style="width: 26px">
                            <asp:TextBox ID="txtcast" runat="server" CssClass="inputt"></asp:TextBox></td>
                        <td align="left" style="width: 100px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcast"
                                ErrorMessage="!!"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px">
                            <asp:Label ID="Label11" runat="server" Text="FatherName"></asp:Label></td>
                        <td align="left" style="width: 26px">
                            <asp:TextBox ID="txtfathername" runat="server" CssClass="inputt"></asp:TextBox></td>
                        <td align="left" style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px">
                            <asp:Label ID="Label18" runat="server" Text="MotherName"></asp:Label></td>
                        <td align="left" style="width: 26px">
                            <asp:TextBox ID="txtmothername" runat="server" CssClass="inputt"></asp:TextBox></td>
                        <td align="left" style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 115px; text-align: left;">
                            <asp:Label ID="lbldetail" runat="server" Text="About You"></asp:Label></td>
                        <td colspan="2" style="text-align: left">
                            <asp:TextBox ID="txtdetail" runat="server" Height="56px" TextMode="MultiLine" Width="240px" CssClass="inputt" MaxLength="200"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 115px">
                        </td>
                        <td style="width: 26px">
                            <asp:Button ID="btnupdatepersonal" runat="server" Text="Update" OnClick="btnupdatepersonal_Click" CssClass="btn" /></td>
                        <td style="width: 100px">
                            </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                <table style="height: 280px">
                    <tr>
                        <td colspan="2" style="text-align: center">
                <asp:Label ID="Label26" runat="server" Text="EDUCATIONAL DETAIL" Width="201px" Font-Bold="True"></asp:Label></td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label8" runat="server" Text="Education"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:DropDownList ID="drpeducation" runat="server" Width="151px" CssClass="inputt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>Primary</asp:ListItem>
                                <asp:ListItem>Secondary</asp:ListItem>
                                <asp:ListItem>Higher Secondary</asp:ListItem>
                                <asp:ListItem>Diploma</asp:ListItem>
                                <asp:ListItem>Graduate</asp:ListItem>
                                <asp:ListItem>Post Graduate</asp:ListItem>
                                <asp:ListItem>Doctorate</asp:ListItem>
                             
                            </asp:DropDownList></td>
                        <td >
                            <asp:Label ID="lbleducation" runat="server" ForeColor="Red"></asp:Label></td>
                        <td rowspan="4" style="width: 100px">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 118px" align="left" >
                            <asp:Label ID="Label12" runat="server" Text="Occupation"></asp:Label></td>
                        <td style="width: 100px; height: 26px;">
                            <asp:TextBox ID="txtoccu" runat="server" CssClass="inputt"></asp:TextBox></td>
                        <td style="width: 100px; height: 26px;" align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtoccu"
                                ErrorMessage="??"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 118px">
                            <asp:Label ID="Label9" runat="server" Text="Occupation Address" Width="126px"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtoccuaddress" runat="server" CssClass="inputt"></asp:TextBox></td>
                        <td style="width: 100px" align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtoccuaddress"
                                ErrorMessage="??"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label10" runat="server" Text="Father Occupation" Width="119px"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtfatheroccu" runat="server" CssClass="inputt"></asp:TextBox></td>
                        <td style="width: 100px" align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtfatheroccu"
                                ErrorMessage="??"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 118px">
                            <asp:Label ID="Label28" runat="server" Text="About Job Profile " Width="119px"></asp:Label></td>
                        <td align="left" colspan="2">
                            <asp:TextBox ID="txtjobprofile" runat="server" Height="56px" TextMode="MultiLine"
                                Width="240px" MaxLength="200" CssClass="inputt"></asp:TextBox></td>
                        <td rowspan="1" style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px; height: 21px">
                        </td>
                        <td style="width: 100px; height: 21px" align="left">
                            <asp:Button ID="btnupdateEducation" runat="server" Text="Update" OnClick="btnupdateEducation_Click" CssClass="btn" /></td>
                        <td style="width: 100px; height: 21px">
                            </td>
                        <td style="width: 100px; height: 21px">
                        </td>
                    </tr>
                </table>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                <table style="height: 366px">
                    <tr>
                        <td colspan="2" style="text-align: center">
                <asp:Label ID="Label27" runat="server" Text="OTHER DETAIL" Width="141px" Font-Bold="True"></asp:Label></td>
                        <td style="width: 100px;">
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 28px;" align="left">
                            <asp:Label ID="Label13" runat="server" Text="Marital Status"></asp:Label></td>
                        <td style="width: 114px; height: 28px;">
                            <asp:DropDownList ID="drpmaritial" runat="server" Width="151px" CssClass="inputt">
                                 <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>Unmarried</asp:ListItem>
                                <asp:ListItem>Widowed</asp:ListItem>
                                <asp:ListItem>Divorced</asp:ListItem>
                            </asp:DropDownList></td>
                        <td style="width: 100px; height: 28px;">
                            <asp:Label ID="lblmaritial" runat="server" ForeColor="Red"></asp:Label></td>
                        <td style="width: 100px; height: 28px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px" align="left">
                            <asp:Label ID="Label14" runat="server" Text="Body Type"></asp:Label></td>
                        <td style="width: 114px"><asp:RadioButtonList ID="rdobody" runat="server" RepeatDirection="Horizontal" Width="200px" CssClass="inputt">
                            <asp:ListItem>Average</asp:ListItem>
                            <asp:ListItem>Athletic</asp:ListItem>
                            <asp:ListItem>Slim</asp:ListItem>
                            <asp:ListItem>Heavy</asp:ListItem>
                        </asp:RadioButtonList></td>
                        <td style="width: 100px" align="left">
                            <asp:Label ID="lblbody" runat="server" ForeColor="Red"></asp:Label></td>
                        <td rowspan="6" style="width: 100px">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;" align="left">
                            <asp:Label ID="Label17" runat="server" Text="Food" Width="80px"></asp:Label></td>
                        <td style="width: 114px; text-align: left;">
                            <asp:RadioButtonList ID="rdofood" runat="server" RepeatDirection="Horizontal" Width="232px" CssClass="inputt" Height="19px">
                                <asp:ListItem>Veg</asp:ListItem>
                                <asp:ListItem>Non-Veg</asp:ListItem>
                                <asp:ListItem>Eggitarian</asp:ListItem>
                            </asp:RadioButtonList></td>
                        <td style="width: 100px;" align="left">
                            <asp:Label ID="lblfood" runat="server" ForeColor="Red"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px" align="left">
                            <asp:Label ID="Label19" runat="server" Text="Hight" Width="44px"></asp:Label></td>
                        <td style="width: 114px"><asp:DropDownList ID="drphight" runat="server" Width="151px" CssClass="inputt">
                             <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem >4ft 1in</asp:ListItem>
                            <asp:ListItem>4ft 2in</asp:ListItem>
                            <asp:ListItem >4ft 3in</asp:ListItem>
                            <asp:ListItem >4ft 4in</asp:ListItem>
                            <asp:ListItem >4ft 5in</asp:ListItem>
                            <asp:ListItem >4ft 6in</asp:ListItem>
                            <asp:ListItem >4ft 7in</asp:ListItem>
                            <asp:ListItem >4ft 8in</asp:ListItem>
                            <asp:ListItem >4ft 9in</asp:ListItem>
                            <asp:ListItem >4ft 10in</asp:ListItem>
                            <asp:ListItem >4ft 11in</asp:ListItem>
                            <asp:ListItem >5ft</asp:ListItem>
                            <asp:ListItem >5ft 1in</asp:ListItem>
                             <asp:ListItem>5ft 2in</asp:ListItem>
                              <asp:ListItem>5ft 3in</asp:ListItem>
                               <asp:ListItem >5ft 4in</asp:ListItem>
                                <asp:ListItem >5ft 5in</asp:ListItem>
                               <asp:ListItem >5ft 6in</asp:ListItem>
                               <asp:ListItem >5ft 7in</asp:ListItem>
                               <asp:ListItem > 5ft 8in</asp:ListItem>
                                <asp:ListItem>5ft 9in</asp:ListItem>
                                 <asp:ListItem >5ft 10in</asp:ListItem>
                                  <asp:ListItem>5ft 11in</asp:ListItem>
                                   <asp:ListItem > 6ft</asp:ListItem>
                                   <asp:ListItem >6ft 1in</asp:ListItem>
                                   <asp:ListItem >6ft 2in</asp:ListItem>
                                   <asp:ListItem > 6ft 3in</asp:ListItem>
                                   <asp:ListItem >6ft 4in</asp:ListItem>
                                   <asp:ListItem >6ft 5in</asp:ListItem>
                        </asp:DropDownList></td>
                        <td style="width: 100px" align="left">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 21px" align="left">
                            <asp:Label ID="Label20" runat="server" Text="Weight" Width="44px"></asp:Label></td>
                        <td style="width: 114px; height: 21px"><asp:DropDownList ID="drpweight" runat="server" Width="151px" CssClass="inputt">
                            <asp:ListItem>SELECT</asp:ListItem>
                           <asp:ListItem>35 kg</asp:ListItem>
                           <asp:ListItem>36 kg</asp:ListItem>
                           <asp:ListItem>37 kg</asp:ListItem>
                           
                           <asp:ListItem>38 kg</asp:ListItem>
                           <asp:ListItem>39 kg</asp:ListItem>
                           <asp:ListItem>40 kg</asp:ListItem>
                           <asp:ListItem>41 kg</asp:ListItem>
                           <asp:ListItem>42 kg</asp:ListItem>
                           <asp:ListItem>43 kg</asp:ListItem>
                           <asp:ListItem>44 kg</asp:ListItem>
                           <asp:ListItem>45 kg</asp:ListItem>
                           <asp:ListItem>46 kg</asp:ListItem>
                           <asp:ListItem>47 kg</asp:ListItem>
                           <asp:ListItem>48 kg</asp:ListItem>
                           <asp:ListItem>49 kg</asp:ListItem>
                           <asp:ListItem>50 kg</asp:ListItem>
                           <asp:ListItem>51 kg</asp:ListItem>
                           <asp:ListItem>52 kg</asp:ListItem>
                           <asp:ListItem>53 kg</asp:ListItem>
                           <asp:ListItem>54 kg</asp:ListItem>
                           <asp:ListItem>55 kg</asp:ListItem>
                           <asp:ListItem>56 kg</asp:ListItem>
                           <asp:ListItem>57 kg</asp:ListItem>
                           <asp:ListItem>58 kg</asp:ListItem>
                           <asp:ListItem>59 kg</asp:ListItem>
                           <asp:ListItem>60 kg</asp:ListItem>
                           <asp:ListItem>61 kg</asp:ListItem>
                           <asp:ListItem>62 kg</asp:ListItem>
                           <asp:ListItem>63 kg</asp:ListItem>
                           <asp:ListItem>64 kg</asp:ListItem>
                           <asp:ListItem>65 kg</asp:ListItem>
                           <asp:ListItem>66 kg</asp:ListItem>
                           <asp:ListItem>67 kg</asp:ListItem>
                           <asp:ListItem>68 kg</asp:ListItem>
                           <asp:ListItem>69 kg</asp:ListItem>
                           <asp:ListItem>70 kg</asp:ListItem>
                            <asp:ListItem>71 kg</asp:ListItem>
                            <asp:ListItem>72 kg</asp:ListItem>
                            <asp:ListItem>73 kg</asp:ListItem>
                            <asp:ListItem>74 kg</asp:ListItem>
                            <asp:ListItem>75 kg</asp:ListItem>
                            <asp:ListItem>76 kg</asp:ListItem>
                            <asp:ListItem>77 kg</asp:ListItem>
                            <asp:ListItem>78 kg</asp:ListItem>
                            <asp:ListItem>79 kg</asp:ListItem>
                            <asp:ListItem>80 kg</asp:ListItem>
                            <asp:ListItem>81 kg</asp:ListItem>
                            <asp:ListItem>82 kg</asp:ListItem>
                            <asp:ListItem>83 kg</asp:ListItem>
                            <asp:ListItem>84 kg</asp:ListItem>
                            <asp:ListItem>85 kg</asp:ListItem>
                            <asp:ListItem>86 kg</asp:ListItem>
                            <asp:ListItem>87 kg</asp:ListItem>
                            <asp:ListItem>88 kg</asp:ListItem>
                            <asp:ListItem>89 kg</asp:ListItem>
                            <asp:ListItem>90 kg</asp:ListItem>
                            <asp:ListItem>91 kg</asp:ListItem>
                            <asp:ListItem>92 kg</asp:ListItem>
                            <asp:ListItem>93 kg</asp:ListItem>
                            <asp:ListItem>94 kg</asp:ListItem>
                            <asp:ListItem>95 kg</asp:ListItem>
                            <asp:ListItem>96 kg</asp:ListItem>
                            <asp:ListItem>97 kg</asp:ListItem>
                            <asp:ListItem>98 kg</asp:ListItem>
                            <asp:ListItem>99 kg</asp:ListItem>
                            <asp:ListItem>100 kg</asp:ListItem>
                            <asp:ListItem>101 kg</asp:ListItem>
                            <asp:ListItem>102 kg</asp:ListItem>
                            <asp:ListItem>103 kg</asp:ListItem>
                            <asp:ListItem>104 kg</asp:ListItem>
                            <asp:ListItem>105 kg</asp:ListItem>
                            <asp:ListItem>106 kg</asp:ListItem>
                            <asp:ListItem>107 kg</asp:ListItem>
                            <asp:ListItem>108 kg</asp:ListItem>
                            <asp:ListItem>109 kg</asp:ListItem>
                            <asp:ListItem>110 kg</asp:ListItem>
                            <asp:ListItem>111 kg</asp:ListItem>
                            <asp:ListItem>112 kg</asp:ListItem>
                            <asp:ListItem>113 kg</asp:ListItem>
                            <asp:ListItem>114 kg</asp:ListItem>
                            <asp:ListItem>115 kg</asp:ListItem>
                            <asp:ListItem>116 kg</asp:ListItem>
                            <asp:ListItem>117 kg</asp:ListItem>
                            <asp:ListItem>118 kg</asp:ListItem>
                            <asp:ListItem>119 kg</asp:ListItem>
                            <asp:ListItem>120 kg</asp:ListItem>
                        </asp:DropDownList></td>
                        <td style="width: 100px; height: 21px" align="left">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 21px" align="left">
                            <asp:Label ID="Label21" runat="server" Text="Smoking" Width="44px"></asp:Label></td>
                        <td style="width: 114px; height: 21px; text-align: left;"><asp:RadioButtonList ID="rdosmoking" runat="server" RepeatDirection="Horizontal" Width="200px" CssClass="inputt">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem>Occasionlly</asp:ListItem>
                        </asp:RadioButtonList></td>
                        <td style="width: 100px; height: 21px" align="left">
                            <asp:Label ID="lblsmok" runat="server" ForeColor="Red"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px;" align="left">
                            <asp:Label ID="Label22" runat="server" Text="Drinking" Width="44px"></asp:Label></td>
                        <td style="width: 114px;"><asp:RadioButtonList ID="rdodrinking" runat="server" RepeatDirection="Horizontal" Width="200px" CssClass="inputt">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem>Occasionlly</asp:ListItem>
                        </asp:RadioButtonList></td>
                        <td style="width: 100px;" align="left">
                            <asp:Label ID="lbldrink" runat="server" ForeColor="Red"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 21px" align="left">
                            <asp:Label ID="Label23" runat="server" Text="Blood Group" Width="90px"></asp:Label></td>
                        <td style="width: 114px; height: 21px"><asp:DropDownList ID="drpbloodgroup" runat="server" Width="151px" CssClass="inputt">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>A +ve</asp:ListItem>
                            <asp:ListItem>B +ve</asp:ListItem>
                            <asp:ListItem>AB +ve</asp:ListItem>
                            <asp:ListItem>O +ve</asp:ListItem>
                            <asp:ListItem>A -ve</asp:ListItem>
                            <asp:ListItem>B -ve</asp:ListItem>
                            <asp:ListItem>AB -ve</asp:ListItem>
                            <asp:ListItem>O -ve</asp:ListItem>
                           
                            
                            
                        </asp:DropDownList></td>
                        <td style="width: 100px; height: 21px" align="left">
                        </td>
                        <td style="width: 100px; height: 21px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 21px" align="left">
                            <asp:Label ID="Label24" runat="server" Text="Mangal" Width="73px"></asp:Label></td>
                        <td style="width: 114px; height: 21px; text-align: left;">
                            <asp:RadioButtonList ID="rdomangal" runat="server" RepeatDirection="Horizontal" Width="96px" CssClass="inputt">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:RadioButtonList></td>
                        <td style="width: 100px; height: 21px" align="left">
                            <asp:Label ID="lblmangal" runat="server" ForeColor="Red"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 114px" align="left">
                            <asp:Button ID="Button1" runat="server" Text="Update" CausesValidation="False" OnClick="Button1_Click" CssClass="btn" /></td>
                        <td style="width: 100px">
                            </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                </table>
                    </asp:View>
                    <asp:View ID="View4" runat="server">
                <table style="height: 256px">
                    <tr>
                        <td colspan="2" style="text-align: center">
                <asp:Label ID="Label34" runat="server" Text="ADDRESS DETAIL" Width="128px" Font-Bold="True"></asp:Label></td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px" align="left">
                            <asp:Label ID="Label29" runat="server" Text="Address1"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtadd1" runat="server" CssClass="inputt"></asp:TextBox></td>
                        <td style="width: 100px" align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtadd1"
                                ErrorMessage="!!"></asp:RequiredFieldValidator></td>
                        <td rowspan="5" style="width: 100px">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 26px;" align="left">
                            <asp:Label ID="Label31" runat="server" Text="Address2"></asp:Label></td>
                        <td style="width: 100px; height: 26px;">
                            <asp:TextBox ID="txtadd2" runat="server" CssClass="inputt"></asp:TextBox></td>
                        <td style="width: 100px; height: 26px;" align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtadd2"
                                ErrorMessage="!!"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 24px;" align="left">
                            <asp:Label ID="Label32" runat="server" Text="City" Width="82px"></asp:Label></td>
                        <td style="width: 100px; height: 24px;">
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
                        <td style="width: 100px; height: 24px;" align="left">
                            <asp:Label ID="lblcity" runat="server" ForeColor="Red"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px" align="left">
                            <asp:Label ID="Label30" runat="server" Text="Pincode" Width="59px"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtpincode" runat="server" CssClass="inputt"></asp:TextBox></td>
                        <td style="width: 100px" align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtpincode"
                                ErrorMessage="!!"></asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValidator4"
                                    runat="server" ControlToValidate="txtpincode" ErrorMessage="?" MaximumValue="999999"
                                    MinimumValue="100000" Type="Double"></asp:RangeValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 100px" align="left">
                            <asp:Label ID="Label33" runat="server" Text="State" Width="44px"></asp:Label></td>
                        <td style="width: 100px">
                            <asp:TextBox ID="txtdist" runat="server" ReadOnly="True" CssClass="inputt">Gujarat</asp:TextBox></td>
                        <td style="width: 100px" align="left">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 21px" align="left">
                            <asp:Label ID="Label35" runat="server" Text="Areacode" Width="64px"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:TextBox ID="txtareacode" runat="server" CssClass="inputt"></asp:TextBox></td>
                        <td style="width: 100px; height: 21px" align="left">
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtareacode"
                                ErrorMessage="?" MaximumValue="9999" MinimumValue="1000" Type="Double"></asp:RangeValidator></td>
                        <td style="width: 100px; height: 21px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 21px" align="left">
                            <asp:Label ID="Label36" runat="server" Text="LandLine No" Width="81px"></asp:Label></td>
                        <td style="width: 100px; height: 21px">
                            <asp:TextBox ID="txtlandline" runat="server" CssClass="inputt"></asp:TextBox></td>
                        <td style="width: 100px; height: 21px" align="left">
                            <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtlandline"
                                ErrorMessage="?" MaximumValue="9999999999" MinimumValue="100000" Type="Double"></asp:RangeValidator></td>
                        <td style="width: 100px; height: 21px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 21px">
                        </td>
                        <td align="left">
                            <asp:Button ID="btnaddressupdate" runat="server" Text="Update" CausesValidation="False" OnClick="btnaddressupdate_Click" CssClass="btn" /></td>
                        <td style="width: 100px; height: 21px">
                            </td>
                        <td style="width: 100px; height: 21px">
                        </td>
                    </tr>
                </table>
                    </asp:View>
                    <asp:View ID="View5" runat="server">
                        <table style="height: 288px">
                            <tr>
                                <td align="left" colspan="2" style="height: 18px; text-align: center">
                                    <asp:Label ID="Label37" runat="server" Text="PARTNER DETAIL" Font-Bold="True"></asp:Label></td>
                                <td align="left" style="width: 100px; height: 18px;">
                                </td>
                                <td align="left" style="width: 100px; height: 18px">
                                </td>
                            </tr>
                            <tr>
                                <td align="left" >
                                    <asp:Label ID="Label38" runat="server" Text="Age"></asp:Label></td>
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
                                <td align="left" >
                                    <asp:Label ID="lblage" runat="server" ForeColor="Red"></asp:Label></td>
                                <td align="left" rowspan="5" style="width: 100px">
                                    </td>
                            </tr>
                            <tr>
                                <td align="left" >
                                    <asp:Label ID="Height" runat="server" Text="Height"></asp:Label></td>
                                <td align="left" >
                                    <asp:DropDownList ID="drpfromheight" runat="server" Width="65px" CssClass="inputt">
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
                                    <asp:DropDownList ID="drptoheight" runat="server" Width="65px" CssClass="inputt">
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
                                <td align="left">
                                    <asp:Label ID="Location" runat="server" Text="Location"></asp:Label></td>
                                <td align="left">
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
                                <td align="left" >
                                    <asp:Label ID="Label39" runat="server" Text="Education"></asp:Label></td>
                                <td align="left" >
                                    <asp:DropDownList ID="drpEdu" runat="server" Width="151px" CssClass="inputt">
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
                                    <asp:Label ID="lbledu" runat="server" ForeColor="Red"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Label ID="Label41" runat="server" Text="FamilyType"></asp:Label></td>
                                <td align="left" >
                                    <asp:RadioButtonList ID="rdofamily" runat="server" RepeatDirection="Horizontal" CssClass="inputt">
                                        <asp:ListItem>Joint</asp:ListItem>
                                        <asp:ListItem>Nuclear</asp:ListItem>
                                    </asp:RadioButtonList></td>
                                <td align="left">
                                    &nbsp;<asp:Label ID="lblfamily" runat="server" ForeColor="Red"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="left" style="height: 21px" >
                                    <asp:Label ID="Label42" runat="server" Text="Mangal"></asp:Label></td>
                                <td align="left" style="height: 21px" >
                                    <asp:RadioButtonList ID="rdomanglepartner" runat="server" RepeatDirection="Horizontal"
                                        Width="104px" CssClass="inputt">
                                        <asp:ListItem>Yes</asp:ListItem>
                                        <asp:ListItem>No</asp:ListItem>
                                    </asp:RadioButtonList></td>
                                <td style="width: 100px; height: 21px;">
                                    <asp:Label ID="lblmangalpartne" runat="server" ForeColor="Red"></asp:Label></td>
                                <td style="width: 100px; height: 21px;">
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:Label ID="Label40" runat="server" Text="About Partner"></asp:Label></td>
                                <td align="left" colspan="2">
                                    <asp:TextBox ID="txtaboutpartner" runat="server" Height="56px" TextMode="MultiLine"
                                        Width="240px" MaxLength="200" CssClass="inputt"></asp:TextBox></td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px;">
                                </td>
                                <td align="left" style="width: 106px;">
                                    <asp:Button ID="btnpartnerupdate" runat="server" Text="Update" CausesValidation="False" OnClick="btnpartnerupdate_Click" CssClass="btn" /></td>
                                <td style="width: 100px;">
                                    </td>
                                <td style="width: 100px;">
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView></td>
                        <td style="width: 187px">
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
    <br />
    <br />



</asp:Content>