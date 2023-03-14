<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="ChamThi.aspx.cs" Inherits="WebHocThem.ChamThi" %>

<%@ Register Src="~/UserControls/ucChamThi.ascx" TagPrefix="uc1" TagName="ucChamThi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucChamThi runat="server" ID="ucChamThi" />
</asp:Content>
