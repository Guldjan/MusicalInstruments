using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MusicalInstruments.Controllers
{
    public class CategoriesController : Controller
    {
        public ActionResult Strings()
        {
            return View();
        }

        public ActionResult Brass()
        {
            return View();
        }

        public ActionResult Percussion()
        {
            return View();
        }

        public ActionResult Keys()
        {
            return View();
        }
    }
}