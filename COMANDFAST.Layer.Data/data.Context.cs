﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace COMANDFAST.Layer.Data
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class COMANDFASTEntities : DbContext
    {
        public COMANDFASTEntities()
            : base("name=COMANDFASTEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Errores> Errores { get; set; }
        public DbSet<Estado> Estado { get; set; }
        public DbSet<Estado_Pedido> Estado_Pedido { get; set; }
        public DbSet<Opiniones> Opiniones { get; set; }
        public DbSet<Pedido> Pedido { get; set; }
        public DbSet<Pedido_Producto> Pedido_Producto { get; set; }
        public DbSet<Producto> Producto { get; set; }
        public DbSet<Stock_Comanfast> Stock_Comanfast { get; set; }
        public DbSet<Tipo_Producto> Tipo_Producto { get; set; }
        public DbSet<Tipo_Usuario> Tipo_Usuario { get; set; }
        public DbSet<Usuario> Usuario { get; set; }
        public DbSet<Usuario_Pedido> Usuario_Pedido { get; set; }
    }
}
