<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="DanhGia.aspx.cs" Inherits="WebHocThem.DanhGia" %>

<%@ Register Src="~/UserControls/ucDanhGia.ascx" TagPrefix="uc1" TagName="ucDanhGia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucDanhGia runat="server" id="ucDanhGia" />
</asp:Content>
