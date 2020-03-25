using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml;

public partial class GuestbookWebUserControl : System.Web.UI.UserControl
{
	#region filename
	/// <summary>
	/// Backing field of Filename. Filename of the datastore.
	private String filename;
	#endregion

	#region Filename
	/// <summary>
	/// Filename of the datastore.
	/// </summary>
	[Personalizable (),
	WebBrowsable (),
	WebDisplayName ("Name of the file of the data store."),
	WebDescription ("The path to the file that stores the guestbook entries.")]
	public String Filename
	{
		get
		{
			return this.filename;
		}
		set
		{
			this.filename = value;
		}
	}
	#endregion

	#region Render
	protected override void Render (HtmlTextWriter writer)
	{
		base.Render (writer);
		XmlDocument document = new XmlDocument ();
		String path = this.Page.MapPath (this.filename);
		document.Load (path);

		writer.WriteLine ("<table border='0' cellspacing='0' cellpadding='0' style='width:100%'>");

		for (int index = document.ChildNodes[1].ChildNodes.Count - 1; index >= 0; index --)
		{
			XmlNode current = document.ChildNodes[1].ChildNodes[index];
			
			writer.WriteLine ("<tr>");
			writer.WriteLine ("<td>");
			WriteSingleEntry (current, writer);
			writer.WriteLine ("</td>");
			writer.WriteLine ("</tr>");

			writer.WriteLine ("<tr style='height:10px;'>");
			writer.WriteLine ("<td>");
			writer.WriteLine ("<hr>");
			writer.WriteLine ("</td>");
			writer.WriteLine ("</tr>");
		}

		writer.WriteLine ("</table>");
	}
	#endregion

	#region WriteSingleEntry
	/// <summary>
	/// A new method stub.
	/// </summary>
	private void WriteSingleEntry (XmlNode node, HtmlTextWriter writer)
	{
		writer.WriteLine ("<table>");
		
		writer.WriteLine ("<tr>");
		writer.WriteLine ("<td style='width:70px'>Name</td>");
		writer.WriteLine ("<td>");
		writer.WriteLine (node.ChildNodes[0].InnerText);
		writer.WriteLine ("</td>");
		writer.WriteLine ("<tr>");

		writer.WriteLine ("<tr>");
		writer.WriteLine ("<td style='width:70px'>Datum</td>");
		writer.WriteLine ("<td>");
		writer.WriteLine (node.ChildNodes[1].InnerText);
		writer.WriteLine ("</td>");
		writer.WriteLine ("<tr>");

		writer.WriteLine ("<tr>");
		writer.WriteLine ("<td style='width:70px'>Email</td>");
		writer.WriteLine ("<td>");
		writer.WriteLine (node.ChildNodes[2].InnerText);
		writer.WriteLine ("</td>");
		writer.WriteLine ("<tr>");

		writer.WriteLine ("<tr>");
		writer.WriteLine ("<td style='width:70px'>Text</td>");
		writer.WriteLine ("<td>");
		writer.WriteLine (node.ChildNodes[3].InnerText);
		writer.WriteLine ("</td>");
		writer.WriteLine ("<tr>");

		writer.WriteLine ("</table>");
	}
	#endregion
}
