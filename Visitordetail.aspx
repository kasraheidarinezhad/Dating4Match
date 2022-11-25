<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Visitordetail.aspx.cs" Inherits="Userdetail" Title="Skvivah - SabarKantha Matrimonial Site - Visitor Profile" MasterPageFile="~/HomeIn.master"%>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="p" runat="server">
    <table>
        <tr>
            <td style="width: 100px; height: 67px;">
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
            <td style="width: 100px; text-align: left;">
                <table style="height: 360px">
                    <tr>
                        <td align="left" style="width: 115px;">
                            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
                        <td align="left" style="width: 26px;">
                            <asp:Label ID="lblfnale" runat="server"></asp:Label></td>
                        <td style="width: 100px; text-align: left">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px; text-align: left">
                            <asp:Label ID="Label3" runat="server" Text="Middle Name" Width="85px"></asp:Label></td>
                        <td align="left" style="width: 26px;">
                            <asp:Label ID="lblmname" runat="server"></asp:Label></td>
                        <td align="left" style="width: 100px;">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px;">
                            <asp:Label ID="Label2" runat="server" Text=" Last Name"></asp:Label>
                        </td>
                        <td align="left" style="width: 26px;">
                            <asp:Label ID="lbllnam" runat="server"></asp:Label></td>
                        <td align="left" style="width: 100px;">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px; text-align: left">
                            <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label></td>
                        <td align="left" style="width: 26px">
                            <asp:Label ID="lblgender" runat="server"></asp:Label></td>
                        <td align="left" style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px; text-align: left">
                            <asp:Label ID="Label5" runat="server" Text="E-mail"></asp:Label></td>
                        <td align="left" style="width: 26px;">
                            <asp:Label ID="lblemail" runat="server"></asp:Label></td>
                        <td align="left" style="width: 100px;">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px; text-align: left">
                            <asp:Label ID="Label6" runat="server" Text="BirthDate"></asp:Label></td>
                        <td align="left" colspan="2">
                            <asp:Label ID="lblbirthdate" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px; text-align: left">
                            <asp:Label ID="Label7" runat="server" Text="Mobile No"></asp:Label></td>
                        <td align="left" style="width: 26px;">
                            <asp:Label ID="lblmobile" runat="server"></asp:Label></td>
                        <td align="left" style="width: 100px;">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px">
                            <asp:Label ID="Label15" runat="server" Text="Religion"></asp:Label></td>
                        <td align="left" style="width: 26px">
                            <asp:Label ID="lblreligion" runat="server"></asp:Label></td>
                        <td align="left" style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px">
                            <asp:Label ID="Label16" runat="server" Text="Cast"></asp:Label></td>
                        <td align="left" style="width: 26px">
                            <asp:Label ID="lblcast" runat="server"></asp:Label></td>
                        <td align="left" style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px">
                            <asp:Label ID="Label11" runat="server" Text="FatherName"></asp:Label></td>
                        <td align="left" style="width: 26px">
                            <asp:Label ID="lblfathername" runat="server"></asp:Label></td>
                        <td align="left" style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 115px">
                            <asp:Label ID="Label18" runat="server" Text="MotherName"></asp:Label></td>
                        <td align="left" style="width: 26px">
                            <asp:Label ID="lblmothername" runat="server"></asp:Label></td>
                        <td align="left" style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 115px; height: 10px;">
                            <asp:Label ID="lbldetail" runat="server" Text="About You"></asp:Label></td>
                        <td colspan="2" style="height: 10px">
                            &nbsp;<asp:Label ID="lblaboutyou" runat="server"></asp:Label></td>
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
        <tr>
            <td style="width: 100px; text-align: left;">
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
            <td style="width: 100px; text-align: left;">
                <table style="height: 210px">
                    <tr>
                        <td align="left" style="width: 100px">
                            <asp:Label ID="Label38" runat="server" Text="Age"></asp:Label></td>
                        <td align="left" style="width: 106px">
                            &nbsp;<asp:Label ID="lblpage" runat="server" ForeColor="Black"></asp:Label></td>
                        <td align="left" style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 100px">
                            <asp:Label ID="Height" runat="server" Text="Height"></asp:Label></td>
                        <td align="left" style="width: 106px">
                            &nbsp;<asp:Label ID="lblphight" runat="server" ForeColor="Black"></asp:Label></td>
                        <td align="left" style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 100px">
                            <asp:Label ID="Location" runat="server" Text="Location"></asp:Label></td>
                        <td align="left" style="width: 106px">
                            <asp:Label ID="lblplocation" runat="server" ForeColor="Black"></asp:Label></td>
                        <td align="left" style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 100px;">
                            <asp:Label ID="Label39" runat="server" Text="Education"></asp:Label></td>
                        <td align="left" style="width: 106px;">
                            <asp:Label ID="lblpeducation" runat="server" ForeColor="Black"></asp:Label></td>
                        <td align="left" style="width: 100px;">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 100px">
                            <asp:Label ID="Label41" runat="server" Text="FamilyType"></asp:Label></td>
                        <td align="left" style="width: 106px">
                            <asp:Label ID="lblpfamily" runat="server" ForeColor="Black"></asp:Label></td>
                        <td align="left" style="width: 100px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 100px">
                            <asp:Label ID="Label42" runat="server" Text="Mangal"></asp:Label></td>
                        <td align="left" style="width: 106px">
                            <asp:Label ID="lblpmangal" runat="server" ForeColor="Black"></asp:Label></td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;">
                        </td>
                        <td align="left" style="width: 106px;">
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