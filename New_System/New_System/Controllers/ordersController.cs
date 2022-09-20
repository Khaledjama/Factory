using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using New_System.Models;
using New_System.Reprositry;

namespace New_System.Controllers
{
    public class OrdersController : Controller
    {
        UnitOfWork unit = new UnitOfWork();
        private OrderRepo GetOrderUser = new OrderRepo();
        List<Models.Item> CartList = new List<Item>();
        //GET: Orders
        public ActionResult All()
        {
            var current = unit.OrderReprositry.GetAll().ToList();
            Session["date1"] = unit.DepartmentRepository.GetAll().ToList();
            return View(current.ToList());
        }
        public ActionResult SearchForOrders(DateTime date1, DateTime date2)
        {
            try
            {
                var UserId = User.Identity.GetUserId();
                var orders = unit.OrederFunctions.GetOrdersFromToDate(date1, date2, UserId);
                Session["date1"] = unit.DepartmentRepository.GetAll().ToList();
                return View("All", orders.ToList());
            }
            catch (Exception ex)
            {
                return View("Error", ex);
            }

        }
        [HttpGet]
        public ActionResult AddOrder()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddOrder(order or)
        {
            try
            {
                var userid = User.Identity.GetUserId();
                or.CustomerSSn = or.CustomerSSn;
                or.GetOrder_Date = DateTime.Now;
                or.CustomerName = userid;
                unit.OrderReprositry.Insert(or);
                unit.Save();
                return RedirectToAction("UpGradeCart_List", "Bills");
            }
            catch
            {

                return View("erorr");
            }
        }
        //GET: MyOrder
        [Authorize]
        public ActionResult GetOrder()
        {
            return View();
        }
        [HttpPost]
        public ActionResult GetOrder(DateTime date)
        {
            try
            {
                var UserId = User.Identity.GetUserId();
                var CurrentOrder = unit.OrederFunctions.GetOrderByDate(date, UserId);
                var IdOrder = CurrentOrder.Id;
                var detailsorder = unit.DetailsOrderReprositry.GetAll().Where(s => s.OrderId == IdOrder).ToList();
                ViewBag.ss = "Khaled";
                ViewBag.Name = unit.AspNetUserReprositry.GetById(UserId).UserName;
                return View(detailsorder);
            }
            catch
            {
                ViewBag.alert = "khaled";
                return View();
            }
        }
        public ActionResult GetMyOrder()
        {
            List<New_System.Models.Item> CartList = (List<New_System.Models.Item>)Session["cart"];
            var userId = User.Identity.GetUserId();

            try
            {
                ViewBag.Name = unit.AspNetUserReprositry.GetById(userId).UserName;
                return View(CartList.ToList());
            }
            catch (Exception ex)
            {
                return View("Error", ex);
            }
            //finally
            //{
            //    CartList.Clear();
            //}
        }
        public ActionResult GetMyOrderDetails(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var OrderDetails = unit.DetailsOrderReprositry.GetAll().Where(s => s.OrderId == id).ToList();
            var Currentuser = unit.OrderReprositry.GetById(id);
            ViewBag.CustomerUserName = Currentuser.AspNetUser.UserName;
            if (OrderDetails == null)
            {
                return HttpNotFound();
            }
            return View(OrderDetails);
        }
        [Authorize]
        public ActionResult GetLastOrderToMe()
        {
            string UserId = User.Identity.GetUserId();
            var CurrentOrder = unit.OrederFunctions.GetLastOrderForUser(UserId);
            if (CurrentOrder != null)
            {
                int OrderId = CurrentOrder.Id;
                var CurrentOrderDetails = unit.DetailsOrderReprositry.GetAll().Where(s => s.OrderId == OrderId).ToList();
                ViewBag.Name = unit.AspNetUserReprositry.GetById(UserId).UserName;
                ViewBag.Message = "Khaledjamal";
                return View(CurrentOrderDetails);
            }
            else
            {
                ViewBag.ErrorMessage = "you don'nt make order from this Factory Yet !";
                return View();
            }

        }
    }
}