<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="PhieuDanhGia.aspx.cs" Inherits="WebHocThem.PhieuDanhGia1" %>

<%@ Register Src="~/UserControls/ucPhieuDanhGia.ascx" TagPrefix="uc1" TagName="ucPhieuDanhGia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucPhieuDanhGia runat="server" ID="ucPhieuDanhGia" />
</asp:Content>
