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
   // [Authorize(Roles = "Admine")]
    public class Raw_MaterialsController : Controller
    {
        private Factory2Entities2 db = new Factory2Entities2();
        private UnitOfWork unit = new UnitOfWork();
        // GET: Raw_Materials
        public ActionResult Index()
        {
            var raw_Materials = db.Raw_Materials.Include(r => r.Supplier);
            return View(raw_Materials.ToList());
        }

        // GET: Raw_Materials/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Raw_Materials raw_Materials = db.Raw_Materials.Find(id);
            if (raw_Materials == null)
            {
                return HttpNotFound();
            }
            return View(raw_Materials);
        }

        // GET: Raw_Materials/Create
        public ActionResult Create()
        {
            ViewBag.Sup_Id = new SelectList(db.Suppliers, "Id", "FirstName");
            return View();
        }

        // POST: Raw_Materials/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Name,Type,Salary,Sup_Id,Amount,DateIsertion")] Raw_Materials raw_Materials)
        {
            if (ModelState.IsValid)
            {
                raw_Materials.DateIsertion = DateTime.Now;
                db.Raw_Materials.Add(raw_Materials);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Sup_Id = new SelectList(db.Suppliers, "Id", "FirstName", raw_Materials.Sup_Id);
            return View(raw_Materials);
        }

        // GET: Raw_Materials/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Raw_Materials raw_Materials = db.Raw_Materials.Find(id);
            if (raw_Materials == null)
            {
                return HttpNotFound();
            }
            ViewBag.Sup_Id = new SelectList(db.Suppliers, "Id", "FirstName", raw_Materials.Sup_Id);
            return View(raw_Materials);
        }

        // POST: Raw_Materials/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Name,Type,Salary,Sup_Id,Amount,DateIsertion")] Raw_Materials raw_Materials)
        {
            if (ModelState.IsValid)
            {
                raw_Materials.DateIsertion = DateTime.Now;
                db.Entry(raw_Materials).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Sup_Id = new SelectList(db.Suppliers, "Id", "FirstName", raw_Materials.Sup_Id);
            return View(raw_Materials);
        }

        // GET: Raw_Materials/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Raw_Materials raw_Materials = db.Raw_Materials.Find(id);
            if (raw_Materials == null)
            {
                return HttpNotFound();
            }
            return View(raw_Materials);
        }

        // POST: Raw_Materials/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Raw_Materials raw_Materials = db.Raw_Materials.Find(id);
            db.Raw_Materials.Remove(raw_Materials);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Add_Amount(int Amount, int ID)
        {
            var CurrentItem = unit.RawMaterialsReprositry.GetById(ID);
            Input_Materails Materails = new Input_Materails();
            Materails.Name = CurrentItem.Name;
            Materails.Amount = Amount;
            decimal TotalPrice = Convert.ToDecimal(CurrentItem.Salary * Amount);
            Materails.Total_Price = TotalPrice;
            Materails.Insert_date = DateTime.Now;
            Materails.IdMaterials = CurrentItem.Id;
            unit.Input_MaterialsReprositry.Insert(Materails);
            unit.Save();
            UpdateMaterails(ID, Amount);
            return RedirectToAction("Index");
        }
        public void AddAmountToRawMaterials(int Id, int Amount)
        {
            var CurrentItem = unit.RawMaterialsReprositry.GetById(Id);
            CurrentItem.Amount = Amount;
            unit.Save();
        }
        public void UpdateMaterails(int id, int Amount)
        {
            var currentraw = unit.RawMaterialsReprositry.GetById(id);
            currentraw.Amount = currentraw.Amount - Amount;
            unit.Save();
        }
        public void AddFromInputMaterails(int Amount, int Id)
        {
            var currentItem = unit.RawMaterialsReprositry.GetById(Id);
            currentItem.Amount = currentItem.Amount + Amount;
            unit.Save();
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
