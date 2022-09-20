using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using New_System.Models;

namespace New_System.Models
{
    public class Item
    {
        public int id { get; set; }
        public Product product { get; set; }
        public int quantity { get; set; }
    }
}