using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace MitsubishiPajero.Pages.Shared
{
	public class GalleryPartialModel : PageModel
	{
		//Properties
		#region ImageUrls
		public IEnumerable<String> ImageUrls
		{
			get;
			set;
		} = new List<String>();
		#endregion

		//Constructors
		#region GalleryPartialModel
		public GalleryPartialModel()
		{

		}
		#endregion

		#region GalleryPartialModel
		public GalleryPartialModel(String baseUrl)
		{
			var pathParts = new List<String>
			{
				System.IO.Directory.GetCurrentDirectory(),
				"wwwroot"
			};
			pathParts.AddRange(baseUrl.Split('/'));
			var directoryPath = System.IO.Path.Combine(pathParts.ToArray());
			var directory = new System.IO.DirectoryInfo(directoryPath);

			this.ImageUrls = directory
				.GetFiles()
				.Select(runner => "~" + baseUrl + runner.Name)
				.ToList();
		}
		#endregion

		//Methods
		#region OnGet
		public void OnGet()
		{

		}
		#endregion
	}
}