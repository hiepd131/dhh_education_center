<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManage.ascx.cs" Inherits="WebHocThem.UserControls.ucManage" %>

<p class="text-danger">
    <asp:Literal runat="server" ID="ErrorMessage" />
</p>
<p class="text-success">
    <asp:Literal runat="server" ID="SuccessMessage" />
</p>
    <asp:Panel ID="capQuyen" runat="server" Visible="false">
<h2 style="text-align:center">GIANG VIEN - CV</h2>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="NangCapTaiKhoan" OnItemEditing="ListView1_ItemEditing" OnItemDataBound="ListView1_ItemUpdated">
            <AlternatingItemTemplate>
                <tr style="">
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
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
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
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
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
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
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
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server" style="width:100%">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="width:100%">
                                <tr runat="server" style="">
                                    <th runat="server"></th>
                                    <th runat="server">ID</th>
                                    <th runat="server">BienLai</th>
                                    <th runat="server">Lop</th>
                                    <th runat="server">Users</th>
                                    <th runat="server">NoiDungDK</th>
                                    <th runat="server">NgayDK</th>
                                    <th runat="server">XacNhan</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
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
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="TuyenDung" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="SELECT * FROM [PhieuDangKy] WHERE (([BienLai] IS NULL) AND ([NoiDungDK] LIKE '%' + @NoiDungDK + '%'))" UpdateCommand="UPDATE [PhieuDangKy] SET [BienLai] = @BienLai, [Lop] = @Lop, [Users] = @Users, [NoiDungDK] = @NoiDungDK, [NgayDK] = @NgayDK, [XacNhan] = @XacNhan WHERE [ID] = @original_ID AND (([BienLai] = @original_BienLai) OR ([BienLai] IS NULL AND @original_BienLai IS NULL)) AND (([Lop] = @original_Lop) OR ([Lop] IS NULL AND @original_Lop IS NULL)) AND (([Users] = @original_Users) OR ([Users] IS NULL AND @original_Users IS NULL)) AND (([NoiDungDK] = @original_NoiDungDK) OR ([NoiDungDK] IS NULL AND @original_NoiDungDK IS NULL)) AND (([NgayDK] = @original_NgayDK) OR ([NgayDK] IS NULL AND @original_NgayDK IS NULL)) AND [XacNhan] = @original_XacNhan" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [PhieuDangKy] WHERE [ID] = @original_ID AND (([BienLai] = @original_BienLai) OR ([BienLai] IS NULL AND @original_BienLai IS NULL)) AND (([Lop] = @original_Lop) OR ([Lop] IS NULL AND @original_Lop IS NULL)) AND (([Users] = @original_Users) OR ([Users] IS NULL AND @original_Users IS NULL)) AND (([NoiDungDK] = @original_NoiDungDK) OR ([NoiDungDK] IS NULL AND @original_NoiDungDK IS NULL)) AND (([NgayDK] = @original_NgayDK) OR ([NgayDK] IS NULL AND @original_NgayDK IS NULL)) AND [XacNhan] = @original_XacNhan" InsertCommand="INSERT INTO [PhieuDangKy] ([BienLai], [Lop], [Users], [NoiDungDK], [NgayDK], [XacNhan]) VALUES (@BienLai, @Lop, @Users, @NoiDungDK, @NgayDK, @XacNhan)" OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_BienLai" Type="Int32" />
                <asp:Parameter Name="original_Lop" Type="Int32" />
                <asp:Parameter Name="original_Users" Type="String" />
                <asp:Parameter Name="original_NoiDungDK" Type="String" />
                <asp:Parameter DbType="Date" Name="original_NgayDK" />
                <asp:Parameter Name="original_XacNhan" Type="Boolean" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BienLai" Type="Int32" />
                <asp:Parameter Name="Lop" Type="Int32" />
                <asp:Parameter Name="Users" Type="String" />
                <asp:Parameter Name="NoiDungDK" Type="String" />
                <asp:Parameter DbType="Date" Name="NgayDK" />
                <asp:Parameter Name="XacNhan" Type="Boolean" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="UngTuyen" Name="NoiDungDK" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="BienLai" Type="Int32" />
                <asp:Parameter Name="Lop" Type="Int32" />
                <asp:Parameter Name="Users" Type="String" />
                <asp:Parameter Name="NoiDungDK" Type="String" />
                <asp:Parameter DbType="Date" Name="NgayDK" />
                <asp:Parameter Name="XacNhan" Type="Boolean" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_BienLai" Type="Int32" />
                <asp:Parameter Name="original_Lop" Type="Int32" />
                <asp:Parameter Name="original_Users" Type="String" />
                <asp:Parameter Name="original_NoiDungDK" Type="String" />
                <asp:Parameter DbType="Date" Name="original_NgayDK" />
                <asp:Parameter Name="original_XacNhan" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="NangCapTaiKhoan" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" DeleteCommand="DELETE FROM [PhieuDangKy] WHERE [ID] = @original_ID AND (([BienLai] = @original_BienLai) OR ([BienLai] IS NULL AND @original_BienLai IS NULL)) AND (([Lop] = @original_Lop) OR ([Lop] IS NULL AND @original_Lop IS NULL)) AND (([Users] = @original_Users) OR ([Users] IS NULL AND @original_Users IS NULL)) AND (([NoiDungDK] = @original_NoiDungDK) OR ([NoiDungDK] IS NULL AND @original_NoiDungDK IS NULL)) AND (([NgayDK] = @original_NgayDK) OR ([NgayDK] IS NULL AND @original_NgayDK IS NULL)) AND [XacNhan] = @original_XacNhan" InsertCommand="INSERT INTO [PhieuDangKy] ([BienLai], [Lop], [Users], [NoiDungDK], [NgayDK], [XacNhan]) VALUES (@BienLai, @Lop, @Users, @NoiDungDK, @NgayDK, @XacNhan)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PhieuDangKy] WHERE ([Users] IS NULL)" UpdateCommand="UPDATE [PhieuDangKy] SET [BienLai] = @BienLai, [Lop] = @Lop, [Users] = @Users, [NoiDungDK] = @NoiDungDK, [NgayDK] = @NgayDK, [XacNhan] = @XacNhan WHERE [ID] = @original_ID AND (([BienLai] = @original_BienLai) OR ([BienLai] IS NULL AND @original_BienLai IS NULL)) AND (([Lop] = @original_Lop) OR ([Lop] IS NULL AND @original_Lop IS NULL)) AND (([Users] = @original_Users) OR ([Users] IS NULL AND @original_Users IS NULL)) AND (([NoiDungDK] = @original_NoiDungDK) OR ([NoiDungDK] IS NULL AND @original_NoiDungDK IS NULL)) AND (([NgayDK] = @original_NgayDK) OR ([NgayDK] IS NULL AND @original_NgayDK IS NULL)) AND [XacNhan] = @original_XacNhan">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_BienLai" Type="Int32" />
                <asp:Parameter Name="original_Lop" Type="Int32" />
                <asp:Parameter Name="original_Users" Type="String" />
                <asp:Parameter Name="original_NoiDungDK" Type="String" />
                <asp:Parameter DbType="Date" Name="original_NgayDK" />
                <asp:Parameter Name="original_XacNhan" Type="Boolean" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BienLai" Type="Int32" />
                <asp:Parameter Name="Lop" Type="Int32" />
                <asp:Parameter Name="Users" Type="String" />
                <asp:Parameter Name="NoiDungDK" Type="String" />
                <asp:Parameter DbType="Date" Name="NgayDK" />
                <asp:Parameter Name="XacNhan" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BienLai" Type="Int32" />
                <asp:Parameter Name="Lop" Type="Int32" />
                <asp:Parameter Name="Users" Type="String" />
                <asp:Parameter Name="NoiDungDK" Type="String" />
                <asp:Parameter DbType="Date" Name="NgayDK" />
                <asp:Parameter Name="XacNhan" Type="Boolean" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_BienLai" Type="Int32" />
                <asp:Parameter Name="original_Lop" Type="Int32" />
                <asp:Parameter Name="original_Users" Type="String" />
                <asp:Parameter Name="original_NoiDungDK" Type="String" />
                <asp:Parameter DbType="Date" Name="original_NgayDK" />
                <asp:Parameter Name="original_XacNhan" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <hr />
        <asp:Panel Visible="false" runat="server" >
        <dt>User Roles:</dt>
        <dd>
            <p class="fieldset">
                <i class="fa fa-user"></i>
                <input class="full-width has-padding has-border" id="input_email2" name="email" type="text" placeholder="Email" runat="server">
            </p>

            <p class="fieldset">
                <i class="fa fa-user"></i>
                <input class="full-width has-padding has-border" id="input_role" name="role" type="text" placeholder="Role" runat="server">
            </p>

            <p class="fieldset">
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Lưu" CssClass="btn-edit" />
            </p>
        </dd>
        <hr /></asp:Panel>
        <h2 style="text-align:center">GIANG VIEN - LOPHOC</h2>
        <asp:ListView ID="ListView2" runat="server" DataKeyNames="ID" DataSourceID="TuyenDung">
                <AlternatingItemTemplate>
                    <tr style="">
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
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
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
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
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
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
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
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server" style="width:100%">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="width:100%">
                                    <tr runat="server" style="">
                                        <th runat="server"></th>
                                        <th runat="server">ID</th>
                                        <th runat="server">BienLai</th>
                                        <th runat="server">Lop</th>
                                        <th runat="server">Users</th>
                                        <th runat="server">NoiDungDK</th>
                                        <th runat="server">NgayDK</th>
                                        <th runat="server">XacNhan</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
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
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
    </asp:Panel>

