<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="KhoaHocCT.aspx.cs" Inherits="WebHocThem.UserControls.KhoaHocCT" %>

<%@ Register Src="~/UserControls/ucKhoaHocCT.ascx" TagPrefix="uc1" TagName="ucKhoaHocCT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucKhoaHocCT runat="server" id="ucKhoaHocCT" />
</asp:Content>
