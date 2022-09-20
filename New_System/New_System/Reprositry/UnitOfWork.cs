using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using New_System.Reprositry;
using New_System.Models;

namespace New_System.Reprositry
{
    public class UnitOfWork
    {
        private Factory2Entities2 context = new Factory2Entities2();
        private GenaricRepo<Department> departmentRepository;
        private GenaricRepo<Employee> employeeReprositry;
        private GenaricRepo<Models.Product> productReprositry;
        private GenaricRepo<Models.Supplier> supplierReprositry;
        private GenaricRepo<Models.order> orderRepeositry;
        private GenaricRepo<Models.OrderDetail> detailsOrderReprositry;
        private GenaricRepo<Models.AspNetUser> aspNetUserdReprositry;
        private GenaricRepo<Models.part> partreprositry;
        private GenaricRepo<Models.Raw_Materials> rawMaterialsReprositry;
        private GenaricRepo<Models.Input_Materails> input_MaterialsReprositry;
        private GenaricRepo<Models.OutPutOfProduct> productOutPutReprositry;
        private GenaricRepo<Models.Halk> halksReprositry;
        public ProductDetails ProductFunctions = new ProductDetails();
        public OrderRepo OrederFunctions = new OrderRepo();
        public DetailsOrder OrderDetailsFunctions = new DetailsOrder();
        public RawMaterials raw_MaterialsFunction = new RawMaterials();

        public GenaricRepo<Department> DepartmentRepository
        {
            get
            {

                if (this.departmentRepository == null)
                {
                    this.departmentRepository = new GenaricRepo<Department>(context);
                }
                return departmentRepository;
            }
        }

        public GenaricRepo<Employee> EmployeeReprositry
        {
            get
            {

                if (this.employeeReprositry == null)
                {
                    this.employeeReprositry = new GenaricRepo<Employee>(context);
                }
                return employeeReprositry;
            }
        }
        public GenaricRepo<Product> ProductReprositry
        {
            get
            {

                if (this.productReprositry == null)
                {
                    this.productReprositry = new GenaricRepo<Product>(context);
                }
                return productReprositry;
            }
        }
        public GenaricRepo<Supplier> SupplierReprositry
        {
            get
            {

                if (this.supplierReprositry == null)
                {
                    this.supplierReprositry = new GenaricRepo<Supplier>(context);
                }
                return supplierReprositry;
            }
        }
        public GenaricRepo<order> OrderReprositry
        {
            get
            {

                if (this.orderRepeositry == null)
                {
                    this.orderRepeositry = new GenaricRepo<order>(context);
                }
                return orderRepeositry;
            }
        }
        public GenaricRepo<OrderDetail> DetailsOrderReprositry
        {
            get
            {

                if (this.detailsOrderReprositry == null)
                {
                    this.detailsOrderReprositry = new GenaricRepo<OrderDetail>(context);
                }
                return detailsOrderReprositry;
            }
        }
        public GenaricRepo<AspNetUser> AspNetUserReprositry
        {
            get
            {

                if (this.aspNetUserdReprositry == null)
                {
                    this.aspNetUserdReprositry = new GenaricRepo<AspNetUser>(context);
                }
                return aspNetUserdReprositry;
            }
        }
        public GenaricRepo<part> PartReprositry
        {
            get
            {

                if (this.partreprositry == null)
                {
                    this.partreprositry = new GenaricRepo<part>(context);
                }
                return partreprositry;
            }
        }
        public GenaricRepo<Raw_Materials> RawMaterialsReprositry
        {
            get
            {

                if (this.rawMaterialsReprositry == null)
                {
                    this.rawMaterialsReprositry = new GenaricRepo<Raw_Materials>(context);
                }
                return rawMaterialsReprositry;
            }
        }
        public GenaricRepo<Input_Materails> Input_MaterialsReprositry
        {
            get
            {

                if (this.input_MaterialsReprositry == null)
                {
                    this.input_MaterialsReprositry = new GenaricRepo<Input_Materails>(context);
                }
                return input_MaterialsReprositry;
            }
        }
        public GenaricRepo<OutPutOfProduct> ProductOutPutReprositry
        {
            get
            {

                if (this.productOutPutReprositry == null)
                {
                    this.productOutPutReprositry = new GenaricRepo<OutPutOfProduct>(context);
                }
                return productOutPutReprositry;
            }
        }
        public GenaricRepo<Halk> HalksReprositry
        {
            get
            {

                if (this.halksReprositry == null)
                {
                    this.halksReprositry = new GenaricRepo<Halk>(context);
                }
                return halksReprositry;
            }
        }

        public void Save()
        {
            context.SaveChanges();
        }

        private bool disposed = false;

        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    context.Dispose();
                }
            }
            this.disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}