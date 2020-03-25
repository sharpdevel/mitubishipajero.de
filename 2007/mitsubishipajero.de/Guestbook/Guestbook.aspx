<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
	CodeFile="Guestbook.aspx.cs" Inherits="Default2" Title="Gästebuch." %>

<%@ Register Src="GuestbookWebUserControl.ascx" TagName="GuestbookWebUserControl"
	TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
	<table style="width: 100%">
		<tr>
			<td style="width: 50px; vertical-align:top;">
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
			<td style="width: 539px">
				<uc1:GuestbookWebUserControl id="GuestbookWebUserControl1" runat="server" Filename="~/Guestbook/GuestbookEntries.xml">
				</uc1:GuestbookWebUserControl>
			</td>
		</tr>
	</table>
	
</asp:Content>
