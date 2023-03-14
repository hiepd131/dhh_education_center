<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="KetQuaKHALL.aspx.cs" Inherits="WebHocThem.KetQuaKHALL" %>

<%@ Register Src="~/UserControls/ucKetQuaKHALL.ascx" TagPrefix="uc1" TagName="ucKetQuaKHALL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucKetQuaKHALL runat="server" ID="ucKetQuaKHALL" />
</asp:Content>
