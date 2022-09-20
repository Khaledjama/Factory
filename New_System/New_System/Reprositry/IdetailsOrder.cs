using New_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace New_System.Reprositry
{
    interface IdetailsOrder
    {
        IEnumerable<OrderDetail> GetLastOrderDetails();
    }
}
