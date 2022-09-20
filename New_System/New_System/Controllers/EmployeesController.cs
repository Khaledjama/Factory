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
    public class EmployeesController : Controller
    {
        private UnitOfWork unit = new UnitOfWork();

        private Factory2Entities2 db = new Factory2Entities2();
        //GET: Employees
        public ActionResult Index()
        {
            var employees = db.Employees.Include(e => e.Department);
            return View(employees.ToList());
        }

        //GET: Employees/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Employee employee = unit.EmployeeReprositry.GetById(id);
            if (employee == null)
            {
                return HttpNotFound();
            }
            return View(employee);
        }

        // GET: Employees/Create
        public ActionResult Create()
        {
            ViewBag.emp_Id = new SelectList(unit.DepartmentRepository.GetAll(), "Id", "Name");
            return View();
        }

        // POST: Employees/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Employee employee)
        {
            if (ModelState.IsValid)
            {
                unit.EmployeeReprositry.Insert(employee);
                unit.Save();
                return RedirectToAction("Index");
            }

            ViewBag.emp_Id = new SelectList(unit.DepartmentRepository.GetAll(), "Id", "Name", employee.emp_Id);
            return View(employee);
        }

        // GET: Employees/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Employee employee = unit.EmployeeReprositry.GetById(id);
            if (employee == null)
            {
                return HttpNotFound();
            }
            ViewBag.emp_Id = new SelectList(unit.DepartmentRepository.GetAll(), "Id", "Name", employee.emp_Id);
            return View(employee);
        }

        // POST: Employees/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Employee employee)
        {
            if (ModelState.IsValid)
            {
                unit.EmployeeReprositry.Update(employee);
                unit.Save();
                return RedirectToAction("Index");
            }
            ViewBag.emp_Id = new SelectList(unit.DepartmentRepository.GetAll(), "Id", "Name", employee.emp_Id);
            return View(employee);
        }

        // GET: Employees/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Employee employee = unit.EmployeeReprositry.GetById(id);
            if (employee == null)
            {
                return HttpNotFound();
            }
            return View(employee);
        }

        // POST: Employees/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            unit.EmployeeReprositry.Delete(id);
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
