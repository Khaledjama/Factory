using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using New_System.Models;
//using New_System.Reprositry;

namespace New_System.Controllers
{
    //[Authorize(Roles = "Admine")]
    public class DepartmentsController : Controller
    {
        //private UnitOfWork unit = new UnitOfWork();
        private Factory2Entities2 db = new Factory2Entities2();
        //GET: Departments
        public ActionResult Index()
        {
            return View(/*unit.DepartmentRepository.GetAll()*/ db.Departments.ToList());
        }

        ////GET: Departments/Details/5
        //public ActionResult Details(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Department department = unit.DepartmentRepository.GetById(id);
        //    if (department == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(department);
        //}

        //// GET: Departments/Create
        //public ActionResult Create()
        //{
        //    return View();
        //}

        //// POST: Departments/Create
        //// To protect from overposting attacks, enable the specific properties you want to bind to, for 
        //// more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Create(Department department)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        unit.DepartmentRepository.Insert(department);
        //        unit.Save();
        //        return RedirectToAction("Index");
        //    }

        //    return View(department);
        //}

        //// GET: Departments/Edit/5
        //public ActionResult Edit(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Department department = unit.DepartmentRepository.GetById(id);
        //    if (department == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(department);
        //}

        //// POST: Departments/Edit/5
        //// To protect from overposting attacks, enable the specific properties you want to bind to, for 
        //// more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Edit([Bind(Include = "Id,Name")] Department department)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        unit.DepartmentRepository.Update(department);
        //        unit.Save();
        //        return RedirectToAction("Index");
        //    }
        //    return View(department);
        //}

        //// GET: Departments/Delete/5
        //public ActionResult Delete(int? id)
        //{
        //    if (id == null)
        //    {
        //        return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
        //    }
        //    Department department = unit.DepartmentRepository.GetById(id);
        //    if (department == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(department);
        //}

        //// POST: Departments/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DeleteConfirmed(int id)
        //{
        //    unit.DepartmentRepository.Delete(id);
        //    return RedirectToAction("Index");
        //}

        //protected override void Dispose(bool disposing)
        //{
        //    //if (disposing)
        //    //{
        //    //    db.Dispose();
        //    //}
        //    //base.Dispose(disposing);
        //    unit.Dispose();
        //}
    }
}