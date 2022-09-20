using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using New_System.Models;
using New_System.Reprositry;

namespace New_System.Controllers
{
  //  [Authorize(Roles = "Admine")]
    public class Input_MaterailsController : Controller
    {
        private Factory2Entities2 db = new Factory2Entities2();
        private UnitOfWork unit = new UnitOfWork();
        // GET: Input_Materails
        public ActionResult Index()
        {
            var input_Materails = db.Input_Materails.Include(i => i.Raw_Materials).ToList().Where(s => s.Insert_date.Value.Day == DateTime.Now.Day).ToList();
            return View(input_Materails.ToList());
        }
        public ActionResult ChangeQuantity(int Quantity, int IdMaterail, int ID)
        {
            var currentInput_Materials = unit.Input_MaterialsReprositry.GetById(ID);
            if (currentInput_Materials.Amount <= Quantity)
            {
                return Content("The new quantity shoud less than th old quantity");
            }
            else
            {
                int result = (int)currentInput_Materials.Amount - Quantity;
                Raw_MaterialsController RawCont = new Raw_MaterialsController();
                RawCont.AddFromInputMaterails(result, IdMaterail);
                currentInput_Materials.Amount = Quantity;
                unit.Save();
            }
            return RedirectToAction("Index");
        }
        public ActionResult All_Materails()
        {
            var input_Materails = db.Input_Materails.Include(i => i.Raw_Materials);
            return View("Index", input_Materails.ToList());
        }
        public ActionResult Materails_Month()
        {
            var input_Materails = db.Input_Materails.Include(i => i.Raw_Materials).ToList().Where(s => s.Insert_date.Value.Month == DateTime.Now.Month);
            return View("Index", input_Materails.ToList());
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
