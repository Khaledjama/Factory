using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using New_System.Models;
using New_System.Reprositry;
namespace New_System.Controllers
{
    public class ProductsController : Controller
    {
        private UnitOfWork unit = new UnitOfWork();
        public ProductDetails ProductFunctions = new ProductDetails();
        Factory2Entities2 db = new Factory2Entities2();
        //GET: Products
        List<Models.Product> pr = new List<Product>();
        Models.Product prod = new Product();
        //Function to make and View All Products in the home Page
        public ActionResult List_product(string id)
        {
            if (id == "Delete")
            {
                List<Models.Item> CartList = (List<Models.Item>)Session["cart"];
                Session.Clear();
            }
            return View(db.Products.ToList());
        }
        //End Function

        //to view details of product to user
        public ActionResult View_Product(int id)
        {
            var current_pro = unit.ProductReprositry.GetById(id);
            try
            {
                return View(current_pro);
            }
            catch (Exception ex)
            {
                return View("Error", ex);
            }
        }
        //end function
        //Function to Help User To make an order
        [Authorize]
        public ActionResult Index2()
        {
            return View(unit.ProductReprositry.GetAll());
        }
        public ActionResult SearchByN_T(string Name, string Type)
        {
            var Products = unit.ProductFunctions.SearchByName(Name, Type);
            return View("Index2", Products.ToList());
        }
        //end function
        //strat function to Admine Only
        //[Authorize(Roles = "Admine")]
        public ActionResult Index()
        {
            return View(unit.ProductReprositry.GetAll());
        }
        [Authorize(Roles = "Admine")]
        // to find an Product
        public ActionResult Find(string Name)
        {
            var CurrentProduct = unit.ProductReprositry.GetAll().Where(s => s.Name.ToLower().Contains(Name.ToLower())).ToList();
            return View("index", CurrentProduct);
        }
        [Authorize(Roles = "Admine")]
        // to find an Product
        public ActionResult Add_Amount(int Id, int Amount)
        {
            var product = unit.ProductReprositry.GetById(Id);
            product.Amount = product.Amount + Amount;

            AddToOutPutProduct(Id, Amount);
            return RedirectToAction("Index");
        }
        public void AddToOutPutProduct(int Id, int Amount)
        {
            OutPutOfProduct _Product = new OutPutOfProduct();
            var CurrentProduct = unit.ProductReprositry.GetById(Id);
            _Product.Name_Product = CurrentProduct.Name;
            _Product.Amount = Amount;
            _Product.Isert_date = DateTime.Now;
            _Product.Id_Product = Id;
            _Product.Total_Salary = Convert.ToDecimal(CurrentProduct.Salary * Amount);
            unit.ProductOutPutReprositry.Insert(_Product);
            unit.Save();
        }

        // GET: Products/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var product = unit.ProductReprositry.GetById(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // GET: Products/Create
        //[Authorize(Roles = "Admine")]
        public ActionResult Create()
        {
            return View();
        }

        // POST: Products/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        //[Authorize(Roles = "Admine")]
        public ActionResult Create(HttpPostedFileBase file, Product product)
        {
            if (ModelState.IsValid)
            {

                insert_image(file, product);
                unit.ProductReprositry.Insert(product);
                unit.Save();
                return RedirectToAction("Index");
            }
            return View(product);
        }

        // GET: Products/Edit/5
       // [Authorize(Roles = "Admine")]
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var product = unit.ProductReprositry.GetById(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: Products/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        //[Authorize(Roles = "Admine")]
        public ActionResult Edit(HttpPostedFileBase file, Product product)
        {
            if (ModelState.IsValid)
            {
                insert_image(file, product);
                unit.ProductReprositry.Update(product);
                unit.Save();
                return RedirectToAction("Index");
            }
            return View(product);
        }

        // GET: Products/Delete/5
        //[Authorize(Roles = "Admine")]
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var product = unit.ProductReprositry.GetById(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: Products/Delete/5
        //[Authorize(Roles = "Admine")]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            unit.ProductReprositry.Delete(id);
            unit.Save();
            return RedirectToAction("Index");
        }

        public ActionResult UpDateProducts()
        {
            List<Models.Item> CartList = (List<Models.Item>)Session["cart"];
            for (int i = 0; i < CartList.Count; i++)
            {
                int productId = CartList[i].product.Id;
                var p = unit.ProductReprositry.GetById(productId);
                p.Amount = p.Amount - CartList[i].quantity;
                unit.Save();
            }
            //int NumberofOrder = unit.OrderReprositry.GetAll().LastOrDefault().Id;
            //Session.Clear();
            return RedirectToAction("GetMyOrder", "Orders");
        }
        //[Authorize(Roles = "Admine")]
        public void AddFromInputMaterails(int Amount, int Id)
        {
            var currentItem = unit.ProductReprositry.GetById(Id);
            currentItem.Amount = (int)currentItem.Amount + Amount;
            unit.Save();
        }
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                Models.Factory2Entities2 db = new Factory2Entities2();
                db.Dispose();
            }
            base.Dispose(disposing);
        }
       // [Authorize(Roles = "Admine")]

        public void insert_image(HttpPostedFileBase file, Product product)
        {
            string filename = Path.GetFileName(file.FileName);
            string _filename = DateTime.Now.ToString("yymmssfff") + filename;
            string extention = Path.GetExtension(file.FileName);
            string path = Path.Combine(Server.MapPath("~/Images/"), _filename);
            product.Image = "~/Images/" + _filename;
            if (extention.ToLower() == ".jpg" || extention.ToLower() == ".jpeg" || extention.ToLower() == ".png")
            {
                file.SaveAs(path);
            }
        }

    }
}
