using New_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace New_System.Reprositry
{
    interface Iorder
    {
        order GetOrderByDate(DateTime date, string UserId);
        order GetLastOrderForUser(string UserId);
        IEnumerable<order> GetOrdersFromToDate(DateTime date, DateTime date2, string UserId);
        IEnumerable<order> getorder3(DateTime date);

    }
}
