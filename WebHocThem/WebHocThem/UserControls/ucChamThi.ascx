<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucChamThi.ascx.cs" Inherits="WebHocThem.UserControls.ucChamThi" %>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="NgayThi,LopThi,Users" DataSourceID="ChamThi">
    <AlternatingItemTemplate>
        <tr style="background-color:#FFF8DC;">
            <td>
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="NgayThiLabel" runat="server" Text='<%# Eval("NgayThi") %>' />
            </td>
            <td>
                <asp:Label ID="LopThiLabel" runat="server" Text='<%# Eval("LopThi") %>' />
            </td>
            <td>
                <asp:Label ID="UsersLabel" runat="server" Text='<%# Eval("Users") %>' />
            </td>
            <td>
                <asp:Label ID="DiemLabel" runat="server" Text='<%# Eval("Diem") %>' />
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
                <asp:Label ID="NgayThiLabel1" runat="server" Text='<%# Eval("NgayThi") %>' />
            </td>
            <td>
                <asp:Label ID="LopThiLabel1" runat="server" Text='<%# Eval("LopThi") %>' />
            </td>
            <td>
                <asp:Label ID="UsersLabel1" runat="server" Text='<%# Eval("Users") %>' />
            </td>
            <td>
                <asp:TextBox ID="DiemTextBox" runat="server" Text='<%# Bind("Diem") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
            <tr>
                <td><h2 class="text-danger" style="text-align:center">Không có bài thi cần chấm</h2></td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
            <td>
                <asp:TextBox ID="NgayThiTextBox" runat="server" Text='<%# Bind("NgayThi") %>' />
            </td>
            <td>
                <asp:TextBox ID="LopThiTextBox" runat="server" Text='<%# Bind("LopThi") %>' />
            </td>
            <td>
                <asp:TextBox ID="UsersTextBox" runat="server" Text='<%# Bind("Users") %>' />
            </td>
            <td>
                <asp:TextBox ID="DiemTextBox" runat="server" Text='<%# Bind("Diem") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color:#DCDCDC;color: #000000;">
            <td>
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="NgayThiLabel" runat="server" Text='<%# Eval("NgayThi") %>' />
            </td>
            <td>
                <asp:Label ID="LopThiLabel" runat="server" Text='<%# Eval("LopThi") %>' />
            </td>
            <td>
                <asp:Label ID="UsersLabel" runat="server" Text='<%# Eval("Users") %>' />
            </td>
            <td>
                <asp:Label ID="DiemLabel" runat="server" Text='<%# Eval("Diem") %>' />
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
                            <th runat="server">NgayThi</th>
                            <th runat="server">LopThi</th>
                            <th runat="server">Users</th>
                            <th runat="server">Diem</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
            <td>
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="NgayThiLabel" runat="server" Text='<%# Eval("NgayThi") %>' />
            </td>
            <td>
                <asp:Label ID="LopThiLabel" runat="server" Text='<%# Eval("LopThi") %>' />
            </td>
            <td>
                <asp:Label ID="UsersLabel" runat="server" Text='<%# Eval("Users") %>' />
            </td>
            <td>
                <asp:Label ID="DiemLabel" runat="server" Text='<%# Eval("Diem") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="ChamThi" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="tCHAMTHI" SelectCommandType="StoredProcedure" UpdateCommand="Update DiemThi SET Diem = @Diem WHERE NgayThi = @NgayThi AND LopThi = @LopThi AND Users = @Users">
    <SelectParameters>
        <asp:QueryStringParameter Name="USER" QueryStringField="id" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
