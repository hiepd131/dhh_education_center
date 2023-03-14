<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucLopHoc.ascx.cs" Inherits="WebHocThem.UserControls.ucGiangVien" %>

<%@ Register assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.WebControls" tagprefix="asp" %>

<%--<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="GiangVien1" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
        <asp:BoundField DataField="TenUser" HeaderText="TenUser" SortExpression="TenUser" />
        <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
        <asp:BoundField DataField="HinhAnh" HeaderText="HinhAnh" SortExpression="HinhAnh" />        
        <asp:CheckBoxField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
        <asp:BoundField DataField="SL" HeaderText="SL" SortExpression="SL" />
    </Fields>
</asp:DetailsView>--%>

<asp:ListView ID="lvLopHoc" runat="server" DataKeyNames="ID" DataSourceID="LopHoc" Visible="False">
    <AlternatingItemTemplate>
        <li style="background-color: #FFF8DC;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Ten Lop:
            <asp:Label ID="TenLopLabel" runat="server" Text='<%# Eval("TenLop") %>' />
            <br />
            So Luong:
            <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Eval("SoLuong") %>' />
            <br />
            Khoa Hoc:
            <asp:Label ID="KhoaHocLabel" runat="server" Text='<%# Eval("TenKhoaHoc") %>' />
            <br />
            Giao Vien:
            <asp:Label ID="GiaoVienLabel" runat="server" Text='<%# Eval("GiaoVien") %>' />
            <br />
            So Buoi Hoc:
            <asp:Label ID="SoBuoiHocLabel" runat="server" Text='<%# Eval("SoBuoiHoc") %>' />
            <br />
            Ngay Bat Dau:
            <asp:Label ID="Ngay1Label" runat="server" Text='<%# Eval("Ngay1") %>' />
            <br />
            Ngay hoc theo tuan:
            <asp:Label ID="WDLabel" runat="server" Text='<%# Eval("WD") %>' />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "/PhieuDangKy.aspx?id="+Eval("ID")%>'>Đăng ký học</asp:HyperLink>
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
            SoBuoiHoc:
            <asp:TextBox ID="SoBuoiHocTextBox" runat="server" Text='<%# Bind("SoBuoiHoc") %>' />
            <br />
            Ngay1:
            <asp:TextBox ID="Ngay1TextBox" runat="server" Text='<%# Bind("Ngay1") %>' />
            <br />
            WD:
            <asp:TextBox ID="WDTextBox" runat="server" Text='<%# Bind("WD") %>' />
            <br />
            TenKhoaHoc:
            <asp:TextBox ID="TenKhoaHocTextBox" runat="server" Text='<%# Bind("TenKhoaHoc") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        
        <h2 style="text-align:center" class="text-danger">Chưa có lớp đủ điều kiện để đăng ký</h2>
        
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="">TenLop:
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
            SoBuoiHoc:
            <asp:TextBox ID="SoBuoiHocTextBox" runat="server" Text='<%# Bind("SoBuoiHoc") %>' />
            <br />
            Ngay1:
            <asp:TextBox ID="Ngay1TextBox" runat="server" Text='<%# Bind("Ngay1") %>' />
            <br />
            WD:
            <asp:TextBox ID="WDTextBox" runat="server" Text='<%# Bind("WD") %>' />
            <br />
            TenKhoaHoc:
            <asp:TextBox ID="TenKhoaHocTextBox" runat="server" Text='<%# Bind("TenKhoaHoc") %>' />
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
            Ten Lop:
            <asp:Label ID="TenLopLabel" runat="server" Text='<%# Eval("TenLop") %>' />
            <br />
            So Luong:
            <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Eval("SoLuong") %>' />
            <br />
            Khoa Hoc:
            <asp:Label ID="KhoaHocLabel" runat="server" Text='<%# Eval("TenKhoaHoc") %>' />
            <br />
            Giao Vien:
            <asp:Label ID="GiaoVienLabel" runat="server" Text='<%# Eval("GiaoVien") %>' />
            <br />
            So Buoi Hoc:
            <asp:Label ID="SoBuoiHocLabel" runat="server" Text='<%# Eval("SoBuoiHoc") %>' />
            <br />
            Ngay Bat Dau:
            <asp:Label ID="Ngay1Label" runat="server" Text='<%# Eval("Ngay1") %>' />
            <br />
            Ngay hoc theo tuan:
            <asp:Label ID="WDLabel" runat="server" Text='<%# Eval("WD") %>' />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "/PhieuDangKy.aspx?id="+Eval("ID")%>'>Đăng ký học</asp:HyperLink>
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
            SoBuoiHoc:
            <asp:Label ID="SoBuoiHocLabel" runat="server" Text='<%# Eval("SoBuoiHoc") %>' />
            <br />
            Ngay1:
            <asp:Label ID="Ngay1Label" runat="server" Text='<%# Eval("Ngay1") %>' />
            <br />
            WD:
            <asp:Label ID="WDLabel" runat="server" Text='<%# Eval("WD") %>' />
            <br />
            TenKhoaHoc:
            <asp:Label ID="TenKhoaHocLabel" runat="server" Text='<%# Eval("TenKhoaHoc") %>' />
            <br />
        </li>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="LopHoc" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="tLOPHOC" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


