<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Userdetail.aspx.cs" Inherits="Userdetail" Title="Matrimonial Site - User Detail" MasterPageFile="~/HomeIn.master"%>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="p" runat="server">
    <table>
        <tr>
            <td style="width: 100px; height: 53px;">
                <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 693px">
                    <tr>
                        <td id="rc1" style="height: 26px; width: 8px;">
                        </td>
                        <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                            PERSONAL DETAIL</td>
                        <td id="rc2" style="height: 26px; font-size: 9.7pt; color: #3f3f3f; font-family: Arial;">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial">
            <td align="left" >
                <table style="height: 360px">
                    <tr>
                        <td align="left" style="width: 118px" >
                            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
                        <td align="left" style="width: 9px">
                            : &nbsp;
                        </td>
                        <td align="left" style="width: 197px" >
                            <asp:Label ID="lblfnale" runat="server" ForeColor="Black"></asp:Label></td>
                        <td style="width: 326px; text-align: left">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 118px" >
                            <asp:Label ID="Label3" runat="server" Text="Middle Name" Width="85px"></asp:Label></td>
                        <td align="left" style="width: 9px">
                            :</td>
                        <td align="left" style="width: 197px">
                            <asp:Label ID="lblmname" runat="server" ForeColor="Black"></asp:Label></td>
                        <td align="left" style="width: 326px;">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 118px" >
                            <asp:Label ID="Label2" runat="server" Text=" Last Name"></asp:Label>
                        </td>
                        <td align="left" style="width: 9px">
                            :</td>
                        <td align="left" style="width: 197px" >
                            <asp:Label ID="lbllnam" runat="server" ForeColor="Black"></asp:Label></td>
                        <td align="left" style="width: 326px;">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 118px" >
                            <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label></td>
                        <td align="left" style="width: 9px">
                            :</td>
                        <td align="left" style="width: 197px" >
                            <asp:Label ID="lblgender" runat="server" ForeColor="Black"></asp:Label></td>
                        <td align="left" style="width: 326px">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 118px" >
                            <asp:Label ID="Label5" runat="server" Text="E-mail"></asp:Label></td>
                        <td align="left" style="width: 9px">
                            :</td>
                        <td align="left" style="width: 197px" >
                            <asp:Label ID="lblemail" runat="server" ForeColor="Black"></asp:Label></td>
                        <td align="left" style="width: 326px;">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 118px" >
                            <asp:Label ID="Label6" runat="server" Text="BirthDate"></asp:Label></td>
                        <td align="left" colspan="1" style="width: 9px">
                            :</td>
                        <td align="left" style="width: 197px" >
                            <asp:Label ID="lblbirthdate" runat="server" ForeColor="Black"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 118px" >
                            <asp:Label ID="Label7" runat="server" Text="Mobile No"></asp:Label></td>
                        <td align="left" style="width: 9px">
                            :</td>
                        <td align="left" style="width: 197px" >
                            <asp:Label ID="lblmobile" runat="server" ForeColor="Black"></asp:Label></td>
                        <td align="left" style="width: 326px;">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 118px" >
                            <asp:Label ID="Label15" runat="server" Text="Religion"></asp:Label></td>
                        <td align="left" style="width: 9px">
                            :</td>
                        <td align="left" style="width: 197px" >
                            <asp:Label ID="lblreligion" runat="server" ForeColor="Black"></asp:Label></td>
                        <td align="left" style="width: 326px">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 118px" >
                            <asp:Label ID="Label16" runat="server" Text="Cast"></asp:Label></td>
                        <td align="left" style="width: 9px">
                            :</td>
                        <td align="left" style="width: 197px" >
                            <asp:Label ID="lblcast" runat="server" ForeColor="Black"></asp:Label></td>
                        <td align="left" style="width: 326px">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 118px" >
                            <asp:Label ID="Label11" runat="server" Text="FatherName"></asp:Label></td>
                        <td align="left" style="width: 9px">
                            :</td>
                        <td align="left" style="width: 197px" >
                            <asp:Label ID="lblfathername" runat="server" ForeColor="Black"></asp:Label></td>
                        <td align="left" style="width: 326px">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 118px" >
                            <asp:Label ID="Label18" runat="server" Text="MotherName"></asp:Label></td>
                        <td align="left" style="width: 9px">
                            :</td>
                        <td align="left" style="width: 197px">
                            <asp:Label ID="lblmothername" runat="server" ForeColor="Black"></asp:Label></td>
                        <td align="left" style="width: 326px">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 118px; height: 1px">
                            <asp:Label ID="lbldetail" runat="server" Text="About You"></asp:Label></td>
                        <td align="left" style="width: 9px; height: 1px">
                            :</td>
                        <td align="left" bgcolor="#ffe8ff" colspan="2" style="height: 1px">
                            <asp:Label ID="lblaboutyou" runat="server" ForeColor="Black"></asp:Label></td>
                    </tr>
                </table>
                <table style="width: 687px">
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 383px">
                        </td>
                        <td class="details" style="width: 100px; text-align: left">
                            <asp:LinkButton ID="lnkpersonal" runat="server" OnClick="lnkpersonal_Click">Edit Detail</asp:LinkButton></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr style="font-size: 9.7pt; color: #3f3f3f; font-family: Arial">
            <td style="width: 100px; height: 41px;" valign="top"><table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 693px">
                <tr>
                    <td id="rc1" style="height: 26px; width: 8px;">
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
                <table style="height: 176px" >
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label8" runat="server" Text="Education"></asp:Label></td>
                        <td style="width: 19px">
                            :</td>
                        <td style="width: 513px" >
                            <asp:Label ID="lbleducation" runat="server" ForeColor="Black"></asp:Label></td>
                    </tr>
                   <%-- <tr>
                        <td style="width: 118px">
                           <asp:Label ID="Label25" runat="server" Text="Branch"></asp:Label></td>
                        <td style="width: 19px">
                        </td>
                        <td style="width: 513px">
                            <asp:Label ID="lblbranch" runat="server" ForeColor="Black"></asp:Label></td>
                    </tr>--%>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label12" runat="server" Text="Occupation"></asp:Label></td>
                        <td style="width: 19px">
                            :</td>
                        <td style="width: 513px">
                            <asp:Label ID="lbloccupation" runat="server" ForeColor="Black"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label9" runat="server" Text="Occupation Address" Width="120px"></asp:Label></td>
                        <td style="width: 19px">
                            :</td>
                        <td style="width: 513px" >
                            <asp:Label ID="lblocuupationaddress" runat="server" ForeColor="Black"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label10" runat="server" Text="Father Occupation" Width="119px"></asp:Label></td>
                        <td style="width: 19px">
                            :</td>
                        <td style="width: 513px" >
                            <asp:Label ID="lblfatheroccupation" runat="server" ForeColor="Black"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 118px; height: 21px">
                            <asp:Label ID="Label26" runat="server" Text="About Job"></asp:Label></td>
                        <td style="width: 19px; height: 21px;">
                            :</td>
                        <td style="width: 513px; height: 21px;" bgcolor="#ffe8ff" colspan="1">
                            <asp:Label ID="lblaboutjob" runat="server" ForeColor="Black"></asp:Label></td>
                    </tr>
                </table><table style="width: 687px">
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 383px">
                        </td>
                        <td class="details" style="width: 100px; text-align: left">
                            <asp:LinkButton ID="lnkedu" runat="server" OnClick="lnkedu_Click">Edit Detail</asp:LinkButton></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 41px;">
                <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 693px">
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
            <td align="left">
                <table style="height: 300px">
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label13" runat="server" Text="Maritial Status"></asp:Label></td>
                        <td style="width: 14px">
                            :</td>
                        <td align="left" >
                            <asp:Label ID="lblmaritial" runat="server" ForeColor="Black"></asp:Label></td>
                        <td style="width: 100px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px">
                            <asp:Label ID="Label14" runat="server" Text="Body Type"></asp:Label></td>
                        <td style="width: 14px">
                            :</td>
                        <td>
                            <asp:Label ID="lblbody" runat="server" ForeColor="Black"></asp:Label></td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label17" runat="server" Text="Food" Width="80px"></asp:Label></td>
                        <td style="width: 14px">
                            :</td>
                        <td >
                            <asp:Label ID="lblfood" runat="server" ForeColor="Black"></asp:Label></td>
                        <td style="width: 100px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label19" runat="server" Text="Hight" Width="44px"></asp:Label></td>
                        <td style="width: 14px">
                            :</td>
                        <td>
                            <asp:Label ID="lblhight" runat="server" ForeColor="Black"></asp:Label></td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label20" runat="server" Text="Weight" Width="44px"></asp:Label></td>
                        <td style="width: 14px">
                            :</td>
                        <td >
                            <asp:Label ID="lblweight" runat="server" ForeColor="Black"></asp:Label></td>
                        <td style="width: 100px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label21" runat="server" Text="Smoking" Width="44px"></asp:Label></td>
                        <td style="width: 14px">
                            :</td>
                        <td>
                            <asp:Label ID="lblsmok" runat="server" ForeColor="Black"></asp:Label></td>
                        <td style="width: 100px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label22" runat="server" Text="Drinking" Width="44px"></asp:Label></td>
                        <td style="width: 14px">
                            :</td>
                        <td >
                            <asp:Label ID="lbldrink" runat="server" ForeColor="Black"></asp:Label></td>
                        <td style="width: 100px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px">
                            <asp:Label ID="Label23" runat="server" Text="Blood Group" Width="90px"></asp:Label></td>
                        <td style="width: 14px">
                            :</td>
                        <td>
                            <asp:Label ID="lblblood" runat="server" ForeColor="Black"></asp:Label></td>
                        <td style="width: 100px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label24" runat="server" Text="Mangal" Width="90px"></asp:Label></td>
                        <td style="width: 14px">
                            :</td>
                        <td >
                            <asp:Label ID="lblmangal" runat="server" ForeColor="Black"></asp:Label></td>
                        <td style="width: 100px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px">
                        </td>
                        <td style="width: 14px">
                        </td>
                        <td style="width: 114px">
                        </td>
                        <td style="width: 100px">
                            </td>
                    </tr>
                </table>
                <table style="width: 687px">
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 383px">
                        </td>
                        <td class="details" style="width: 100px; text-align: left">
                            <asp:LinkButton ID="lnkother" runat="server" OnClick="lnkother_Click">Edit Detail</asp:LinkButton></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 693px">
                    <tr>
                        <td id="rc1" style="height: 26px">
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
            <td align="left" >
                <table style="height: 240px">
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label29" runat="server" Text="Address1"></asp:Label></td>
                        <td style="width: 13px">
                            :</td>
                        <td>
                            <asp:Label ID="lbladd1" runat="server" ForeColor="Black"></asp:Label></td>
                        <td style="width: 100px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label31" runat="server" Text="Address2"></asp:Label></td>
                        <td style="width: 13px">
                            :</td>
                        <td >
                            <asp:Label ID="lbladd2" runat="server" ForeColor="Black"></asp:Label></td>
                        <td style="width: 100px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px">
                            <asp:Label ID="Label32" runat="server" Text="City" Width="96px"></asp:Label></td>
                        <td style="width: 13px">
                            :</td>
                        <td >
                            <asp:Label ID="lblcity" runat="server" ForeColor="Black"></asp:Label></td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label30" runat="server" Text="Pincode" Width="88px"></asp:Label></td>
                        <td style="width: 13px">
                            :</td>
                        <td >
                            <asp:Label ID="lblpincode" runat="server" ForeColor="Black"></asp:Label></td>
                        <td style="width: 100px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label33" runat="server" Text="State" Width="88px"></asp:Label></td>
                        <td style="width: 13px">
                            :</td>
                        <td >
                            <asp:Label ID="lblpincode0" runat="server" ForeColor="Black">Gujarat</asp:Label></td>
                        <td style="width: 100px; height: 3px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px">
                            <asp:Label ID="Label35" runat="server" Text="Areacode" Width="88px"></asp:Label></td>
                        <td style="width: 13px">
                            :</td>
                        <td>
                            <asp:Label ID="lblareacode" runat="server" ForeColor="Black"></asp:Label></td>
                        <td style="width: 100px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px">
                            <asp:Label ID="Label36" runat="server" Text="LandLine No" Width="88px"></asp:Label></td>
                        <td style="width: 13px">
                            :</td>
                        <td>
                            <asp:Label ID="lbllandline" runat="server" ForeColor="Black"></asp:Label></td>
                        <td style="width: 100px;">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 118px;">
                        </td>
                        <td style="width: 13px">
                        </td>
                        <td style="width: 100px;">
                        </td>
                        <td style="width: 100px;">
                            </td>
                    </tr>
                </table>
                <table style="width: 687px">
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 383px">
                        </td>
                        <td class="details" style="width: 100px; text-align: left">
                            <asp:LinkButton ID="lnkaddress" runat="server" OnClick="lnkaddress_Click">Edit Detail</asp:LinkButton></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 693px">
                    <tr>
                        <td id="rc1" style="height: 26px">
                        </td>
                        <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                            PARTNER DETAIL</td>
                        <td id="rc2" style="height: 26px; width: 8px;">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="left" >
                <table style="height: 210px">
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label38" runat="server" Text="Age"></asp:Label></td>
                        <td style="width: 9px">
                            :</td>
                        <td style="width: 528px" >
                            &nbsp;<asp:Label ID="lblpage" runat="server" ForeColor="Black"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Height" runat="server" Text="Height"></asp:Label></td>
                        <td style="width: 9px">
                            :</td>
                        <td style="width: 528px">
                            &nbsp;<asp:Label ID="lblphight" runat="server" ForeColor="Black"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Location" runat="server" Text="Location"></asp:Label></td>
                        <td style="width: 9px">
                            :</td>
                        <td style="width: 528px" >
                            <asp:Label ID="lblplocation" runat="server" ForeColor="Black"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label39" runat="server" Text="Education"></asp:Label></td>
                        <td style="width: 9px">
                            :</td>
                        <td style="width: 528px" >
                            <asp:Label ID="lblpeducation" runat="server" ForeColor="Black"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 118px">
                            <asp:Label ID="Label41" runat="server" Text="FamilyType"></asp:Label></td>
                        <td style="width: 9px">
                            :</td>
                        <td style="width: 528px" >
                            <asp:Label ID="lblpfamily" runat="server" ForeColor="Black"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 118px" >
                            <asp:Label ID="Label42" runat="server" Text="Mangal"></asp:Label></td>
                        <td style="width: 9px">
                            :</td>
                        <td style="width: 528px" >
                            <asp:Label ID="lblpmangal" runat="server" ForeColor="Black"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 118px;">
                            <asp:Label ID="Label27" runat="server" Text="About Partner"></asp:Label></td>
                        <td align="left" style="width: 9px">
                            :</td>
                        <td align="left" style="width: 528px;" bgcolor="#ffe8ff">
                            <asp:Label ID="lblaboutpartner" runat="server" ForeColor="Black"></asp:Label></td>
                    </tr>
                </table>
                <table style="width: 687px">
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 383px">
                        </td>
                        <td class="details" style="width: 100px; text-align: left">
                            <asp:LinkButton ID="lnkpartner" runat="server" OnClick="lnkpartner_Click">Edit Detail</asp:LinkButton></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100px"><table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 693px; height: 44px;">
                <tr>
                    <td id="rc1" style="height: 8px">
                    </td>
                    <td bgcolor="#cd3164" class="head" style="width: 813px; height: 8px">
                    </td>
                    <td id="rc2" style="height: 8px">
                    </td>
                </tr>
            </table>
            </td>
        </tr>
    </table>
</asp:Content>