<asp:Panel ID="Infor" runat="server">
    <h4>Change account settings</h4>
                <hr />
        <dt>Information:</dt>
        <dd>
            <asp:Image ID="Image1"  runat="server" Height="125px" Width="203px" />
            <br />
            <p class="fieldset">
                <i class="fa fa-user">
                
                </i>
                <input class="full-width has-padding has-border" id="input_email1" name="email" type="text" placeholder="Email" runat="server">
            </p>
            <p class="fieldset">
                <i class="fa fa-phone"></i>
                <input class="full-width has-padding has-border" id="input_phone" name="phone" type="text" placeholder="Số điện thoại" runat="server">
            </p>
            <p class="fieldset">
                <%--  <asp:RequiredFieldValidator runat="server" ControlToValidate="input_email"
        CssClass="text-danger" ErrorMessage="The email field is required." />--%>
                <i class="fa fa-envelope"></i>
                <input class="full-width has-padding has-border" id="input_name" name="name" type="text" placeholder="Tên" runat="server">
            </p>
            <%--<p class="fieldset">
<select name="city_id" class="form-control">
<option value="0">Nơi bạn sống</option>
<option value="1">Hà Nội</option>
<option value="2">Hồ Chí Minh</option>
<option value="3">Đà Nẵng</option>
<option value="4">Hải Phòng</option>
<option value="5">Đồng Nai</option>
<option value="6">Nghệ An</option>
<option value="7">Thanh Hóa</option>
<option value="8">Hà Tĩnh</option>
<option value="10">Quảng Ninh</option>
<option value="11">Nha Trang</option>
<option value="12">Bắc Ninh</option>
<option value="9">Khác</option>
</select>
</p>--%>
            <p class="fieldset">
                <%-- <asp:RequiredFieldValidator runat="server" ControlToValidate="input_date"
        CssClass="text-danger" ErrorMessage="The password field is required." />--%>
                <i class="fa fa-key"></i>
                <input class="full-width has-padding has-border" id="input_address" name="address" type="text" placeholder="Địa chỉ" runat="server">
            </p>

            <p class="fieldset">
                <i class="fa fa-user"></i>
                Giới tính: &nbsp;&nbsp;Nam
        <input class="full-width has-padding has-border" id="input_gender1" name="gender" type="radio" placeholder="Check vào đây nếu là Nam" runat="server">&nbsp;Nữ
        <input class="full-width has-padding has-border" id="input_gender0" name="gender" type="radio" placeholder="Check vào đây nếu là Nữ" runat="server">
            </p>

            <%--<p class="fieldset">
                 <i class="fa fa-key"></i>
                <input class="full-width has-padding has-border" id="input_img" name="input_img" type="file" placeholder="Hình ảnh" runat="server" style="padding-left:100px">
            </p>--%>
            <p style="padding-left:100px"><asp:FileUpload id="input_img" runat="server"/></p>
            <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="input_repassword"
        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
    <asp:CompareValidator runat="server" ControlToCompare="input_password" ControlToValidate="input_repassword"
        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />--%>
            <%--<p class="fieldset">
<i class="fa fa-lock"></i>
<input style="width:200px" class="full-width has-padding has-border" id="input_captcha" name="captcha" type="text" placeholder="Mã bảo mật">
<div id="captcha">
<img src="https://www.anhngumshoa.com/captcha/1666191478.51.jpg" style="width: 90; height: 30; border: 0;" alt=" " /> </div>
</p>--%>
            <%--<p class="fieldset">
    <input type="radio" id="accept-terms" value="1" name="check_confirm">
    <label for="accept-terms">Tôi đồng ý với các <a href="#">Điều khoản</a> trên website</label>
</p>--%>
            <p class="fieldset">
                <%--<input class="btn-edit" type="submit" value="Đăng ký" onclick="" runat="server">--%>
                <asp:Button ID="btnRegister" runat="server" OnClick="CreateUser_Click" Text="Lưu" CssClass="btn-edit" />
                <%-- <input class="btn-edit" type="reset" value="Làm mới" onclick="ResetForm_Click">--%>
            </p>

        </dd>
    </asp:Panel>

<hr />

    

