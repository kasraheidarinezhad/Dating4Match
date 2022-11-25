<%@ Page Language="C#" MasterPageFile="~/HomeIn.master" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="Message" Title="Matrimonial Site - Messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 592px">
        <tr>
            <td colspan="3">
                <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 585px">
                    <tr>
                        <td id="rc1" style="height: 26px">
                        </td>
                        <td bgcolor="#cd3164" class="head" style="width: 813px; height: 26px">
                            MESSAGE FOR YOU !!</td>
                        <td id="rc2" style="height: 26px">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="height: 18px;" align="center" colspan="3">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" Width="400px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 18px">
                <table style="width: 532px">
                    <tr>
                        <td>
                            <asp:LinkButton ID="lnkread" runat="server" CssClass="inputt" Font-Bold="True" OnClick="lnkread_Click"></asp:LinkButton></td>
                        <td >
                            <asp:LinkButton ID="lnkunread" runat="server" CssClass="inputt" Font-Bold="True"
                                OnClick="lnkunread_Click"></asp:LinkButton></td>
                        <td >
                            <asp:LinkButton ID="lnkdeleted" runat="server" CssClass="inputt" Font-Bold="True"
                                OnClick="lnkdeleted_Click"></asp:LinkButton></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 18px">
            </td>
            <td style="width: 100px; height: 18px; text-align: center">
                <asp:Label ID="lblerror" runat="server" ForeColor="#004000"></asp:Label></td>
            <td style="width: 100px; height: 18px">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 18px">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        &nbsp;<asp:GridView ID="GvMsg" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="515px" DataKeyNames="ID" OnRowCommand="GvMsg_RowCommand" AllowPaging="True" OnPageIndexChanging="GvMsg_PageIndexChanging" PageSize="15">
                        <Columns>
                        <asp:TemplateField HeaderText="From">
                        <ItemTemplate>
                        <asp:Image ID="imguser" runat="server" Width="60px" Height="50px" ImageUrl='<%#Eval("image") %>' />
                        <br />
                        <asp:LinkButton ID="lnkname" runat="server" Width="60px" CssClass="inputt" Text='<%#Eval("FromName") %>' CommandArgument='<%#Eval("ID") %>' CommandName="View" Font-Size="7pt"></asp:LinkButton>
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Message">
                        <ItemTemplate>
                        <asp:TextBox ID="txtmsg" runat="server" Height="53px" Text='<%#Eval("ReadMsg") %>' TextMode="MultiLine" Width="405px" ReadOnly="True"></asp:TextBox>
                        </ItemTemplate>
                        </asp:TemplateField>
                       
                        <asp:TemplateField HeaderText="Read">
                        <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Read" CssClass="inputt" CommandArgument='<%#Eval("ID") %>' Text="Read" ></asp:LinkButton>
                        <%--<br />                        
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delet" CommandArgument='<%#Eval("ID") %>'>Delete</asp:LinkButton>
                        --%></ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <RowStyle BackColor="#F7F7DE" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                        
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        &nbsp;<asp:GridView ID="GvRead" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="515px" DataKeyNames="ID" OnRowCommand="GvRead_RowCommand" AllowPaging="True" OnPageIndexChanging="GvRead_PageIndexChanging" PageSize="15">
                            <FooterStyle BackColor="#CCCC99" />
                            <RowStyle BackColor="#F7F7DE" />
                            <Columns>
                                <asp:TemplateField HeaderText="From"  >
                                    <ItemTemplate >
                                        <asp:Image ID="imguser" runat="server" Width="60px" Height="50" ImageUrl='<%#Eval("image") %>' />
                                        <br />
                                        <asp:LinkButton ID="lnkname" runat="server" Width="60px" CommandName="View" CommandArgument='<%#Eval("ID") %>' CssClass="inputt"
                                            Font-Size="7pt" Text='<%#Eval("FromName") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Message">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtmsg" runat="server" Height="53px" ReadOnly="True" Text='<%#Eval("ReadMsg") %>'
                                            TextMode="MultiLine" Width="405px"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="inputt" CommandArgument='<%#Eval("ID") %>'
                                            CommandName="Delet">Delete</asp:LinkButton>
                                        
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <asp:DataList ID="listunread" runat="server"   DataKeyField="MsgFrom">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px; height: 3px;" valign="top">
                                            <asp:Image ID="imguser" runat="server" Width="60px" Height="50" ImageUrl='<%#Eval("image") %>' /></td>
                                        <td colspan="2" rowspan="2" valign="top">
                                            <asp:TextBox ID="txtmsg" runat="server" Height="53px" ReadOnly="True" Text='<%#Eval("ReadMsg") %>'
                                                TextMode="MultiLine" Width="405px"></asp:TextBox></td>
                                        <td colspan="1" rowspan="2">
                                            <asp:Label ID="lblstatus" runat="server" Visible="False"></asp:Label>
                                            &nbsp;&nbsp;
                                            <table>
                                                <tr>
                                                    <td style="width: 100px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 100px">
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100px">
                                            <asp:LinkButton ID="lnkname" runat="server" Width="60px" CommandArgument='<%#Eval("ID") %>' CommandName="View" CssClass="inputt"
                                                Font-Size="7pt" Text='<%#Eval("FromName") %>'></asp:LinkButton></td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:GridView ID="Gvunread" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="515px" DataKeyNames="ID" OnRowCommand="GvRead_RowCommand">
                            <FooterStyle BackColor="#CCCC99" />
                            <RowStyle BackColor="#F7F7DE" />
                            <Columns>
                                <asp:TemplateField HeaderText="From">
                                    <ItemTemplate>
                                        <asp:Image ID="imguser" runat="server" Width="60px" Height="50" ImageUrl='<%#Eval("image") %>' />
                                        <br />
                                        <asp:LinkButton ID="lnkname" runat="server" Width="60px" CommandName="View" CssClass="inputt"
                                            Font-Size="7pt" Text='<%#Eval("FromName") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Message">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtmsg" runat="server" Height="53px" ReadOnly="True" Text='<%#Eval("ReadMsg") %>'
                                            TextMode="MultiLine" Width="405px"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                            </Columns>
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                    </asp:View>
                    <asp:View ID="View4" runat="server">
                        &nbsp;<asp:GridView ID="GvDelete" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="515px" DataKeyNames="ID" OnRowCommand="GvDelete_RowCommand" AllowPaging="True" OnPageIndexChanging="GvDelete_PageIndexChanging" PageSize="15">
                            <FooterStyle BackColor="#CCCC99" />
                            <RowStyle BackColor="#F7F7DE" />
                            <Columns>
                                <asp:TemplateField HeaderText="From">
                                    <ItemTemplate>
                                        <asp:Image ID="imguser" runat="server" Width="60px" Height="50" ImageUrl='<%#Eval("image") %>' />
                                        <br />
                                        <asp:LinkButton ID="lnkname" runat="server" Width="60px" CommandArgument='<%#Eval("ID") %>' CommandName="View" CssClass="inputt"
                                            Font-Size="7pt" Text='<%#Eval("FromName") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Message">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtmsg" runat="server" Height="53px" ReadOnly="True" Text='<%#Eval("ReadMsg") %>'
                                            TextMode="MultiLine" Width="405px"></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                       <%-- <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("ID") %>'
                                            CommandName="Read">Read</asp:LinkButton>
                                        <br />--%>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="inputt" CommandArgument='<%#Eval("ID") %>'
                                            CommandName="Delet">Delete</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

