//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Tipo_Producto
    {
        public Tipo_Producto()
        {
            this.Producto = new HashSet<Producto>();
        }
    
        public int Id_Tipo_Producto { get; set; }
        public string Descripcion { get; set; }
    
        public virtual ICollection<Producto> Producto { get; set; }
    }
}
