using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using New_System.Models;

namespace New_System.Controllers
{
    //[Authorize(Roles = "Admine")]
    public class HalksController : Controller
    {
        private Factory2Entities2 db = new Factory2Entities2();

        // GET: Halks
        public ActionResult Index()
        {
            return View(db.Halks.ToList());
        }

        // GET: Halks/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Halk halks = db.Halks.Find(id);
            if (halks == null)
            {
                return HttpNotFound();
            }
            return View(halks);
        }

        // GET: Halks/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Halks/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Name,Price,Insert_date")] Halk halks)
        {
            if (ModelState.IsValid)
            {
                db.Halks.Add(halks);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(halks);
        }

        // GET: Halks/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Halk halks = db.Halks.Find(id);
            if (halks == null)
            {
                return HttpNotFound();
            }
            return View(halks);
        }

        // POST: Halks/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Name,Price,Insert_date")] Halk halks)
        {
            if (ModelState.IsValid)
            {
                db.Entry(halks).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(halks);
        }

        // GET: Halks/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Halk halks = db.Halks.Find(id);
            if (halks == null)
            {
                return HttpNotFound();
            }
            return View(halks);
        }

        // POST: Halks/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Halk halks = db.Halks.Find(id);
            db.Halks.Remove(halks);
            db.SaveChanges();
            return RedirectToAction("Index");
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
