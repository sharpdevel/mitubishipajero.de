<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
	CodeFile="TinkerCorner.aspx.cs" Inherits="Default2" Title="Bastelecke" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
	<p class="title">
		Bastelecke</p>
	<p>
		Für die kleinen und die großen Kinderchen...
	</p>
	<p class="subtitle">
		Das Orignial
	</p>
	<a href="javascript:ShowPicture('Color.jpg')">
		<img src="Color.jpg" alt="Das Original" style="width: 400px;" /></a>
	<p class="subtitle">
		Zum selbst ausmalen
	</p>
	<a href="javascript:ShowPicture('Plain.jpg')">
		<img src="Plain.jpg" alt="Zum selbst ausmalen" style="width: 400px;" /></a>
</asp:Content>
