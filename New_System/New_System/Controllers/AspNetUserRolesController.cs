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
    public class AspNetUserRolesController : Controller
    {
        private Factory2Entities2 db = new Factory2Entities2();

        // GET: AspNetUserRole
        public ActionResult Index()
        {
            var AspNetUserRole = db.AspNetUserRoles.Include(a => a.AspNetRole).Include(a => a.AspNetUser);
            return View(AspNetUserRole.ToList());
        }

        // GET: AspNetUserRole/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AspNetUserRole AspNetUserRole = db.AspNetUserRoles.Find(id);
            if (AspNetUserRole == null)
            {
                return HttpNotFound();
            }
            return View(AspNetUserRole);
        }

        // GET: AspNetUserRole/Create
        public ActionResult Create()
        {
            ViewBag.RoleId = new SelectList(db.AspNetRoles, "Id", "Name");
            ViewBag.UserId = new SelectList(db.AspNetUsers, "Id", "Email");
            return View();
        }

        // POST: AspNetUserRole/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "UserId,RoleId,message")] AspNetUserRole AspNetUserRole)
        {
            if (ModelState.IsValid)
            {
                db.AspNetUserRoles.Add(AspNetUserRole);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.RoleId = new SelectList(db.AspNetRoles, "Id", "Name", AspNetUserRole.RoleId);
            ViewBag.UserId = new SelectList(db.AspNetUsers, "Id", "Email", AspNetUserRole.UserId);
            return View(AspNetUserRole);
        }

        // GET: AspNetUserRole/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AspNetUserRole AspNetUserRole = db.AspNetUserRoles.Find(id);
            if (AspNetUserRole == null)
            {
                return HttpNotFound();
            }
            ViewBag.RoleId = new SelectList(db.AspNetRoles, "Id", "Name", AspNetUserRole.RoleId);
            ViewBag.UserId = new SelectList(db.AspNetUsers, "Id", "Email", AspNetUserRole.UserId);
            return View(AspNetUserRole);
        }

        // POST: AspNetUserRole/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "UserId,RoleId,message")] AspNetUserRole AspNetUserRole)
        {
            if (ModelState.IsValid)
            {
                db.Entry(AspNetUserRole).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.RoleId = new SelectList(db.AspNetRoles, "Id", "Name", AspNetUserRole.RoleId);
            ViewBag.UserId = new SelectList(db.AspNetUsers, "Id", "Email", AspNetUserRole.UserId);
            return View(AspNetUserRole);
        }

        // GET: AspNetUserRole/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AspNetUserRole AspNetUserRole = db.AspNetUserRoles.Find(id);
            if (AspNetUserRole == null)
            {
                return HttpNotFound();
            }
            return View(AspNetUserRole);
        }

        // POST: AspNetUserRole/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            AspNetUserRole AspNetUserRole = db.AspNetUserRoles.Find(id);
            db.AspNetUserRoles.Remove(AspNetUserRole);
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
