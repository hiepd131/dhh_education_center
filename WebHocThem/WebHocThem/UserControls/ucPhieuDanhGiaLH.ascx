﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucPhieuDanhGiaLH.ascx.cs" Inherits="WebHocThem.UserControls.ucPhieuDanhGiaLH" %>
<asp:Panel ID="themTKB" runat="server" DefaultButton="btnRegister" style="
    text-align: center;
    font-size: x-large;">

<p class="text-danger">
    <asp:Literal runat="server" ID="ErrorMessage" />
</p>
    <p class="text-success">
    <asp:Literal runat="server" ID="SuccessMessage" />
</p>
<h2 style="text-align: center;"> Đánh giá chất lượng chương trình </h2>
<hr />
<p class="fieldset">
<i class="fa fa-phone"></i>
<input class="full-width has-padding has-border" id="input_pdk" name="phone" type="text" placeholder="Mã lớp" runat="server">
</p>
<p class="fieldset">
<p class="fieldset">
  <%--  <asp:RequiredFieldValidator runat="server" ControlToValidate="input_email"
        CssClass="text-danger" ErrorMessage="The email field is required." />--%>
    <i class="fa fa-envelope"></i>
    <input class="full-width has-padding has-border" id="input_ddg" name="ddg" type="number" placeholder="Điểm đánh giá" runat="server">
</p>
<i class="fa fa-user"></i>
<input class="full-width has-padding has-border" id="input_noidung" name="noidung" type="text" placeholder="Nội dung chi tiết" runat="server">
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
<%--<p class="fieldset">--%>
    <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="input_repassword"
        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
    <asp:CompareValidator runat="server" ControlToCompare="input_password" ControlToValidate="input_repassword"
        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />--%>
<%--    <i class="fa fa-key"></i>
    <input class="full-width has-padding has-border" id="input_dd" name="dd" type="text" placeholder="Địa điểm học" runat="server">
</p>--%>
<%--<p class="fieldset">--%>
   <%-- <asp:RequiredFieldValidator runat="server" ControlToValidate="input_date"
        CssClass="text-danger" ErrorMessage="The password field is required." />--%>
<%--    <i class="fa fa-key"></i>
    <input style="width: 300px;" class="full-width has-padding has-border" id="input_date" name="date" type="text" placeholder="Ngày đăng ký" runat="server">
</p>--%>

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
    <asp:Button ID="btnRegister" runat="server" OnClick="CreatePDG_Click" Text="Gửi đánh giá" CssClass="btn-edit"/>
   <%-- <input class="btn-edit" type="reset" value="Làm mới" onclick="ResetForm_Click">--%>
</p>
</asp:Panel>