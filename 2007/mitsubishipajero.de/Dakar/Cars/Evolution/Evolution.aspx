<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
	CodeFile="Evolution.aspx.cs" Inherits="Default2" Title="Rennwagen Modell Evolution" %>

<%@ Register Assembly="FlashControl" Namespace="Bewise.Web.UI.WebControls" TagPrefix="Bewise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
	<p class="title">
		Rennwagen Modell Evolution</p>
	<table id="TechFacts">
		<tr>
			<td class="titlecolumn">
				Daten</td>
			<td class="titlerow">
				Werte</td>
		</tr>
		<tr>
			<td class="titlecolumn">
				Länge</td>
			<td>
				4445 mm</td>
		</tr>
		<tr>
			<td class="titlecolumn">
				Breite</td>
			<td>
				1978&nbsp;mm</td>
		</tr>
		<tr>
			<td class="titlecolumn">
				Radstand</td>
			<td>
				2725&nbsp;mm</td>
		</tr>
		<tr>
			<td class="titlecolumn">
				Gewicht</td>
			<td>
				1825 kg</td>
		</tr>
		<tr>
			<td class="titlecolumn">
				Motor</td>
			<td>
				Based on MIVEC, 6-cylinder, 24 Valve, DOHC</td>
		</tr>
		<tr>
			<td class="titlecolumn">
				Hubraum</td>
			<td>
				3997 cm³</td>
		</tr>
		<tr>
			<td class="titlecolumn">
				Bohrung/Hub</td>
			<td>
				?</td>
		</tr>
		<tr>
			<td class="titlecolumn">
				Maxmiales Drehmoment</td>
			<td>
				360 Nm bei 3.500 U/min</td>
		</tr>
		<tr>
			<td class="titlecolumn">
				Maximale Leistung</td>
			<td>
				270 PS bei 5500 U/min</td>
		</tr>
		<tr>
			<td class="titlecolumn">
				Getriebe</td>
			<td>
				6-Gang Ricardo-type, sequentielles Getriebe und mechanische Gangwahl Permantenter
				Allradantrieb</td>
		</tr>
		<tr>
			<td class="titlecolumn">
				Aufhängung</td>
			<td>
				2 Donerre Stoßdämpfer pro Rad, voll einstellbare Dämpfer und neues hydraulische
				Anti-Roll Bar System</td>
		</tr>
		<tr>
			<td class="titlecolumn">
				Bremsen</td>
			<td>
				Innenbelüftete Scheiben mit 6 Kolben Bremssättel von Brmbo</td>
		</tr>
		<tr>
			<td class="titlecolumn">
				Reifen</td>
			<td>
				Technomagnesio 7 x 16" mit BF-Goodrich 235/85 - 16</td>
		</tr>
		<tr>
			<td class="titlecolumn">
				Tankinhalt</td>
			<td>
				500 Liter</td>
		</tr>
		<tr>
			<td class="titlecolumn">
				Zubehör</td>
			<td>
				Karosserie komplett aus Carbon mit Stahlträger-Unterkonstruktion</td>
		</tr>
	</table>
	<p />
	<Bewise:FlashControl ID="FlashControl1" runat="server" MovieUrl="~/Dakar/Cars/Evolution/viewer.swf"
		BgColor="#F8F8F8" Height="442px" Width="573px" XHTMLcompliant="True" />
</asp:Content>
