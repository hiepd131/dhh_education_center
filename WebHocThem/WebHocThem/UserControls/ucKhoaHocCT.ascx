<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucKhoaHocCT.ascx.cs" Inherits="WebHocThem.UserControls.ucKhoaHocCT" %>
<asp:SqlDataSource ID="KhoaHocCT" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="SELECT [ID], [TenKhoaHoc], [MonHoc], [Levels], [NgayKhaiGiang], [NgayKetThuc], [HocPhi], [MoTa] ,[HinhAnh] FROM [KhoaHoc] WHERE (([ID] = @ID) AND ([MonHoc] = @MonHoc) AND ([Levels] = @Levels))">
    <SelectParameters>
        <asp:QueryStringParameter Name="ID" QueryStringField="kh" Type="Int32" />
        <asp:QueryStringParameter Name="MonHoc" QueryStringField="mh" Type="Int32" />
        <asp:QueryStringParameter Name="Levels" QueryStringField="lv" Type="Double" />
    </SelectParameters>
</asp:SqlDataSource>

<asp:ListView ID="ListView1" runat="server" DataSourceID="KhoaHocCT" DataKeyNames="ID,MonHoc,Levels">
    <AlternatingItemTemplate>
        <li style="background-color: #FFF8DC;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenKhoaHoc:
            <asp:Label ID="TenKhoaHocLabel" runat="server" Text='<%# Eval("TenKhoaHoc") %>' />
            <br />
            MonHoc:
            <asp:Label ID="MonHocLabel" runat="server" Text='<%# Eval("MonHoc") %>' />
            <br />
            Levels:
            <asp:Label ID="LevelsLabel" runat="server" Text='<%# Eval("Levels") %>' />
            <br />
            NgayKhaiGiang:
            <asp:Label ID="NgayKhaiGiangLabel" runat="server" Text='<%# Eval("NgayKhaiGiang") %>' />
            <br />
            NgayKetThuc:
            <asp:Label ID="NgayKetThucLabel" runat="server" Text='<%# Eval("NgayKetThuc") %>' />
            <br />
            HocPhi:
            <asp:Label ID="HocPhiLabel" runat="server" Text='<%# Eval("HocPhi") %>' />
            <br />
            MoTa:
            <asp:Label ID="MoTaLabel" runat="server" Text='<%# Eval("MoTa") %>' />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "/LopHocKH.aspx?kh="+Eval("ID")+"&mh="+Eval("MonHoc")+"&lv="+Eval("Levels") %>'>Chi tiết lớp của khóa học</asp:HyperLink>
            
        </li>
            <img alt="" src='<%# Eval("HinhAnh") %>' />
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenKhoaHoc:
            <asp:TextBox ID="TenKhoaHocTextBox" runat="server" Text='<%# Bind("TenKhoaHoc") %>' />
            <br />
            MonHoc:
            <asp:Label ID="MonHocLabel1" runat="server" Text='<%# Eval("MonHoc") %>' />
            <br />
            Levels:
            <asp:Label ID="LevelsLabel1" runat="server" Text='<%# Eval("Levels") %>' />
            <br />
            NgayKhaiGiang:
            <asp:TextBox ID="NgayKhaiGiangTextBox" runat="server" Text='<%# Bind("NgayKhaiGiang") %>' />
            <br />
            NgayKetThuc:
            <asp:TextBox ID="NgayKetThucTextBox" runat="server" Text='<%# Bind("NgayKetThuc") %>' />
            <br />
            HocPhi:
            <asp:TextBox ID="HocPhiTextBox" runat="server" Text='<%# Bind("HocPhi") %>' />
            <br />
            MoTa:
            <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
            <br />
            HinhAnh:
            <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        No data was returned.
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="">ID:
            <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
            <br />TenKhoaHoc:
            <asp:TextBox ID="TenKhoaHocTextBox" runat="server" Text='<%# Bind("TenKhoaHoc") %>' />
            <br />MonHoc:
            <asp:TextBox ID="MonHocTextBox" runat="server" Text='<%# Bind("MonHoc") %>' />
            <br />Levels:
            <asp:TextBox ID="LevelsTextBox" runat="server" Text='<%# Bind("Levels") %>' />
            <br />NgayKhaiGiang:
            <asp:TextBox ID="NgayKhaiGiangTextBox" runat="server" Text='<%# Bind("NgayKhaiGiang") %>' />
            <br />NgayKetThuc:
            <asp:TextBox ID="NgayKetThucTextBox" runat="server" Text='<%# Bind("NgayKetThuc") %>' />
            <br />HocPhi:
            <asp:TextBox ID="HocPhiTextBox" runat="server" Text='<%# Bind("HocPhi") %>' />
            <br />MoTa:
            <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
            <br />
            HinhAnh:
            <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
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
            TenKhoaHoc:
            <asp:Label ID="TenKhoaHocLabel" runat="server" Text='<%# Eval("TenKhoaHoc") %>' />
            <br />
            MonHoc:
            <asp:Label ID="MonHocLabel" runat="server" Text='<%# Eval("MonHoc") %>' />
            <br />
            Levels:
            <asp:Label ID="LevelsLabel" runat="server" Text='<%# Eval("Levels") %>' />
            <br />
            NgayKhaiGiang:
            <asp:Label ID="NgayKhaiGiangLabel" runat="server" Text='<%# Eval("NgayKhaiGiang") %>' />
            <br />
            NgayKetThuc:
            <asp:Label ID="NgayKetThucLabel" runat="server" Text='<%# Eval("NgayKetThuc") %>' />
            <br />
            HocPhi:
            <asp:Label ID="HocPhiLabel" runat="server" Text='<%# Eval("HocPhi") %>' />
            <br />
            MoTa:
            <asp:Label ID="MoTaLabel" runat="server" Text='<%# Eval("MoTa") %>' />
            <br />
            <img alt="" src='<%# Eval("HinhAnh") %>' /> <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "/LopHocKH.aspx?kh="+Eval("ID")+"&mh="+Eval("MonHoc")+"&lv="+Eval("Levels") %>'>Chi tiết lớp của khóa học</asp:HyperLink>
            
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;text-align:center">
            <li runat="server" id="itemPlaceholder"/>
        </ul>
        <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenKhoaHoc:
            <asp:Label ID="TenKhoaHocLabel" runat="server" Text='<%# Eval("TenKhoaHoc") %>' />
            <br />
            MonHoc:
            <asp:Label ID="MonHocLabel" runat="server" Text='<%# Eval("MonHoc") %>' />
            <br />
            Levels:
            <asp:Label ID="LevelsLabel" runat="server" Text='<%# Eval("Levels") %>' />
            <br />
            NgayKhaiGiang:
            <asp:Label ID="NgayKhaiGiangLabel" runat="server" Text='<%# Eval("NgayKhaiGiang") %>' />
            <br />
            NgayKetThuc:
            <asp:Label ID="NgayKetThucLabel" runat="server" Text='<%# Eval("NgayKetThuc") %>' />
            <br />
            HocPhi:
            <asp:Label ID="HocPhiLabel" runat="server" Text='<%# Eval("HocPhi") %>' />
            <br />
            MoTa:
            <asp:Label ID="MoTaLabel" runat="server" Text='<%# Eval("MoTa") %>' />
            <br />
            HinhAnh:
            <asp:Label ID="HinhAnhLabel" runat="server" Text='<%# Eval("HinhAnh") %>' />
            <br />
        </li>
    </SelectedItemTemplate>
</asp:ListView>


