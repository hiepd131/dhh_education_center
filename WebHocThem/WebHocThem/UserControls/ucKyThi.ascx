<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucKyThi.ascx.cs" Inherits="WebHocThem.UserControls.ucKyThi" %>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="LopThi,NgayThi" DataSourceID="KyThi">
    <AlternatingItemTemplate>
        <li style="background-color: #FFF8DC;">CaThi:
            <asp:Label ID="CaThiLabel" runat="server" Text='<%# Eval("CaThi") %>' />
            <br />
            TenKyThi:
            <asp:Label ID="TenKyThiLabel" runat="server" Text='<%# Eval("TenKyThi") %>' />
            <br />
            LopThi:
            <asp:Label ID="LopThiLabel" runat="server" Text='<%# Eval("LopThi") %>' />
            <br />
            NgayThi:
            <asp:Label ID="NgayThiLabel" runat="server" Text='<%# Eval("NgayThi") %>' />
            <br />
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">CaThi:
            <asp:TextBox ID="CaThiTextBox" runat="server" Text='<%# Bind("CaThi") %>' />
            <br />
            TenKyThi:
            <asp:TextBox ID="TenKyThiTextBox" runat="server" Text='<%# Bind("TenKyThi") %>' />
            <br />
            LopThi:
            <asp:Label ID="LopThiLabel1" runat="server" Text='<%# Eval("LopThi") %>' />
            <br />
            NgayThi:
            <asp:Label ID="NgayThiLabel1" runat="server" Text='<%# Eval("NgayThi") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <h2 class="text-danger" style="text-align:center">Các khóa học của bạn đã kết thúc hoặc chưa được xếp ca thi</h2>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="">CaThi:
            <asp:TextBox ID="CaThiTextBox" runat="server" Text='<%# Bind("CaThi") %>' />
            <br />TenKyThi:
            <asp:TextBox ID="TenKyThiTextBox" runat="server" Text='<%# Bind("TenKyThi") %>' />
            <br />LopThi:
            <asp:TextBox ID="LopThiTextBox" runat="server" Text='<%# Bind("LopThi") %>' />
            <br />NgayThi:
            <asp:TextBox ID="NgayThiTextBox" runat="server" Text='<%# Bind("NgayThi") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemSeparatorTemplate>
<br />
    </ItemSeparatorTemplate>
    <ItemTemplate>
        <li style="background-color: #DCDCDC;color: #000000;">CaThi:
            <asp:Label ID="CaThiLabel" runat="server" Text='<%# Eval("CaThi") %>' />
            <br />
            TenKyThi:
            <asp:Label ID="TenKyThiLabel" runat="server" Text='<%# Eval("TenKyThi") %>' />
            <br />
            LopThi:
            <asp:Label ID="LopThiLabel" runat="server" Text='<%# Eval("LopThi") %>' />
            <br />
            NgayThi:
            <asp:Label ID="NgayThiLabel" runat="server" Text='<%# Eval("NgayThi") %>' />
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
        <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">CaThi:
            <asp:Label ID="CaThiLabel" runat="server" Text='<%# Eval("CaThi") %>' />
            <br />
            TenKyThi:
            <asp:Label ID="TenKyThiLabel" runat="server" Text='<%# Eval("TenKyThi") %>' />
            <br />
            LopThi:
            <asp:Label ID="LopThiLabel" runat="server" Text='<%# Eval("LopThi") %>' />
            <br />
            NgayThi:
            <asp:Label ID="NgayThiLabel" runat="server" Text='<%# Eval("NgayThi") %>' />
            <br />
        </li>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="KyThi" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="tKYTHI" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:QueryStringParameter Name="USER" QueryStringField="id" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>

