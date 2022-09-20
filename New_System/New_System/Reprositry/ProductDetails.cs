using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using New_System.Models;
using New_System.Reprositry;

namespace New_System.Reprositry
{
    public class ProductDetails : IProduct
    {
        private Factory2Entities2 db = new Factory2Entities2();

        public bool check(int id, object d)
        {
            var curent = db.Products.Find(d);
            if (curent.Amount.Value < id)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public void Delete(object id)
        {
            throw new NotImplementedException();
        }

        public bool Exsiteinorder(int id, List<Models.Item> cart)
        {
            bool check = true;
            if (cart == null)
            {
                check = false;
            }
            else
            {
                for (int i = 0; i < cart.Count; i++)
                {
                    if (cart[i].product.Id == id)
                    {
                        check = true;
                        break;
                    }
                    else
                    {
                        check = false;
                    }
                }
            }
            return check;
        }

        public IEnumerable<Models.Product> GetAll()
        {
            throw new NotImplementedException();
        }

        public Models.Product GetById(object id)
        {
            throw new NotImplementedException();
        }

        public void Insert(Models.Product obj)
        {
            throw new NotImplementedException();
        }

        public void Save()
        {
            throw new NotImplementedException();
        }

        public void Update(Models.Product obj)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Product> SearchByName(string NamePro, string Type)
        {
            if (String.IsNullOrEmpty(NamePro) == true)
            {
                var Products = db.Products.ToList().Where(s => s.Type.ToLower().Contains(Type.ToLower())).ToList();
                return Products;
            }
            else if (string.IsNullOrEmpty(Type) == true)
            {
                var Products = db.Products.ToList().Where(s => s.Name.ToLower().Contains(NamePro.ToLower())).ToList();
                return Products;
            }
            else
            {
                var Products = db.Products.ToList().Where(s => s.Type.ToLower().Contains(Type.ToLower()) || s.Name.ToLower().Contains(NamePro.ToLower())).ToList();


                return Products;
            }
            //var Products = db.Product.ToList().Where(s => s.Name.ToLower().Contains(NamePro.ToLower()) || s.Type.ToLower().Contains(Type.ToLower())).ToList();
        }
    }
}