<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="TuyenDungDK.aspx.cs" Inherits="WebHocThem.TuyenDungDK" %>

<%@ Register Src="~/UserControls/ucTuyenDungDK.ascx" TagPrefix="uc1" TagName="ucTuyenDungDK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucTuyenDungDK runat="server" id="ucTuyenDungDK" />
</asp:Content>
