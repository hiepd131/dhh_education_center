<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="LopHocUser.aspx.cs" Inherits="WebHocThem.LopHocUser" %>

<%@ Register Src="~/UserControls/ucLopUser.ascx" TagPrefix="uc1" TagName="ucLopUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucLopUser runat="server" id="ucLopUser" />
</asp:Content>
