<%@ Page Title="Account Confirmation" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="WebHocThem.Account.Confirm" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolderWebHocThem">
    <%--  <h2><%: Title %>.</h2>--%>
    <div class="col-md-7">
        <div class="head">
            <h2 class="heading-title" style="text-align:right"><%: Title %></h2>

        </div>

        <asp:PlaceHolder runat="server" ID="successPanel" ViewStateMode="Disabled" Visible="true">
            <h2 style="text-align:right">
                Xác thực tài khoản Email thành công nhấn vào <asp:HyperLink ID="login" runat="server" NavigateUrl="~/Login">đây</asp:HyperLink>  để đăng nhập             
            </h2>
        </asp:PlaceHolder>
        <asp:PlaceHolder runat="server" ID="errorPanel" ViewStateMode="Disabled" Visible="false">
            <h2 class="text-danger" style="text-align:center">
                Có lỗi xảy ra vui lòng thử lại.
            </h2>
        </asp:PlaceHolder>
    </div>
</asp:Content>
