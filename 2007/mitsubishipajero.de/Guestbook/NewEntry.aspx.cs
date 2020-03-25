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

public partial class Default2 : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
	}

	protected void saveButton_Click (object sender, EventArgs e)
	{
		XmlDocument document = new XmlDocument ();
		document.Load (this.Page.MapPath ("~/Guestbook/GuestbookEntries.xml"));

		XmlNode newNode = document.CreateElement ("entry");
		newNode.AppendChild (document.CreateElement ("username"));
		newNode.AppendChild (document.CreateElement ("date"));
		newNode.AppendChild (document.CreateElement ("email"));
		newNode.AppendChild (document.CreateElement ("message"));

		newNode.ChildNodes[0].InnerText = nameTextBox.Text;
		newNode.ChildNodes[1].InnerText = DateTime.Now.ToShortDateString ();
		newNode.ChildNodes[2].InnerText = emailTextBox.Text;
		newNode.ChildNodes[3].InnerText = messageTextBox.Text;

		document.ChildNodes[1].AppendChild (newNode);
		document.Save (this.Page.MapPath ("~/Guestbook/GuestbookEntries.xml"));

		Response.Redirect ("./Guestbook.aspx");
	}
}
