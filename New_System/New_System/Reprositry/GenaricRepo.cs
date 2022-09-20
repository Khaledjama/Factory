using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using New_System.Models;

namespace New_System.Reprositry
{
    public class GenaricRepo<T> : IGenaricRepo<T> where T : class
    {
        private Factory2Entities2 _context = null;
        private DbSet<T> table = null;
        public GenaricRepo()
        {
            this._context = new Factory2Entities2();
            table = _context.Set<T>();
        }
        public GenaricRepo(Factory2Entities2 _context)
        {
            this._context = _context;
            table = _context.Set<T>();
        }
        public void Delete(object id)
        {
            T existing = table.Find(id);
            table.Remove(existing);
        }

        public IEnumerable<T> GetAll()
        {
            return table.ToList();
        }

        public T GetById(object id)
        {
            return table.Find(id);
        }

        public void Insert(T obj)
        {
            table.Add(obj);
        }

        public void Save()
        {
            _context.SaveChanges();
        }

        public void Update(T obj)
        {
            table.Attach(obj);
            _context.Entry(obj).State = EntityState.Modified;
        }
    }
}