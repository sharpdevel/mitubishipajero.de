﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using MitsubishiPajero.Pages.Shared;

namespace MitsubishiPajero.Pages.Galerie.Evolution
{
    public class IndexModel : PageModel
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
            this.GalleryVM = new GalleryPartialModel("/images/gallery/evolution/");
        }
        #endregion
    }
}