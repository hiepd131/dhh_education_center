<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucXacNhanHocPhi.ascx.cs" Inherits="WebHocThem.UserControls.ucXacNhanHocPhi" %>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="XacNhanHocPhi">
    <AlternatingItemTemplate>
        <tr style="background-color:#FFF8DC;">
            <td>
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            </td>
            <td>
                <asp:Label ID="BienLaiLabel" runat="server" Text='<%# Eval("BienLai") %>' />
            </td>
            <td>
                <asp:Label ID="LopLabel" runat="server" Text='<%# Eval("Lop") %>' />
            </td>
            <td>
                <asp:Label ID="UsersLabel" runat="server" Text='<%# Eval("Users") %>' />
            </td>
            <td>
                <asp:Label ID="NoiDungDKLabel" runat="server" Text='<%# Eval("NoiDungDK") %>' />
            </td>
            <td>
                <asp:Label ID="NgayDKLabel" runat="server" Text='<%# Eval("NgayDK") %>' />
            </td>
            <td>
                <asp:CheckBox ID="XacNhanCheckBox" runat="server" Checked='<%# Eval("XacNhan") %>' Enabled="false" />
            </td>
            <td>
                <asp:Label ID="SoTienLabel" runat="server" Text='<%# Eval("SoTien") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="background-color:#008A8C;color: #FFFFFF;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
            <td>
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            </td>
            <td>
                <asp:TextBox ID="BienLaiTextBox" runat="server" Text='<%# Bind("BienLai") %>' />
            </td>
            <td>
                <asp:TextBox ID="LopTextBox" runat="server" Text='<%# Bind("Lop") %>' />
            </td>
            <td>
                <asp:TextBox ID="UsersTextBox" runat="server" Text='<%# Bind("Users") %>' />
            </td>
            <td>
                <asp:TextBox ID="NoiDungDKTextBox" runat="server" Text='<%# Bind("NoiDungDK") %>' />
            </td>
            <td>
                <asp:TextBox ID="NgayDKTextBox" runat="server" Text='<%# Bind("NgayDK") %>' />
            </td>
            <td>
                <asp:CheckBox ID="XacNhanCheckBox" runat="server" Checked='<%# Bind("XacNhan") %>' />
            </td>
            <td>
                <asp:TextBox ID="SoTienTextBox" runat="server" Text='<%# Bind("SoTien") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <h2 style="text-align:center" class="text-danger">Không có học phí cần phải xác nhận</h2>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="BienLaiTextBox" runat="server" Text='<%# Bind("BienLai") %>' />
            </td>
            <td>
                <asp:TextBox ID="LopTextBox" runat="server" Text='<%# Bind("Lop") %>' />
            </td>
            <td>
                <asp:TextBox ID="UsersTextBox" runat="server" Text='<%# Bind("Users") %>' />
            </td>
            <td>
                <asp:TextBox ID="NoiDungDKTextBox" runat="server" Text='<%# Bind("NoiDungDK") %>' />
            </td>
            <td>
                <asp:TextBox ID="NgayDKTextBox" runat="server" Text='<%# Bind("NgayDK") %>' />
            </td>
            <td>
                <asp:CheckBox ID="XacNhanCheckBox" runat="server" Checked='<%# Bind("XacNhan") %>' />
            </td>
            <td>
                <asp:TextBox ID="SoTienTextBox" runat="server" Text='<%# Bind("SoTien") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color:#DCDCDC;color: #000000;">
            <td>
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            </td>
            <td>
                <asp:Label ID="BienLaiLabel" runat="server" Text='<%# Eval("BienLai") %>' />
            </td>
            <td>
                <asp:Label ID="LopLabel" runat="server" Text='<%# Eval("Lop") %>' />
            </td>
            <td>
                <asp:Label ID="UsersLabel" runat="server" Text='<%# Eval("Users") %>' />
            </td>
            <td>
                <asp:Label ID="NoiDungDKLabel" runat="server" Text='<%# Eval("NoiDungDK") %>' />
            </td>
            <td>
                <asp:Label ID="NgayDKLabel" runat="server" Text='<%# Eval("NgayDK") %>' />
            </td>
            <td>
                <asp:CheckBox ID="XacNhanCheckBox" runat="server" Checked='<%# Eval("XacNhan") %>' Enabled="false" />
            </td>
            <td>
                <asp:Label ID="SoTienLabel" runat="server" Text='<%# Eval("SoTien") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server" style="width:100%">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;width:100%">
                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                            <th runat="server"></th>
                            <th runat="server">ID</th>
                            <th runat="server">BienLai</th>
                            <th runat="server">Lop</th>
                            <th runat="server">Users</th>
                            <th runat="server">NoiDungDK</th>
                            <th runat="server">NgayDK</th>
                            <th runat="server">XacNhan</th>
                            <th runat="server">SoTien</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
            <td>
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            </td>
            <td>
                <asp:Label ID="BienLaiLabel" runat="server" Text='<%# Eval("BienLai") %>' />
            </td>
            <td>
                <asp:Label ID="LopLabel" runat="server" Text='<%# Eval("Lop") %>' />
            </td>
            <td>
                <asp:Label ID="UsersLabel" runat="server" Text='<%# Eval("Users") %>' />
            </td>
            <td>
                <asp:Label ID="NoiDungDKLabel" runat="server" Text='<%# Eval("NoiDungDK") %>' />
            </td>
            <td>
                <asp:Label ID="NgayDKLabel" runat="server" Text='<%# Eval("NgayDK") %>' />
            </td>
            <td>
                <asp:CheckBox ID="XacNhanCheckBox" runat="server" Checked='<%# Eval("XacNhan") %>' Enabled="false" />
            </td>
            <td>
                <asp:Label ID="SoTienLabel" runat="server" Text='<%# Eval("SoTien") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="XacNhanHocPhi" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="tCONFIRM" SelectCommandType="StoredProcedure" UpdateCommand="Exec P_Confirm @USER,@ID,@BienLai,@OUT Output">
    <SelectParameters>
        <asp:QueryStringParameter Name="USER" QueryStringField="id" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:QueryStringParameter Name="USER" QueryStringField="id" Type="String" />
        <asp:Parameter Name="OUT" Direction="InputOutput" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

