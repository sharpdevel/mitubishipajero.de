<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
	CodeFile="Gallery.aspx.cs" Inherits="Default2" Title="Die Dakar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
	<p class="title">
		Galerien</p>
	<table border="0" style="width: 100%; text-align: center;">
		<tr>
			<td>
				<a href="../Models/L040/Gallery/Gallery.aspx">
					<img style="width: 100px" src="../Models/L040/Gallery/Tumbs/1981_cabrio_1.jpg" alt="Pictures of the L040" /></a>
			</td>
			<td>
				<a href="../Models/V20/Gallery/Gallery.aspx">
					<img style="width: 100px" src="../Models/V20/Gallery/Thumbs/1991_short_1.jpg" alt="Pictures  of the V20" /></a>
			</td>
			<td>
				<a href="../Models/V60/Gallery/Gallery.aspx">
					<img style="width: 100px" src="../Models/V60/Gallery/Thumbs/2000.jpg" alt="Pictures of the V60" /></a>
			</td>
			<td>
				<a href="../Models/V80/Gallery/Gallery.aspx">
					<img style="width: 100px" src="../Models/V80/Gallery/Thumbs/02.jpg" alt="Pictures of the V80" /></a>
			</td>
		</tr>
		<tr>
			<td>
				Pictures of the L040</td>
			<td>
				Pictures of the V20</td>
			<td>
				Pictures of the V60</td>
			<td>
				Pictures of the V80</td>
		</tr>
		<tr>
			<td>
				<a href="../Models/Evolution/Gallery/Gallery.aspx">
					<img style="width: 100px" src="../Models/Evolution/Gallery/Thumbs/001.jpg" alt="Pictures of Evolution" /></a>
			</td>
			<td>
				<a href="Dakar/Dakar.aspx">
					<img style="width: 100px" src="Dakar/Thumbs/001.jpg" alt="Pictures from the Dakar" /></a>
			</td>
			<td>
				<a href="Private/Private.aspx">
					<img style="width: 100px" src="Private/Thumbs/l040_offroad1.jpg" alt="Picures of private Pajeros" /></a>
			</td>
			<td>
			</td>
		</tr>
		<tr>
			<td>
				Pictures of the Evolution
			</td>
			<td>
				Pictures from the Dakar</td>
			<td>
				Pictures of private Pajeros</td>
			<td>
			</td>
		</tr>
	</table>
</asp:Content>
