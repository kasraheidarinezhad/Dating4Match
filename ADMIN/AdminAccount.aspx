<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminAccount.aspx.cs" Inherits="ADMIN_AdminAccount" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>  
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style3
        {
            color: #9B0033;
        }
        .style4
        {
            width: 643px;
        }
.inputt
{font-size:13px; font-family:tahoma; color:#9B0033;}

        .style5
        {
            color: #9B0033;
            font-size: large;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="head">
    
    <span style="font-family: Algerian"><span style="font-size: 48pt" class="style3">m</span><span 
            style="font-size: 32pt" class="style3">eera</span><span
                        style="font-size: 48pt" class="style3"> m</span><span 
            style="font-size: 32pt" class="style3">atrimonial.</span><span 
            style="font-size: 20pt" class="style3">com</span></span>
        
    </div>
    <div id="main">
    <div id="left">
        <table style="border: thin solid #9B0033; width: 203px">
            <tr>
                <td class="tblhead">
                    Welcome</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btn" Height="33px" 
                        onclick="Button1_Click" Text="New Account" Width="100%" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="btn" Height="33px" 
                        onclick="Button2_Click" Text="Active Account" Width="100%" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" CssClass="btn" Height="33px" 
                        onclick="Button3_Click" Text="Deactive Account" Width="100%" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button4" runat="server" CssClass="btn" Height="33px" 
                        PostBackUrl="~/Default.aspx" Text="LogOut" Width="100%" />
                </td>
            </tr>
            </table>
        </div>
    <div id="right">
        <table class="tbl">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblselect" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="#9B0033" Visible="False"></asp:Label>
                    &nbsp;
                    <asp:DropDownList ID="drpaccount" runat="server" CssClass="txt" Visible="False" 
                        Width="160px">
                    </asp:DropDownList>
&nbsp;
                    <asp:Button ID="btnsubmit" runat="server" CssClass="btn" 
                        onclick="btnsubmit_Click" Text="Select" Visible="False" />
&nbsp;<asp:Label ID="lblmsg" runat="server" ForeColor="DarkGreen" Font-Bold="True" Font-Size="Small"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:MultiView ID="MultiView1" runat="server">
                        <asp:View ID="View1" runat="server">
                            <table class="tbl">
                                <tr>
                                    <td class="tblhead">
                                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <table align="center" class="style4">
                                            <tr>
                                                <td>
                                                    <span class="style5"><strong>ProfileID =</strong></span>
                                                    <asp:Label ID="lblpid" runat="server" Font-Bold="True" Font-Size="Large" 
                                                        ForeColor="#9B0033" style="color: #990033"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:DataList ID="listdetail" runat="server" DataKeyField="uid">
                                                        <ItemTemplate>
                                                            <table>
                                                                <tr>
                                                                    <td class="inputt" colspan="3">
                                                                        <strong>Personal Detail</strong></td>
                                                                    <td class="inputt" colspan="2">
                                                                        <strong>Address Detail</strong></td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="inputt" colspan="3">
                                                                      <%--    ProfileID :
                                                                      <asp:Label ID="lblpid" runat="server" Text='<%#Eval("profileid") %>'></asp:Label>--%>
                                                                    </td>
                                                                    <td class="inputt" colspan="2">
                                                                        &nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" style="width: 100px">
                                                                        Name -</td>
                                                                    <td align="left" colspan="2">
                                                                        <asp:Label ID="lblfname" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                                                                        <asp:Label ID="lbllname" runat="server" Text='<%#Eval("lname") %>'></asp:Label>
                                                                    </td>
                                                                    <td align="right" colspan="1">
                                                                        Address1 -
                                                                    </td>
                                                                    <td align="left" colspan="1">
                                                                        <asp:Label ID="lbladderess" runat="server" Text='<%#Eval("Address1") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" style="width: 100px; height: 18px;">
                                                                        Email -</td>
                                                                    <td align="left" colspan="2" style="height: 18px">
                                                                        <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                                                                    </td>
                                                                    <td align="right" colspan="1" style="height: 18px">
                                                                        Address2 -
                                                                    </td>
                                                                    <td align="left" colspan="1" style="height: 18px">
                                                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("Address2") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" style="width: 100px; height: 18px">
                                                                        Mobile -</td>
                                                                    <td align="left" colspan="2" style="height: 18px">
                                                                        <asp:Label ID="lblcontact" runat="server" Text='<%#Eval("mobile") %>'></asp:Label>
                                                                    </td>
                                                                    <td align="right" colspan="1" style="height: 18px">
                                                                        City -</td>
                                                                    <td align="left" colspan="1" style="height: 18px">
                                                                        <asp:Label ID="lblcity" runat="server" Text='<%#Eval("city") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" style="width: 100px; height: 18px">
                                                                        Contact -</td>
                                                                    <td align="left" colspan="2" style="height: 18px">
                                                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Areacode") %>'></asp:Label>
                                                                        -
                                                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Landline") %>'></asp:Label>
                                                                    </td>
                                                                    <td align="right" colspan="1" style="height: 18px">
                                                                        Pincode -</td>
                                                                    <td align="left" colspan="1" style="height: 18px">
                                                                        <asp:Label ID="lblpincode" runat="server" Text='<%#Eval("pincode") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" style="width: 100px; height: 18px;">
                                                                        Birth Date -</td>
                                                                    <td align="left" colspan="2" style="height: 18px">
                                                                        <asp:Label ID="lblbirthdate" runat="server" Text='<%#Eval("birthdate") %>'></asp:Label>
                                                                    </td>
                                                                    <td align="left" colspan="1" style="height: 18px">
                                                                    </td>
                                                                    <td align="left" colspan="1" style="height: 18px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" style="width: 100px; height: 18px;">
                                                                        Age -</td>
                                                                    <td align="left" colspan="2" style="height: 18px;">
                                                                        <asp:Label ID="lblage" runat="server" Text='<%#Eval("age") %>'></asp:Label>
                                                                    </td>
                                                                    <td class="inputt" colspan="2" style="height: 18px">
                                                                        <strong>Familty Detail</strong></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" style="width: 100px">
                                                                        Religion -</td>
                                                                    <td align="left" colspan="2">
                                                                        <asp:Label ID="lblreligion" runat="server" Text='<%#Eval("religion") %>'></asp:Label>
                                                                    </td>
                                                                    <td align="right" style="width: 100px">
                                                                        FatherName -</td>
                                                                    <td align="left" style="width: 100px">
                                                                        <asp:Label ID="lblfathername" runat="server" Text='<%#Eval("fathername") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right" style="width: 100px">
                                                                        Cast -</td>
                                                                    <td align="left" colspan="2">
                                                                        <asp:Label ID="lblcast" runat="server" Text='<%#Eval("cast") %>'></asp:Label>
                                                                    </td>
                                                                    <td align="right" style="width: 100px">
                                                                        MotherName -</td>
                                                                    <td align="left" style="width: 100px">
                                                                        <asp:Label ID="lblmothernAME" runat="server" Text='<%#Eval("mothername") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 100px">
                                                                    </td>
                                                                    <td style="width: 100px">
                                                                    </td>
                                                                    <td style="width: 87px">
                                                                    </td>
                                                                    <td style="width: 100px">
                                                                    </td>
                                                                    <td style="width: 100px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 100px; height: 18px">
                                                                    </td>
                                                                    <td colspan="2" style="height: 18px">
                                                                    </td>
                                                                    <td colspan="1" style="height: 18px">
                                                                    </td>
                                                                    <td colspan="1" style="height: 18px">
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </ItemTemplate>
                                                    </asp:DataList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Button ID="Button6" runat="server" CssClass="btn" OnClick="Button6_Click" 
                                                        Text="Active Account" Visible="False" />
                                                    &nbsp;&nbsp;&nbsp;
                                                    <asp:Button ID="btncancel" runat="server" CssClass="btn" 
                                                        OnClick="btncancel_Click" Text="Deactive Account" Visible="False" 
                                                        Width="158px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
        </table>
        </div>
    </div>
    </form>
</body>
</html>
