<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucKhoaHoc.ascx.cs" Inherits="WebHocThem.UserControls.ucKhoaHoc" %>
<%@ Register assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.WebControls" tagprefix="asp" %>

<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID,MonHoc,Levels" DataSourceID="KhoaHoc" Visible="false">
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
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "/KhoaHocCT.aspx?kh="+Eval("ID")+"&mh="+Eval("MonHoc")+"&lv="+Eval("Levels") %>'>Chi tiết khóa học</asp:HyperLink>
            <a href='<%# "LopHoc.aspx?t=1&kh="+Eval("ID")+"&mh="+Eval("MonHoc")+"&lv="+Eval("Levels") %>'>Thêm lớp học mới</a>
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenKhoaHoc:
            <asp:TextBox ID="TenKhoaHocTextBox" runat="server" Text='<%# Bind("TenKhoaHoc") %>' />
            <br />
            GiaoVien1:
            <asp:TextBox ID="GiaoVien1TextBox" runat="server" Text='<%# Bind("GiaoVien1") %>' />
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
            SoBuoiHoc:
            <asp:TextBox ID="SoBuoiHocTextBox" runat="server" Text='<%# Bind("SoBuoiHoc") %>' />
            <br />
            HocPhi:
            <asp:TextBox ID="HocPhiTextBox" runat="server" Text='<%# Bind("HocPhi") %>' />
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
            <br />GiaoVien1:
            <asp:TextBox ID="GiaoVien1TextBox" runat="server" Text='<%# Bind("GiaoVien1") %>' />
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
            <br />HinhAnh:
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
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "/KhoaHocCT.aspx?kh="+Eval("ID")+"&mh="+Eval("MonHoc")+"&lv="+Eval("Levels") %>'>Chi tiết khóa học</asp:HyperLink>
            <a href='<%# "LopHoc.aspx?t=1&kh="+Eval("ID")+"&mh="+Eval("MonHoc")+"&lv="+Eval("Levels") %>'>Thêm lớp học mới</a>
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
            TenKhoaHoc:
            <asp:Label ID="TenKhoaHocLabel" runat="server" Text='<%# Eval("TenKhoaHoc") %>' />
            <br />
            GiaoVien1:
            <asp:Label ID="GiaoVien1Label" runat="server" Text='<%# Eval("GiaoVien1") %>' />
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
            <br />
            HocPhi:
            <asp:Label ID="HocPhiLabel" runat="server" Text='<%# Eval("HocPhi") %>' />
            <br />
            HinhAnh:
            <asp:Label ID="HinhAnhLabel" runat="server" Text='<%# Eval("HinhAnh") %>' />
            <br />
        </li>
    </SelectedItemTemplate>
</asp:ListView>

<asp:ListView ID="ListView2" runat="server" DataKeyNames="ID,MonHoc,Levels" DataSourceID="KhoaHoc" Visible="false">
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
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "/KhoaHocCT.aspx?kh="+Eval("ID")+"&mh="+Eval("MonHoc")+"&lv="+Eval("Levels") %>'>Chi tiết khóa học</asp:HyperLink>
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenKhoaHoc:
            <asp:TextBox ID="TenKhoaHocTextBox" runat="server" Text='<%# Bind("TenKhoaHoc") %>' />
            <br />
            GiaoVien1:
            <asp:TextBox ID="GiaoVien1TextBox" runat="server" Text='<%# Bind("GiaoVien1") %>' />
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
            SoBuoiHoc:
            <asp:TextBox ID="SoBuoiHocTextBox" runat="server" Text='<%# Bind("SoBuoiHoc") %>' />
            <br />
            HocPhi:
            <asp:TextBox ID="HocPhiTextBox" runat="server" Text='<%# Bind("HocPhi") %>' />
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
            <br />GiaoVien1:
            <asp:TextBox ID="GiaoVien1TextBox" runat="server" Text='<%# Bind("GiaoVien1") %>' />
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
            <br />HinhAnh:
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
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "/KhoaHocCT.aspx?kh="+Eval("ID")+"&mh="+Eval("MonHoc")+"&lv="+Eval("Levels") %>'>Chi tiết khóa học</asp:HyperLink>
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
            TenKhoaHoc:
            <asp:Label ID="TenKhoaHocLabel" runat="server" Text='<%# Eval("TenKhoaHoc") %>' />
            <br />
            GiaoVien1:
            <asp:Label ID="GiaoVien1Label" runat="server" Text='<%# Eval("GiaoVien1") %>' />
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
            <br />
            HocPhi:
            <asp:Label ID="HocPhiLabel" runat="server" Text='<%# Eval("HocPhi") %>' />
            <br />
            HinhAnh:
            <asp:Label ID="HinhAnhLabel" runat="server" Text='<%# Eval("HinhAnh") %>' />
            <br />
        </li>
    </SelectedItemTemplate>
