<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
	CodeFile="Gallery.aspx.cs" Inherits="Default2" Title="Bilder vom V80" %>

<%@ Register Assembly="FlashControl" Namespace="Bewise.Web.UI.WebControls" TagPrefix="Bewise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
	<p class="title">Bilder vom V60</p>
	<Bewise:FlashControl ID="FlashControl1" runat="server" MovieUrl="~/Models/V80/Gallery/viewer.swf"
		BgColor="#F8F8F8" Height="442px" Width="573px" XHTMLcompliant="True" />
</asp:Content>
