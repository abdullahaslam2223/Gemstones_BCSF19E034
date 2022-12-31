﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Gemstones_BCSF19E034
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class Gemstones_BCSF19E034Entities : DbContext
    {
        public Gemstones_BCSF19E034Entities()
            : base("name=Gemstones_BCSF19E034Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<tbl_admin_users> tbl_admin_users { get; set; }
        public virtual DbSet<tbl_products_stone> tbl_products_stone { get; set; }
        public virtual DbSet<tbl_stone_categories> tbl_stone_categories { get; set; }
        public virtual DbSet<tbl_stone_colors> tbl_stone_colors { get; set; }
        public virtual DbSet<tbl_stone_shapes> tbl_stone_shapes { get; set; }
        public virtual DbSet<tbl_stone_sizes> tbl_stone_sizes { get; set; }
    
        public virtual ObjectResult<GS_Admin_DoLogin_Result> GS_Admin_DoLogin(string email, string password)
        {
            var emailParameter = email != null ?
                new ObjectParameter("email", email) :
                new ObjectParameter("email", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("password", password) :
                new ObjectParameter("password", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GS_Admin_DoLogin_Result>("GS_Admin_DoLogin", emailParameter, passwordParameter);
        }
    
        public virtual int GS_Delete_Admin(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("GS_Delete_Admin", idParameter);
        }
    
        public virtual int GS_Delete_Product(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("GS_Delete_Product", idParameter);
        }
    
        public virtual int GS_Delete_Product_Category(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("GS_Delete_Product_Category", idParameter);
        }
    
        public virtual int GS_Delete_Product_Color(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("GS_Delete_Product_Color", idParameter);
        }
    
        public virtual int GS_Delete_Product_Shape(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("GS_Delete_Product_Shape", idParameter);
        }
    
        public virtual int GS_Delete_Product_Size(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("id", id) :
                new ObjectParameter("id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("GS_Delete_Product_Size", idParameter);
        }
    
        public virtual ObjectResult<GS_Get_Admins_Result> GS_Get_Admins()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GS_Get_Admins_Result>("GS_Get_Admins");
        }
    
        public virtual ObjectResult<GS_Get_Products_Result> GS_Get_Products()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GS_Get_Products_Result>("GS_Get_Products");
        }
    }
}
