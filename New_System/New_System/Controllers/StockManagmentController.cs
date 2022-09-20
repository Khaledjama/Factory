using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace New_System.Controllers
{
    //[Authorize(Roles = "Admine")]

    public class StockManagmentsController : Controller
    {
        // GET: StockManagments
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Treasury()
        {
            return View();
        }
    }
}