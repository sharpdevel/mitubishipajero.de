<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
	CodeFile="Private.aspx.cs" Inherits="Default2" Title="Galerie Privatfahrer" %>

<%@ Register Assembly="FlashControl" Namespace="Bewise.Web.UI.WebControls" TagPrefix="Bewise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
	<p class="title">Pictures of private Pajeros</p>
	<Bewise:FlashControl ID="FlashControl1" runat="server" MovieUrl="~/Gallery/Dakar/viewer.swf"
		BgColor="#F8F8F8" Height="442px" Width="573px" XHTMLcompliant="True" />
</asp:Content>
