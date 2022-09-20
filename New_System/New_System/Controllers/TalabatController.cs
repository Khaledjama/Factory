using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace New_System.Controllers
{
    [Authorize(Roles = "Admine")]

    public class TalabatController : Controller
    {
        // GET: Talabat
        public ActionResult Orders()
        {
            return View();
        }
    }
}