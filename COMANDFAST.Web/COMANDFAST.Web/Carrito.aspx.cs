using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using COMANDFAST.Layer.Business;
using COMANDFAST.Layer.Data.DTO;

namespace COMANDFAST.Web
{
    public partial class Carrito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var productos = ((List<DTOProducto>)Session["Productos"]).ToList();
            repProductos.DataSource = productos;
            repProductos.DataBind();

            double acum = 0;

            foreach (var p in productos)
            {
                acum += p.Cantidad * p.Precio;
            }
            
            lblTotal.Text = "$ " + acum.ToString();
        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            try
            {
                var p = lblTotal.Text.Split(' ');
                var productos = ObtenerProductos();

                DTOPedido pedido = bsPedido.CrearPedidoDTO(Int32.Parse(p[1]), txtDescripcion.Text);
            
                bsPedido.CrearPedido(pedido, productos);
                Response.Redirect("DetallePedido.aspx");
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected List<DTOProducto> ObtenerProductos()
        {
            var productos = new List<DTOProducto>();

            foreach (RepeaterItem itemProductos in repProductos.Items)
            {
                var item = new DTOProducto();

                var id = itemProductos.FindControl("Id") as HiddenField;
                item.IdProducto = Int32.Parse(id.Value);

                var precio = itemProductos.FindControl("lblPrecio") as Label;
                var p = precio.Text.Split(' ');
                item.Precio = Int32.Parse(p[1]);

                var cantidad = itemProductos.FindControl("txtCantidad") as TextBox;
                item.Cantidad = Int32.Parse(cantidad.Text == "" ? "0" : cantidad.Text);

                if (Int32.Parse(cantidad.Text) > 0)
                {
                    productos.Add(item);
                }
            }        
            return productos;
        }
    }
}