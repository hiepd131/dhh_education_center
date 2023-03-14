<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="PhieuDanhGiaLH.aspx.cs" Inherits="WebHocThem.PhieuDanhGiaLH" %>

<%@ Register Src="~/UserControls/ucPhieuDanhGiaLH.ascx" TagPrefix="uc1" TagName="ucPhieuDanhGiaLH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucPhieuDanhGiaLH runat="server" id="ucPhieuDanhGiaLH" />
</asp:Content>
