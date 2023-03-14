<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="LopHocCT.aspx.cs" Inherits="WebHocThem.LopHocCT" %>

<%@ Register Src="~/UserControls/ucLopCT.ascx" TagPrefix="uc1" TagName="ucLopCT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucLopCT runat="server" ID="ucLopCT" />
</asp:Content>
