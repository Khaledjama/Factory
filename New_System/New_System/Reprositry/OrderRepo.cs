using New_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace New_System.Reprositry
{
    public class OrderRepo : Iorder
    {
        public Models.Factory2Entities2 db = new Models.Factory2Entities2();

        public order GetOrderByDate(DateTime date, string UserId)
        {
            order CurrentOrder = db.orders.Where(s => s.GetOrder_Date.Value.Month == date.Month
            && s.GetOrder_Date.Value.Year == date.Year && s.GetOrder_Date.Value.Day == date.Day
            && s.CustomerName == UserId).ToList().LastOrDefault();
            return CurrentOrder;
        }
        //Start Function 
        // this func will return order from date1 to date2 as list of orders
        public IEnumerable<order> GetOrdersFromToDate(DateTime date1, DateTime date2, string UserId)
        {
            var orders = db.orders.Where(s => s.GetOrder_Date.Value.Month >= date1.Month &&
            s.GetOrder_Date.Value.Month <= date2.Month
            && s.GetOrder_Date.Value.Day >= date1.Day &&
            s.GetOrder_Date.Value.Day <= date2.Day).ToList();
            return orders;
        }
        // end function 

        public IEnumerable<order> getorder3(DateTime date)
        {

            var orders = db.orders.Where(s => s.GetOrder_Date.Value.Month == date.Month).ToList();
            return orders;
        }
        public order GetLastOrderForUser(string UserId)
        {
            order order = db.orders.Where(s => s.AspNetUser.Id == UserId).ToList().LastOrDefault();
            return order;
        }
    }
}
