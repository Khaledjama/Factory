using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using New_System.Reprositry;
using New_System.Models;

namespace New_System.Controllers
{
    public class BillsController : Controller
    {
        UnitOfWork unit = new UnitOfWork();
        public List<Models.Item> cart = new List<Models.Item>();
        // GET: Bills

        public ActionResult Index()
        {
            List<Models.Item> CartList = (List<Models.Item>)Session["cart"];
            return View(Session["cart"]);

        }

        // GET: Bills/Details/5
        public ActionResult Add(int ID, string Name, string Type, string Salary, int Amount)
        {
            try
            {
                //Check If We can Add Product Or Not
                if (unit.ProductFunctions.check(Amount, ID) == true
                    || unit.ProductFunctions.Exsiteinorder(ID, (List<Models.Item>)Session["cart"]) == true)
                {
                    ViewBag.ss = "Invalid quantity or You are selected it befor";
                    return View("Index");
                }
                else if (unit.ProductFunctions.check(Amount, ID) == false
                    && unit.ProductFunctions.Exsiteinorder(ID, (List<Models.Item>)Session["cart"]) == false)
                {
                    if (Session["cart"] == null)
                    {
                        AddToCard(ID, Amount);
                    }
                    else
                    {
                        cart = (List<Models.Item>)Session["cart"];
                        AddToCard(ID, Amount);
                    }
                }
                return View("Index");
            }
            catch
            {
                return View("Error");
            }
        }
        public ActionResult Delete(int id)
        {
            List<Models.Item> cart = (List<Models.Item>)Session["cart"];
            int founditem = -1;
            try
            {
                for (int i = 0; i < cart.Count; i++)
                {
                    if (cart[i].product.Id == id)
                    {
                        founditem = i;
                        break;
                    }
                }
                cart.RemoveAt(founditem);
                if (cart.Count == 0)
                {
                    Session.Remove("cart");
                }
                return View("Index");
            }
            catch
            {
                return View("Error");
            }
        }
        public void AddToCard(int id, int Amount)
        {
            Product curentproduct = unit.ProductReprositry.GetById(id);
            cart.Add(new Models.Item()
            {
                product = curentproduct,
                quantity = Amount
            });
            Session["cart"] = cart;
        }
        //To evacuation the cart in the orderdetails table 
        public ActionResult UpGradeCart_List()
        {
            int orderId = unit.OrderReprositry.GetAll().Select(m => m.Id).Max();
            List<Models.Item> CartList = (List<Models.Item>)Session["cart"];
            Models.OrderDetail orderDetails = new OrderDetail();
            for (int i = 0; i < CartList.Count; i++)
            {
                orderDetails.OrderId = orderId;
                orderDetails.product_Id = CartList[i].product.Id;
                orderDetails.ProductSalary = CartList[i].product.Salary;
                orderDetails.Amount = CartList[i].quantity;
                orderDetails.Sum_Salary = Convert.ToDecimal(CartList[i].product.Salary * CartList[i].quantity);
                unit.DetailsOrderReprositry.Insert(orderDetails);
                unit.Save();
            }

            return RedirectToAction("UpDateProducts", "Products");
        }
    }
}