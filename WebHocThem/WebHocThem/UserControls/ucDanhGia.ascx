<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDanhGia.ascx.cs" Inherits="WebHocThem.UserControls.ucDanhGia" %>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="PhieuDangKy" DataSourceID="DanhGia">
    <AlternatingItemTemplate>
        <li style="background-color: #FFF8DC;">DiemDG:
            <asp:Label ID="DiemDGLabel" runat="server" Text='<%# Eval("DiemDG") %>' />
            <br />
            NoiDungDG:
            <asp:Label ID="NoiDungDGLabel" runat="server" Text='<%# Eval("NoiDungDG") %>' />
            <br />
            PhieuDangKy:
            <asp:Label ID="PhieuDangKyLabel" runat="server" Text='<%# Eval("PhieuDangKy") %>' />
            <br />
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">DiemDG:
            <asp:TextBox ID="DiemDGTextBox" runat="server" Text='<%# Bind("DiemDG") %>' />
            <br />
            NoiDungDG:
            <asp:TextBox ID="NoiDungDGTextBox" runat="server" Text='<%# Bind("NoiDungDG") %>' />
            <br />
            PhieuDangKy:
            <asp:Label ID="PhieuDangKyLabel1" runat="server" Text='<%# Eval("PhieuDangKy") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <h2 style="text-align:center" class="text-danger">Không có đánh giá nào</h2>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="">DiemDG:
            <asp:TextBox ID="DiemDGTextBox" runat="server" Text='<%# Bind("DiemDG") %>' />
            <br />NoiDungDG:
            <asp:TextBox ID="NoiDungDGTextBox" runat="server" Text='<%# Bind("NoiDungDG") %>' />
            <br />PhieuDangKy:
            <asp:TextBox ID="PhieuDangKyTextBox" runat="server" Text='<%# Bind("PhieuDangKy") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemSeparatorTemplate>
<br />
    </ItemSeparatorTemplate>
    <ItemTemplate>
        <li style="background-color: #DCDCDC;color: #000000;">DiemDG:
            <asp:Label ID="DiemDGLabel" runat="server" Text='<%# Eval("DiemDG") %>' />
            <br />
            NoiDungDG:
            <asp:Label ID="NoiDungDGLabel" runat="server" Text='<%# Eval("NoiDungDG") %>' />
            <br />
            PhieuDangKy:
            <asp:Label ID="PhieuDangKyLabel" runat="server" Text='<%# Eval("PhieuDangKy") %>' />
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
        <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">DiemDG:
            <asp:Label ID="DiemDGLabel" runat="server" Text='<%# Eval("DiemDG") %>' />
            <br />
            NoiDungDG:
            <asp:Label ID="NoiDungDGLabel" runat="server" Text='<%# Eval("NoiDungDG") %>' />
            <br />
            PhieuDangKy:
            <asp:Label ID="PhieuDangKyLabel" runat="server" Text='<%# Eval("PhieuDangKy") %>' />
            <br />
        </li>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="DanhGia" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="SELECT * FROM [PhieuDanhGia] WHERE ([DiemDG] &gt;= @DiemDG)">
    <SelectParameters>
        <asp:Parameter DefaultValue="5" Name="DiemDG" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>

