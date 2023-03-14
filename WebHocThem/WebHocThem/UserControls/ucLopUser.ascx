<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucLopUser.ascx.cs" Inherits="WebHocThem.UserControls.ucLopUser" %>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="LopHocUser">
    <AlternatingItemTemplate>
        <li style="background-color: #FFF8DC;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenLop:
            <asp:Label ID="TenLopLabel" runat="server" Text='<%# Eval("TenLop") %>' />
            <br />
            SoLuong:
            <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Eval("SoLuong") %>' />
            <br />
            MonHoc:
            <asp:Label ID="MonHocLabel" runat="server" Text='<%# Eval("MonHoc") %>' />
            <br />
            Levels:
            <asp:Label ID="LevelsLabel" runat="server" Text='<%# Eval("Levels") %>' />
            <br />
            KhoaHoc:
            <asp:Label ID="KhoaHocLabel" runat="server" Text='<%# Eval("KhoaHoc") %>' />
            <br />
            GiaoVien:
            <asp:Label ID="GiaoVienLabel" runat="server" Text='<%# Eval("GiaoVien") %>' />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"/LopHocCT.aspx?id="+Context.User.Identity.GetUserName()+"&lop="+Eval("ID") %>'>Danh sách thành viên</asp:HyperLink>
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenLop:
            <asp:TextBox ID="TenLopTextBox" runat="server" Text='<%# Bind("TenLop") %>' />
            <br />
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            MonHoc:
            <asp:TextBox ID="MonHocTextBox" runat="server" Text='<%# Bind("MonHoc") %>' />
            <br />
            Levels:
            <asp:TextBox ID="LevelsTextBox" runat="server" Text='<%# Bind("Levels") %>' />
            <br />
            KhoaHoc:
            <asp:TextBox ID="KhoaHocTextBox" runat="server" Text='<%# Bind("KhoaHoc") %>' />
            <br />
            GiaoVien:
            <asp:TextBox ID="GiaoVienTextBox" runat="server" Text='<%# Bind("GiaoVien") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <h2 style="text-align:center" class="text-danger">Hiện tại bạn chưa tham gia lớp học nào</h2>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="">ID:
            <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
            <br />TenLop:
            <asp:TextBox ID="TenLopTextBox" runat="server" Text='<%# Bind("TenLop") %>' />
            <br />SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />MonHoc:
            <asp:TextBox ID="MonHocTextBox" runat="server" Text='<%# Bind("MonHoc") %>' />
            <br />Levels:
            <asp:TextBox ID="LevelsTextBox" runat="server" Text='<%# Bind("Levels") %>' />
            <br />KhoaHoc:
            <asp:TextBox ID="KhoaHocTextBox" runat="server" Text='<%# Bind("KhoaHoc") %>' />
            <br />GiaoVien:
            <asp:TextBox ID="GiaoVienTextBox" runat="server" Text='<%# Bind("GiaoVien") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemSeparatorTemplate>
<br />
    </ItemSeparatorTemplate>
    <ItemTemplate>
        <li style="background-color: #DCDCDC;color: #000000;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenLop:
            <asp:Label ID="TenLopLabel" runat="server" Text='<%# Eval("TenLop") %>' />
            <br />
            SoLuong:
            <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Eval("SoLuong") %>' />
            <br />
            MonHoc:
            <asp:Label ID="MonHocLabel" runat="server" Text='<%# Eval("MonHoc") %>' />
            <br />
            Levels:
            <asp:Label ID="LevelsLabel" runat="server" Text='<%# Eval("Levels") %>' />
            <br />
            KhoaHoc:
            <asp:Label ID="KhoaHocLabel" runat="server" Text='<%# Eval("KhoaHoc") %>' />
            <br />
            GiaoVien:
            <asp:Label ID="GiaoVienLabel" runat="server" Text='<%# Eval("GiaoVien") %>' />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"/LopHocCT.aspx?id="+Context.User.Identity.GetUserName()+"&lop="+Eval("ID") %>'>Danh sách thành viên</asp:HyperLink>
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif; text-align:center">
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
        <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenLop:
            <asp:Label ID="TenLopLabel" runat="server" Text='<%# Eval("TenLop") %>' />
            <br />
            SoLuong:
            <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Eval("SoLuong") %>' />
            <br />
            MonHoc:
            <asp:Label ID="MonHocLabel" runat="server" Text='<%# Eval("MonHoc") %>' />
            <br />
            Levels:
            <asp:Label ID="LevelsLabel" runat="server" Text='<%# Eval("Levels") %>' />
            <br />
            KhoaHoc:
            <asp:Label ID="KhoaHocLabel" runat="server" Text='<%# Eval("KhoaHoc") %>' />
            <br />
            GiaoVien:
            <asp:Label ID="GiaoVienLabel" runat="server" Text='<%# Eval("GiaoVien") %>' />
            <br />
        </li>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="LopHocUser" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="tLOPUSER" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:QueryStringParameter Name="USER" QueryStringField="id" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>


