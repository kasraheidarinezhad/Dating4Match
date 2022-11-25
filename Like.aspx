<%@ Page Language="C#" MasterPageFile="~/HomeIn.master" AutoEventWireup="true" CodeFile="Like.aspx.cs" Inherits="Like" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:DataList ID="dlProducts" runat="server" ForeColor="#333333"

   OnSelectedIndexChanged="dlProducts_SelectedIndexChanged" DataKeyField="Id" CellPadding="4" Width="96px">
   <ItemTemplate>
   <asp:ImageButton ID="imgbImage" runat="server" CommandName="Select"

          ImageUrl='<%# Eval("Image") %>' /></td>
   <asp:LinkButton ID="lbtnCaption" runat="server" CommandName="Select" Text='<%# Eval("fname") %>'>

   </asp:LinkButton></td>
   </ItemTemplate>
 </asp:DataList>
 <asp:LinkButton ID="lbtnPre" OnClick="lbtnPre_Click" runat="server">Previous

</asp:LinkButton>
 <asp:DataList ID="dlPaging" runat="server" DataKeyField="PageIndex" CellPadding="5"
 RepeatDirection="Horizontal" OnItemCommand="dlPaging_ItemCommand"

OnItemDataBound="dlPaging_ItemDataBound">
<ItemTemplate>
<asp:LinkButton ID="lnkbtnPaging" runat="server" Text='<%# Eval("PageText") %>'

CommandName="Select" CommandArgument='<%# Eval("PageIndex") %>'></asp:LinkButton></a>
</ItemTemplate>
</asp:DataList>
<asp:LinkButton ID="lbtnNext" OnClick="lbtnNext_Click" runat="server">Next</asp:LinkButton>
<asp:Label ID="lblStatus" runat="server" ForeColor="Navy" Font-Size="Small" Font-Bold="True">

</asp:Label>
</asp:Content>

