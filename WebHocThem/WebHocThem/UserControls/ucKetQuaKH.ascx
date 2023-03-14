<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucKetQuaKH.ascx.cs" Inherits="WebHocThem.UserControls.ucKetQuaKH" %>
<asp:ListView ID="ListView1" runat="server" DataSourceID="KetQuaKH">
    <AlternatingItemTemplate>
        <li style="background-color: #FFF8DC;">DA:
            <asp:Label ID="DALabel" runat="server" Text='<%# Eval("DA") %>' />
            <br />
            Điểm trung bình khóa:
            <asp:Label ID="DTBLabel" runat="server" Text='<%# Eval("DTB") %>' />
            <br />
            Điểm đã cải thiện:
            <asp:Label ID="DCTLabel" runat="server" Text='<%# Eval("DCT") %>' />
            <br />
            Kết quả khóa học:
            <asp:Label ID="KQLabel" runat="server" Text='<%# Eval("KQ") %>' />
            <br />
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">DA:
            <asp:TextBox ID="DATextBox" runat="server" Text='<%# Bind("DA") %>' />
            <br />
            DTB:
            <asp:TextBox ID="DTBTextBox" runat="server" Text='<%# Bind("DTB") %>' />
            <br />
            DCT:
            <asp:TextBox ID="DCTTextBox" runat="server" Text='<%# Bind("DCT") %>' />
            <br />
            KQ:
            <asp:TextBox ID="KQTextBox" runat="server" Text='<%# Bind("KQ") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <h2 class="text-danger" style="text-align:center">Khóa học của bạn chưa kết thúc</h2>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="">DA:
            <asp:TextBox ID="DATextBox" runat="server" Text='<%# Bind("DA") %>' />
            <br />DTB:
            <asp:TextBox ID="DTBTextBox" runat="server" Text='<%# Bind("DTB") %>' />
            <br />DCT:
            <asp:TextBox ID="DCTTextBox" runat="server" Text='<%# Bind("DCT") %>' />
            <br />KQ:
            <asp:TextBox ID="KQTextBox" runat="server" Text='<%# Bind("KQ") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemSeparatorTemplate>
<br />
    </ItemSeparatorTemplate>
    <ItemTemplate>
        <li style="background-color: #DCDCDC;color: #000000;">Điểm đầu khóa:
            <asp:Label ID="DALabel" runat="server" Text='<%# Eval("DA") %>' />
            <br />
            Điểm trung bình khóa:
            <asp:Label ID="DTBLabel" runat="server" Text='<%# Eval("DTB") %>' />
            <br />
            Điểm đã cải thiện:
            <asp:Label ID="DCTLabel" runat="server" Text='<%# Eval("DCT") %>' />
            <br />
            Kết quả khóa học:
            <asp:Label ID="KQLabel" runat="server" Text='<%# Eval("KQ") %>' />
            <br />
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;text-align:center">
            <li runat="server" id="itemPlaceholder" />
        </ul>
        <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">Điểm đầu khóa:
            <asp:Label ID="DALabel" runat="server" Text='<%# Eval("DA") %>' />
            <br />
            Điểm trung bình khóa:
            <asp:Label ID="DTBLabel" runat="server" Text='<%# Eval("DTB") %>' />
            <br />
            Điểm đã cải thiện:
            <asp:Label ID="DCTLabel" runat="server" Text='<%# Eval("DCT") %>' />
            <br />
            Kết quả:
            <asp:Label ID="KQLabel" runat="server" Text='<%# Eval("KQ") %>' />
            <br />
        </li>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="KetQuaKH" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="tKETQUAKH" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:QueryStringParameter Name="USER" QueryStringField="id" Type="String" />
        <asp:QueryStringParameter Name="KH" QueryStringField="kh" Type="Int32" />
        <asp:QueryStringParameter Name="MH" QueryStringField="mh" Type="Int32" />
        <asp:QueryStringParameter Name="LV" QueryStringField="lv" Type="Double" />
    </SelectParameters>
</asp:SqlDataSource>