<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
	CodeFile="Dakar.aspx.cs" Inherits="Default2" Title="Galerie Dakar" %>

<%@ Register Assembly="FlashControl" Namespace="Bewise.Web.UI.WebControls" TagPrefix="Bewise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
	<p class="title">Pictures from the Dakar</p>
	<Bewise:FlashControl ID="FlashControl1" runat="server" MovieUrl="~/Gallery/Dakar/viewer.swf"
		BgColor="#F8F8F8" Height="442px" Width="573px" XHTMLcompliant="True" />
</asp:Content>
