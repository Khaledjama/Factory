//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace New_System.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class OrderDetail
    {
        public int Id { get; set; }
        public int product_Id { get; set; }
        public int OrderId { get; set; }
        public Nullable<decimal> ProductSalary { get; set; }
        public Nullable<int> Amount { get; set; }
        public Nullable<decimal> Sum_Salary { get; set; }
    
        public virtual order order { get; set; }
        public virtual Product Product { get; set; }
    }
}
