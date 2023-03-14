<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="KetQuaKH.aspx.cs" Inherits="WebHocThem.KetQuaKH" %>

<%@ Register Src="~/UserControls/ucKetQuaKH.ascx" TagPrefix="uc1" TagName="ucKetQuaKH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucKetQuaKH runat="server" ID="ucKetQuaKH" />
</asp:Content>
