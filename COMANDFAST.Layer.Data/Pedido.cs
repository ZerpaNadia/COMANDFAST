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
    
    public partial class Pedido
    {
        public Pedido()
        {
            this.Usuario_Pedido = new HashSet<Usuario_Pedido>();
        }
    
        public int Id_Pedido { get; set; }
        public int Id_Estado_Pedido { get; set; }
        public double Monto { get; set; }
        public string Descripcion { get; set; }
    
        public virtual Estado_Pedido Estado_Pedido { get; set; }
        public virtual Pedido_Producto Pedido_Producto { get; set; }
        public virtual ICollection<Usuario_Pedido> Usuario_Pedido { get; set; }
    }
}
