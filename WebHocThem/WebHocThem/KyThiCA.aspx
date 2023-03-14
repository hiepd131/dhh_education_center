<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="KyThiCA.aspx.cs" Inherits="WebHocThem.KyThiCA" %>

<%@ Register Src="~/UserControls/ucKyThiCA.ascx" TagPrefix="uc1" TagName="ucKyThiCA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucKyThiCA runat="server" ID="ucKyThiCA" />
</asp:Content>