</asp:ListView>

<asp:SqlDataSource ID="KhoaHoc" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="tKHOAHOC" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


<asp:Panel ID="themKH" runat="server" DefaultButton="btnRegister" style="
    text-align: center;
    font-size: x-large;" Visible="false">

<p class="text-danger">
    <asp:Literal runat="server" ID="ErrorMessage" />
</p>
    <p class="text-success">
    <asp:Literal runat="server" ID="SuccessMessage" />
</p>
<h2 style="text-align: center;"> Thêm Khóa học mới </h2>
    <hr />
<p class="fieldset">
<i class="fa fa-phone"></i>
<input class="full-width has-padding has-border" id="input_tenkhoa" name="phone" type="text" placeholder="Tên khóa học" runat="server">
</p>
<p class="fieldset">
<i class="fa fa-user"></i>
<input class="full-width has-padding has-border" id="input_mota" name="email" type="text" placeholder="Mô tả khóa học" runat="server">
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
<%--<p class="fieldset">--%>
    <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="input_repassword"
        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
    <asp:CompareValidator runat="server" ControlToCompare="input_password" ControlToValidate="input_repassword"
        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />--%>
<%--    <i class="fa fa-key"></i>
    <input class="full-width has-padding has-border" id="input_soluong" name="dd" type="text" placeholder="Số buổi học" runat="server">
</p>--%>
<p class="fieldset">
   <%-- <asp:RequiredFieldValidator runat="server" ControlToValidate="input_date"
        CssClass="text-danger" ErrorMessage="The password field is required." />--%>
    <i class="fa fa-key"></i>
    <input style="width: 300px;" class="full-width has-padding has-border" id="input_date1" name="date" type="date" placeholder="Ngày khai giảng" runat="server">
</p>
<p class="fieldset">
   <%-- <asp:RequiredFieldValidator runat="server" ControlToValidate="input_date"
        CssClass="text-danger" ErrorMessage="The password field is required." />--%>
    <i class="fa fa-key"></i>
    <input style="width: 300px;" class="full-width has-padding has-border" id="input_date2" name="date" type="date" placeholder="Ngày kết thúc" runat="server">
</p>
<p class="fieldset">
    <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="input_repassword"
        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
    <asp:CompareValidator runat="server" ControlToCompare="input_password" ControlToValidate="input_repassword"
        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />--%>
    <i class="fa fa-key"></i>
    <input class="full-width has-padding has-border" id="input_hocphi" name="dd" type="text" placeholder="Học phí" runat="server">
</p>
<p class="fieldset">
   <%-- <asp:RequiredFieldValidator runat="server" ControlToValidate="input_date"
        CssClass="text-danger" ErrorMessage="The password field is required." />--%>
    <i class="fa fa-key"></i>
    <input style="width: 300px;" class="full-width has-padding has-border" id="input_file" name="date" type="file" placeholder="Hình ảnh hiển thị" runat="server">
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
    <asp:Button ID="btnRegister" runat="server" OnClick="CreateKH_Click" Text="Thêm mới" CssClass="btn-edit"/>
   <%-- <input class="btn-edit" type="reset" value="Làm mới" onclick="ResetForm_Click">--%>
</p>
</asp:Panel>





