using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using New_System.Models;

namespace New_System.Reprositry
{
    interface IProduct : IGenaricRepo<Product>
    {
        bool check(int id, object d);
        bool Exsiteinorder(int id, List<Models.Item> cart);
        IEnumerable<Product> SearchByName(string Name, string Type);
    }
}
