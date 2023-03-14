<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucThoiKhoaBieu.ascx.cs" Inherits="WebHocThem.UserControls.ucThoiKhoaBieu" %>

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

<asp:ListView ID="LvTKB" runat="server" DataKeyNames="ThoiGian,LopHoc,Ca" DataSourceID="TKB" Visible="false">
    <AlternatingItemTemplate>
        <li style="background-color: #FFF8DC;">ThoiGian:
            <asp:Label ID="ThoiGianLabel" runat="server" Text='<%# Eval("ThoiGian") %>' />
            <br />
            LopHoc:
            <asp:Label ID="LopHocLabel" runat="server" Text='<%# Eval("LopHoc") %>' />
            <br />
            Ca:
            <asp:Label ID="CaLabel" runat="server" Text='<%# Eval("Ca") %>' />
            <br />
            TenDiaDiem:
            <asp:Label ID="TenDiaDiemLabel" runat="server" Text='<%# Eval("TenDiaDiem") %>' />
            <br />
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">ThoiGian:
            <asp:Label ID="ThoiGianLabel1" runat="server" Text='<%# Eval("ThoiGian") %>' />
            <br />
            LopHoc:
            <asp:Label ID="LopHocLabel1" runat="server" Text='<%# Eval("LopHoc") %>' />
            <br />
            Ca:
            <asp:Label ID="CaLabel1" runat="server" Text='<%# Eval("Ca") %>' />
            <br />
            TenDiaDiem:
            <asp:TextBox ID="TenDiaDiemTextBox" runat="server" Text='<%# Bind("TenDiaDiem") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <h2 class="text-danger" style="text-align:center">Bạn chưa có Thời Khóa Biểu hãy Đăng ký một lớp học hoặc Xác Nhận lại học phí </h2>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="">ThoiGian:
            <asp:TextBox ID="ThoiGianTextBox" runat="server" Text='<%# Bind("ThoiGian") %>' />
            <br />
            LopHoc:
            <asp:TextBox ID="LopHocTextBox" runat="server" Text='<%# Bind("LopHoc") %>' />
            <br />
            Ca:
            <asp:TextBox ID="CaTextBox" runat="server" Text='<%# Bind("Ca") %>' />
            <br />
            TenDiaDiem:
            <asp:TextBox ID="TenDiaDiemTextBox" runat="server" Text='<%# Bind("TenDiaDiem") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemSeparatorTemplate>
        <br />
    </ItemSeparatorTemplate>
    <ItemTemplate>
        <li style="background-color: #DCDCDC;color: #000000;">ThoiGian:
            <asp:Label ID="ThoiGianLabel" runat="server" Text='<%# Eval("ThoiGian") %>' />
            <br />
            LopHoc:
            <asp:Label ID="LopHocLabel" runat="server" Text='<%# Eval("LopHoc") %>' />
            <br />
            Ca:
            <asp:Label ID="CaLabel" runat="server" Text='<%# Eval("Ca") %>' />
            <br />
            TenDiaDiem:
            <asp:Label ID="TenDiaDiemLabel" runat="server" Text='<%# Eval("TenDiaDiem") %>' />
            <br />
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif; text-align:center;float: left;width:100%">
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
        <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">ThoiGian:
            <asp:Label ID="ThoiGianLabel" runat="server" Text='<%# Eval("ThoiGian") %>' />
            <br />
            LopHoc:
            <asp:Label ID="LopHocLabel" runat="server" Text='<%# Eval("LopHoc") %>' />
            <br />
            Ca:
            <asp:Label ID="CaLabel" runat="server" Text='<%# Eval("Ca") %>' />
            <br />
            TenDiaDiem:
            <asp:Label ID="TenDiaDiemLabel" runat="server" Text='<%# Eval("TenDiaDiem") %>' />
            <br />
        </li>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="TKB" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="tTHOIKHOABIEU" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:QueryStringParameter Name="USER" QueryStringField="id" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>


<%--<div class="tooltip" style="display: none">     <%# (string)Eval("gender") =="M" ? "Male" :"Female"%>                                                             
      <div style="text-align: center; font-weight: normal">
   Value =<%# ProcessMyDataItem(Eval("Percentage")) %> </div>
 </div>--%>
<br />
<asp:Panel ID="themTKB" runat="server" DefaultButton="btnRegister" style="
    text-align: center;
    font-size: x-large;" Visible="false">

<p class="text-danger">
    <asp:Literal runat="server" ID="ErrorMessage" />
</p>
    <p class="text-success">
    <asp:Literal runat="server" ID="SuccessMessage" />
</p>
<h2 style="text-align: center;"> Thêm thời khóa biểu </h2>
    <hr />
<p class="fieldset">
<i class="fa fa-user"></i>
<input class="full-width has-padding has-border" id="input_email" name="email" type="text" placeholder="Email" runat="server">
</p>
<p class="fieldset">
<i class="fa fa-phone"></i>
<input class="full-width has-padding has-border" id="input_lop" name="phone" type="number" placeholder="Mã lớp" runat="server">
</p>
<p class="fieldset">
  <%--  <asp:RequiredFieldValidator runat="server" ControlToValidate="input_email"
        CssClass="text-danger" ErrorMessage="The email field is required." />--%>
    <i class="fa fa-envelope"></i>
    <input class="full-width has-padding has-border" id="input_ca" name="ca" type="number" placeholder="Ca học" runat="server">
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
    <input class="full-width has-padding has-border" id="input_dd" name="dd" type="number" placeholder="Địa điểm học" runat="server">
</p>
<p class="fieldset">
   <%-- <asp:RequiredFieldValidator runat="server" ControlToValidate="input_date"
        CssClass="text-danger" ErrorMessage="The password field is required." />--%>
    <i class="fa fa-key"></i>
    <input style="width: 300px;" class="full-width has-padding has-border" id="input_date" name="date" type="date" placeholder="Ngày đăng ký" runat="server">
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
    <asp:Button ID="btnRegister" runat="server" OnClick="CreateTKB_Click" Text="Thêm mới" CssClass="btn-edit"/>
   <%-- <input class="btn-edit" type="reset" value="Làm mới" onclick="ResetForm_Click">--%>
</p>
</asp:Panel>
