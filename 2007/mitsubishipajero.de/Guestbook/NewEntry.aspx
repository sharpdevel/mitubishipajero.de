<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
	CodeFile="NewEntry.aspx.cs" Inherits="Default2" Title="Neuer Eintrag ins Gästebuch." %>

<%@ Register Src="GuestbookWebUserControl.ascx" TagName="GuestbookWebUserControl"
	TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
	<table style="width: 100%">
		<tr>
			<td style="width: 50px">
				<table>
					<tr>
						<td>
							<a href="Guestbook.aspx"><img style="border: solid 0px black;" src="fileopen.png" alt="Einträge anzeigen"/></a>
						</td>
					</tr>
					<tr>
						<td>
							<a href="NewEntry.aspx"><img style="border: solid 0px black;" src="filenew.png" alt="Eintrag verfassen"/></a>
						</td>
					</tr>
				</table>
			</td>
			<td style="width: 539px; vertical-align:top;">
				<table style="width: 100%">
					<tr>
						<td style="width: 95px">
							Name</td>
						<td>
							<asp:TextBox ID="nameTextBox" runat="server" Width="100%"></asp:TextBox></td>
					</tr>
					<tr>
						<td style="width: 95px">
							Email</td>
						<td>
							<asp:TextBox ID="emailTextBox" runat="server" Width="100%"></asp:TextBox></td>
					</tr>
					<tr>
						<td style="width: 95px">
							Nachricht</td>
						<td>
							<asp:TextBox ID="messageTextBox" runat="server" Width="100%"></asp:TextBox></td>
					</tr>
				</table>
				<br />
				<br />
				<asp:Button ID="saveButton" runat="server" Text="Speichern" OnClick="saveButton_Click" /></td>
		</tr>
	</table>
	
</asp:Content>
