<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="TuyenDung.aspx.cs" Inherits="WebHocThem.TuyenDung" %>

<%@ Register Src="~/UserControls/ucTuyenDung.ascx" TagPrefix="uc1" TagName="ucTuyenDung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucTuyenDung runat="server" id="ucTuyenDung" />
</asp:Content>
