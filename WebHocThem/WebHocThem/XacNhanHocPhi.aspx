<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="XacNhanHocPhi.aspx.cs" Inherits="WebHocThem.XacNhanHocPhi" %>

<%@ Register Src="~/UserControls/ucXacNhanHocPhi.ascx" TagPrefix="uc1" TagName="ucXacNhanHocPhi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucXacNhanHocPhi runat="server" id="ucXacNhanHocPhi" />
</asp:Content>
