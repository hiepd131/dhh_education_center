<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="KetQua.aspx.cs" Inherits="WebHocThem.KetQua" %>

<%@ Register Src="~/UserControls/ucKetQua.ascx" TagPrefix="uc1" TagName="ucKetQua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucKetQua runat="server" id="ucKetQua" />
</asp:Content>