<asp:Panel ID="themLH" runat="server" DefaultButton="btnRegister" style="
    text-align: center;
    font-size: x-large;" Visible="false">

<p class="text-danger">
    <asp:Literal runat="server" ID="ErrorMessage" />
</p>
    <p class="text-success">
    <asp:Literal runat="server" ID="SuccessMessage" />
</p>
<h2 style="text-align: center;"> Thêm Lớp học mới cho khóa học </h2>
    <hr />
<p class="fieldset">
<i class="fa fa-phone"></i>
<input class="full-width has-padding has-border" id="input_tenlop" name="phone" type="text" placeholder="Tên lớp" runat="server">
</p>
<p class="fieldset">
<i class="fa fa-user"></i>
<input class="full-width has-padding has-border" id="input_soluong" name="email" type="text" placeholder="Số lượng" runat="server">
</p>
<p class="fieldset">
  <%--  <asp:RequiredFieldValidator runat="server" ControlToValidate="input_email"
        CssClass="text-danger" ErrorMessage="The email field is required." />--%>
    <i class="fa fa-envelope"></i>
    <input class="full-width has-padding has-border" id="input_monhoc" name="ca" type="text" placeholder="Môn học" runat="server">
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
    <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="input_repassword"
        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
    <asp:CompareValidator runat="server" ControlToCompare="input_password" ControlToValidate="input_repassword"
        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />--%>
    <i class="fa fa-key"></i>
    <input class="full-width has-padding has-border" id="input_levels" name="dd" type="text" placeholder="Levels" runat="server">
</p>
<p class="fieldset">
   <%-- <asp:RequiredFieldValidator runat="server" ControlToValidate="input_date"
        CssClass="text-danger" ErrorMessage="The password field is required." />--%>
    <i class="fa fa-key"></i>
    <input style="/*width: 300px;*/" class="full-width has-padding has-border" id="input_khoa" name="date" type="text" placeholder="Khóa học" runat="server">
</p>

<p class="fieldset">
   <%-- <asp:RequiredFieldValidator runat="server" ControlToValidate="input_date"
        CssClass="text-danger" ErrorMessage="The password field is required." />--%>
    <i class="fa fa-key"></i>
    <input style="/*width: 300px;*/" class="full-width has-padding has-border" id="input_wd" name="wd" type="text" placeholder="Thứ 1,2,3,4,5,6,7" runat="server">
</p>

<p class="fieldset">
    <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="input_repassword"
        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
    <asp:CompareValidator runat="server" ControlToCompare="input_password" ControlToValidate="input_repassword"
        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />--%>
    <i class="fa fa-key"></i>
    <input class="full-width has-padding has-border" id="input_sobuoi" name="dd" type="text" placeholder="Số buổi học" runat="server">
</p>
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
    <asp:Button ID="btnRegister" runat="server" OnClick="CreateLH_Click" Text="Thêm mới" CssClass="btn-edit"/>
   <%-- <input class="btn-edit" type="reset" value="Làm mới" onclick="ResetForm_Click">--%>
</p>
</asp:Panel>



<%--<div class="tooltip" style="display: none">     <%# (string)Eval("gender") =="M" ? "Male" :"Female"%>                                                             
      <div style="text-align: center; font-weight: normal">
   Value =<%# ProcessMyDataItem(Eval("Percentage")) %> </div>
 </div>--%>


