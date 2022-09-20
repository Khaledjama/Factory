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
    public class OutPutOfProductsController : Controller
    {
        private Factory2Entities2 db = new Factory2Entities2();
        // GET: OutPutOfProducts
        UnitOfWork unit = new UnitOfWork();
        public ActionResult Index()
        {
            var outPutOfProduct = db.OutPutOfProducts.Include(o => o.Product);
            return View(unit.ProductOutPutReprositry.GetAll().Where(s => s.Isert_date.Value.Day.ToString() == DateTime.Now.Day.ToString()));
        }
        // GET: OutPutOfProducts/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            OutPutOfProduct outPutOfProduct = db.OutPutOfProducts.Find(id);
            if (outPutOfProduct == null)
            {
                return HttpNotFound();
            }
            return View(outPutOfProduct);
        }

        // GET: OutPutOfProducts/Create
        public ActionResult Create()
        {
            ViewBag.Id_Product = new SelectList(db.Products, "Id", "Name");
            return View();
        }

        // POST: OutPutOfProducts/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Name_Product,Amount,Total_Salary,Isert_date,Id_Product")] OutPutOfProduct outPutOfProduct)
        {
            if (ModelState.IsValid)
            {
                db.OutPutOfProducts.Add(outPutOfProduct);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Id_Product = new SelectList(db.Products, "Id", "Name", outPutOfProduct.Id_Product);
            return View(outPutOfProduct);
        }

        // GET: OutPutOfProducts/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            OutPutOfProduct outPutOfProduct = db.OutPutOfProducts.Find(id);
            if (outPutOfProduct == null)
            {
                return HttpNotFound();
            }
            ViewBag.Id_Product = new SelectList(db.Products, "Id", "Name", outPutOfProduct.Id_Product);
            return View(outPutOfProduct);
        }

        // POST: OutPutOfProducts/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Name_Product,Amount,Total_Salary,Isert_date,Id_Product")] OutPutOfProduct outPutOfProduct)
        {
            if (ModelState.IsValid)
            {
                db.Entry(outPutOfProduct).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Id_Product = new SelectList(db.Products, "Id", "Name", outPutOfProduct.Id_Product);
            return View(outPutOfProduct);
        }

        // GET: OutPutOfProducts/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            OutPutOfProduct outPutOfProduct = db.OutPutOfProducts.Find(id);
            if (outPutOfProduct == null)
            {
                return HttpNotFound();
            }
            return View(outPutOfProduct);
        }

        // POST: OutPutOfProducts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            OutPutOfProduct outPutOfProduct = db.OutPutOfProducts.Find(id);
            db.OutPutOfProducts.Remove(outPutOfProduct);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult ChangeQuantity(int Quantity, int IdProduct, int ID)
        {
            var currentOutPut = db.OutPutOfProducts.Find(ID);
            if (currentOutPut.Amount < Quantity)
            {
                return Content("The New AMount Should Less than Old AMount");
            }
            else
            {
                int Result = (int)currentOutPut.Amount - Quantity;
                ProductsController proCont = new ProductsController();
                proCont.AddFromInputMaterails(Result, IdProduct);
                currentOutPut.Amount = Quantity;
                db.SaveChanges();
            }
            return View("Index", db.OutPutOfProducts.ToList());
        }
        public ActionResult Products_Month()
        {
            return View("Index", unit.ProductOutPutReprositry.GetAll().Where(s => s.Isert_date.Value.Month == DateTime.Now.Month).ToList());
        }
        public ActionResult All_OutProduct()
        {
            return View("Index", unit.ProductOutPutReprositry.GetAll());
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
