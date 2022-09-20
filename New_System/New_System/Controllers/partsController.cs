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
    //[Authorize(Roles = "Admine")]

    public class partsController : Controller
    {
        private UnitOfWork unit = new UnitOfWork();
        private Factory2Entities2 db = new Factory2Entities2();
        // GET: parts
        public ActionResult Index()
        {
            return View(db.parts.ToList());
        }

        // GET: parts/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            part part = unit.PartReprositry.GetById(id);
            if (part == null)
            {
                return HttpNotFound();
            }
            return View(part);
        }

        // GET: parts/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: parts/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,Name")] part part)
        {
            if (ModelState.IsValid)
            {
                unit.PartReprositry.Insert(part);
                unit.Save();
                return RedirectToAction("Index");
            }

            return View(part);
        }

        // GET: parts/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            part part = unit.PartReprositry.GetById(id);
            if (part == null)
            {
                return HttpNotFound();
            }
            return View(part);
        }

        // POST: parts/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,Name")] part part)
        {
            if (ModelState.IsValid)
            {
                unit.PartReprositry.Update(part);
                unit.Save();
                return RedirectToAction("Index");
            }
            return View(part);
        }

        // GET: parts/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            part part = unit.PartReprositry.GetById(id);
            if (part == null)
            {
                return HttpNotFound();
            }
            return View(part);
        }

        // POST: parts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            unit.PartReprositry.Delete(id);
            unit.Save();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                unit.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
