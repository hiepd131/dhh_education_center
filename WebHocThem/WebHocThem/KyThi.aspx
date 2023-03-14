<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="KyThi.aspx.cs" Inherits="WebHocThem.KyThi1" %>

<%@ Register Src="~/UserControls/ucKyThi.ascx" TagPrefix="uc1" TagName="ucKyThi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucKyThi runat="server" id="ucKyThi" />
</asp:Content>
