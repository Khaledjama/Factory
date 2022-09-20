using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using New_System.Models;

namespace New_System.Reprositry
{
    public class RawMaterials : IRawMaterials
    {
        private Factory2Entities2 db = new Factory2Entities2();

        public void AddAmountToRawMaterials(Input_Materails input_Materails)
        {
            Raw_Materials CurrentItem = new Raw_Materials();
            CurrentItem = db.Raw_Materials.Find(input_Materails.IdMaterials);
            //int res = (int)CurrentItem.Amount; 
            int res2 = (int)input_Materails.Amount;
            int Res = res2;
            CurrentItem.Amount = Res;
            db.SaveChanges();
        }
    }
}
