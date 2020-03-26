using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using MitsubishiPajero.Pages.Shared;

namespace MitsubishiPajero.Pages.Dakar.Autos
{
    public class V20Model : PageModel
    {
        //Properties
        #region GalleryVM
        public GalleryPartialModel GalleryVM
        {
            get;
            set;
        }
        #endregion

        //Methods
        #region OnGet
        public void OnGet()
        {
            this.GalleryVM = new GalleryPartialModel("/images/dakar/cars/v20/");
        }
        #endregion
    }
}