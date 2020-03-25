<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
	CodeFile="Search.aspx.cs" Inherits="Default2" Title="Die Modellreihen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
	<!-- SiteSearch Google -->
	<!-- SiteSearch Google -->
	<form method="get" action="http://www.google.de/custom" target="_blank">
		<table border="0" bgcolor="#ffffff">
			<tr>
				<td nowrap="nowrap" valign="top" align="left" height="32">
					<a href="http://www.google.com/">
						<img src="http://www.google.com/logos/Logo_25wht.gif" border="0" alt="Google" align="middle"></img></a>
				</td>
				<td nowrap="nowrap">
					<input type="hidden" name="domains" value="www.mitsubishipajero.de"></input>
					<input type="text" name="q" size="31" maxlength="255" value=""></input>
					<input type="submit" name="sa" value="Suchen"></input>
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;</td>
				<td nowrap="nowrap">
					<table>
						<tr>
							<td>
								<input type="radio" name="sitesearch" value="" checked="checked"></input>
								<font size="-1" color="#000000">Web</font>
							</td>
							<td>
								<input type="radio" name="sitesearch" value="www.mitsubishipajero.de"></input>
								<font size="-1" color="#000000">www.mitsubishipajero.de</font>
							</td>
						</tr>
					</table>
					<input type="hidden" name="client" value="pub-9521624996031626"></input>
					<input type="hidden" name="forid" value="1"></input>
					<input type="hidden" name="ie" value="ISO-8859-1"></input>
					<input type="hidden" name="oe" value="ISO-8859-1"></input>
					<input type="hidden" name="cof" value="GALT:#008000;GL:1;DIV:#336699;VLC:663399;AH:center;BGC:FFFFFF;LBGC:336699;ALC:0000FF;LC:0000FF;T:000000;GFNT:0000FF;GIMP:0000FF;FORID:1"></input>
					<input type="hidden" name="hl" value="de"></input>
				</td>
			</tr>
		</table>
	</form>
	<!-- SiteSearch Google -->
	<!-- SiteSearch Google -->
</asp:Content>
