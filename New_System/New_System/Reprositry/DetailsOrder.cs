using New_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace New_System.Reprositry
{
    public class DetailsOrder : IdetailsOrder
    {
        public IEnumerable<OrderDetail> GetLastOrderDetails()
        {
            throw new NotImplementedException();
        }
    }
}