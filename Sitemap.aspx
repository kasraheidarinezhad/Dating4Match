<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Sitemap.aspx.cs"  Inherits="Sitemap" Title="Matrimonial Site - Sitemap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 590px">
        <tr>
            <td colspan="3">
                <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 585px">
                    <tr>
                        <td id="rc1" style="height: 26px">
                        </td>
                        <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                            &nbsp;SITE MAP
                        </td>
                        <td id="rc2" style="height: 26px">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="3" style="height: 18px">
                <br />
            </td>
        </tr>
        </table>
    <table style="width: 584px">
        <tr>
            <td class="map">
                Dating4Match Website</td>
        </tr>
        <tr>
            <td >
                <asp:HyperLink ID="lnkhome" runat="server" CssClass="inputt" NavigateUrl="~/Home.aspx">HOME</asp:HyperLink></td>
        </tr>
        <tr>
            <td >
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="map">
                Dating4Match - My Account</td>
        </tr>
        <tr>
            <td >
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="inputt" NavigateUrl="~/Registration.aspx">REGISTER</asp:HyperLink>&nbsp;
                &nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="inputt" NavigateUrl="~/Home.aspx">SIGN-IN</asp:HyperLink>
                &nbsp; &nbsp;
                <asp:HyperLink ID="HyperLink3" runat="server" CssClass="inputt" NavigateUrl="~/FPassword.aspx">FORGOT PASSWORD</asp:HyperLink></td>
        </tr>
        <tr>
            <td >
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="map" >
                Meera Matromonial - Member Services</td>
        </tr>
        <tr>
            <td >
                <asp:HyperLink ID="HyperLink4" runat="server" CssClass="inputt" NavigateUrl="~/Registration.aspx">MY INFO</asp:HyperLink>
                &nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink5" runat="server" CssClass="inputt" NavigateUrl="~/Registration.aspx">MESSAGES</asp:HyperLink>
                &nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink6" runat="server" CssClass="inputt" NavigateUrl="~/Registration.aspx">PROFILE</asp:HyperLink>
                &nbsp; &nbsp;<asp:HyperLink ID="HyperLink11" runat="server" CssClass="inputt" NavigateUrl="~/Registration.aspx">MESSAGES</asp:HyperLink></td>
        </tr>
        <tr>
            <td >
                <asp:HyperLink ID="HyperLink7" runat="server" CssClass="inputt" NavigateUrl="~/Registration.aspx">MY ACCOUNT</asp:HyperLink>
                &nbsp; &nbsp;
                <asp:HyperLink ID="HyperLink8" runat="server" CssClass="inputt" NavigateUrl="~/Registration.aspx">PARTNER PROFILE</asp:HyperLink>
                &nbsp; &nbsp;
                <asp:HyperLink ID="HyperLink9" runat="server" CssClass="inputt" NavigateUrl="~/Registration.aspx">CHANGE PASSWORD</asp:HyperLink>
                &nbsp; &nbsp;
                <asp:HyperLink ID="HyperLink10" runat="server" CssClass="inputt" NavigateUrl="~/Registration.aspx">PARTNER ALERT</asp:HyperLink>
                &nbsp; &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td >
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="map" >
                Dating4Match - Search Partner Profile</td>
        </tr>
        <tr>
            <td >
                <asp:HyperLink ID="HyperLink12" runat="server" CssClass="inputt" NavigateUrl="~/Registration.aspx">SIMPLE SERACH</asp:HyperLink>
                &nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink13" runat="server" CssClass="inputt" NavigateUrl="~/Registration.aspx">ADVANCE SEARCH</asp:HyperLink>
                &nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink14" runat="server" CssClass="inputt" NavigateUrl="~/Registration.aspx">ALERT SERACH</asp:HyperLink></td>
        </tr>
    </table>
    <br />
</asp:Content>

