<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucKetQuaKHALL.ascx.cs" Inherits="WebHocThem.UserControls.ucKetQuaKHALL" %>
<asp:ListView ID="ListView1" runat="server" DataSourceID="KetQuaKHALL">
    <AlternatingItemTemplate>
        <li style="background-color: #FFF8DC;">
            <asp:Label ID="ULabel" runat="server" Text='<%# Eval("U") %>' />
            <br />
            KHOAHOC:
            <asp:Label ID="KHLabel" runat="server" Text='<%# Eval("KH") %>' />
            <br />
            MONHOC:
            <asp:Label ID="MHLabel" runat="server" Text='<%# Eval("MH") %>' />
            <br />
            LEVELS:
            <asp:Label ID="LVLabel" runat="server" Text='<%# Eval("LV") %>' />
            <br />
            XEPLOAI:
            <asp:Label ID="TLVLabel" runat="server" Text='<%# Eval("TLV") %>' />
            <br />
            DTB:
            <asp:Label ID="DTBLabel" runat="server" Text='<%# Eval("DTB") %>' />
            <br />
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">U:
            <asp:TextBox ID="UTextBox" runat="server" Text='<%# Bind("U") %>' />
            <br />
            KH:
            <asp:TextBox ID="KHTextBox" runat="server" Text='<%# Bind("KH") %>' />
            <br />
            MH:
            <asp:TextBox ID="MHTextBox" runat="server" Text='<%# Bind("MH") %>' />
            <br />
            LV:
            <asp:TextBox ID="LVTextBox" runat="server" Text='<%# Bind("LV") %>' />
            <br />
            TLV:
            <asp:TextBox ID="TLVTextBox" runat="server" Text='<%# Bind("TLV") %>' />
            <br />
            DTB:
            <asp:TextBox ID="DTBTextBox" runat="server" Text='<%# Bind("DTB") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        No data was returned.
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="">U:
            <asp:TextBox ID="UTextBox" runat="server" Text='<%# Bind("U") %>' />
            <br />KH:
            <asp:TextBox ID="KHTextBox" runat="server" Text='<%# Bind("KH") %>' />
            <br />MH:
            <asp:TextBox ID="MHTextBox" runat="server" Text='<%# Bind("MH") %>' />
            <br />LV:
            <asp:TextBox ID="LVTextBox" runat="server" Text='<%# Bind("LV") %>' />
            <br />TLV:
            <asp:TextBox ID="TLVTextBox" runat="server" Text='<%# Bind("TLV") %>' />
            <br />
            DTB:
            <asp:TextBox ID="DTBTextBox" runat="server" Text='<%# Bind("DTB") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemSeparatorTemplate>
<br />
    </ItemSeparatorTemplate>
    <ItemTemplate>
        <li style="background-color: #DCDCDC;color: #000000;">
            <asp:Label ID="ULabel" runat="server" Text='<%# Eval("U") %>' />
            <br />
            KHOAHOC:
            <asp:Label ID="KHLabel" runat="server" Text='<%# Eval("KH") %>' />
            <br />
            MONHOC:
            <asp:Label ID="MHLabel" runat="server" Text='<%# Eval("MH") %>' />
            <br />
            LEVELS:
            <asp:Label ID="LVLabel" runat="server" Text='<%# Eval("LV") %>' />
            <br />
            XEPLOAI:
            <asp:Label ID="TLVLabel" runat="server" Text='<%# Eval("TLV") %>' />
            <br />
            DTB:
            <asp:Label ID="DTBLabel" runat="server" Text='<%# Eval("DTB") %>' />
            <br />
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;text-align:center">
            <li runat="server" id="itemPlaceholder" />
        </ul>
        <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">U:
            <asp:Label ID="ULabel" runat="server" Text='<%# Eval("U") %>' />
            <br />
            KH:
            <asp:Label ID="KHLabel" runat="server" Text='<%# Eval("KH") %>' />
            <br />
            MH:
            <asp:Label ID="MHLabel" runat="server" Text='<%# Eval("MH") %>' />
            <br />
            LV:
            <asp:Label ID="LVLabel" runat="server" Text='<%# Eval("LV") %>' />
            <br />
            TLV:
            <asp:Label ID="TLVLabel" runat="server" Text='<%# Eval("TLV") %>' />
            <br />
            DTB:
            <asp:Label ID="DTBLabel" runat="server" Text='<%# Eval("DTB") %>' />
            <br />
        </li>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="KetQuaKHALL" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="tKETQUAKHALL" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

