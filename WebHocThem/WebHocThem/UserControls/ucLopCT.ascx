<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucLopCT.ascx.cs" Inherits="WebHocThem.UserControls.ucLop" %>
<style type="text/css">
    .c1 {
        width: 100%;
    }
    .c7 {
        text-align: left;
        width: 243px;
    }
    .c8 {
        width: 243px;
        height: 23px;
        text-align: left;
    }
    .c10 {
        text-align: left;
        width: 185px;
    }
    .c11 {
        width: 185px;
        height: 23px;
        text-align: left;
    }
    .c12 {
        text-align: left;
        width: 238px;
    }
    .c13 {
        width: 238px;
        height: 23px;
        text-align: left;
    }
    .c14 {
        text-align: left;
        width: 235px;
    }
    .c15 {
        width: 235px;
        height: 23px;
        text-align: left;
    }
    .c16 {
        text-align: left;
        width: 177px;
    }
    .c17 {
        width: 177px;
        height: 23px;
        text-align: left;
    }
    .c19 {
        font-size: x-large;
        height: 53px;
    }
    .c20 {
        text-align: left;
    }
</style>

<asp:Repeater ID="RLop" runat="server" DataSourceID="LopCT" >
    <HeaderTemplate>
        <table class="c1">
    <tr>
        <td class="c19" colspan="6" style="text-align: center"><strong>DANH SÁCH HỌC VIÊN LỚP</strong></td>
    </tr>
    <tr>
        <td class="c16"><strong>TÊN HV</strong></td>
        <td class="c14"><strong>EMAIL</strong></td>
        <td class="c7"><strong>SĐT</strong></td>
        <td class="c10"><strong>ĐỊA CHỈ</strong></td>
        <%--<td class="c12">GIÁO VIÊN</td>
        <td class="c20">SỐ LƯỢNG</td>--%>
    </tr>
    </HeaderTemplate>
    <ItemTemplate>
            <tr>
            <td class="c17"><%# Eval("TenUser") %></td>
            <td class="c17"><%# Eval("ID") %></td>
            <td class="c15"><%# Eval("SDT") %></td>
            <td class="c8"><%# Eval("DiaChi") %></td>
            <%--<td class="c11"><%# Eval("GiaoVien") %></td>
            <td class="c13"><%# Eval("SoLuong") %></td>--%>
        </tr>
    </ItemTemplate>

    <FooterTemplate>
       </table>
    </FooterTemplate>
</asp:Repeater>

<asp:SqlDataSource ID="LopCT" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="tLOPCT" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:QueryStringParameter Name="USER" QueryStringField="id" Type="String" />
        <asp:QueryStringParameter Name="LOP" QueryStringField="lop" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>


<%--<p>
    <asp:DataPager ID="DataPager1" runat="server" PageSize="3" PagedControlID="RLop">
        <Fields>
            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
        </Fields>
    </asp:DataPager>
</p>--%>
