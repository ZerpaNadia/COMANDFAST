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
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarMenu();
            }
            
        }

        protected void LlenarMenu()
        {
            var productos = bsProductos.ObtenerProductos();

            repHamburguesas.DataSource = productos.Where(X => X.IdTipoProducto == (int)TipoProductoEnum.Hamburguesa);
            repHamburguesas.DataBind();

            repBebidas.DataSource = productos.Where(X => X.IdTipoProducto == (int)TipoProductoEnum.Bebidas);
            repBebidas.DataBind();

            repExtras.DataSource = productos.Where(X => X.IdTipoProducto == (int)TipoProductoEnum.Extras);
            repExtras.DataBind();
        }

        protected List<DTOProducto> ObtenerProductos()
        {
            var productos = new List<DTOProducto>();

            foreach (RepeaterItem itemProductos in repHamburguesas.Items)
            {
                var item = new DTOProducto();

                var id = itemProductos.FindControl("Id") as HiddenField;
                item.IdProducto = Int32.Parse(id.Value);

                var tituloProducto = itemProductos.FindControl("lblTitulo") as Label;
                item.TituloProducto = tituloProducto.Text;

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

            foreach (RepeaterItem itemProductos in repBebidas.Items)
            {
                var item = new DTOProducto();

                var id = itemProductos.FindControl("Id") as HiddenField;
                item.IdProducto = Int32.Parse(id.Value);

                var tituloProducto = itemProductos.FindControl("lblTitulo") as Label;
                item.TituloProducto = tituloProducto.Text;

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

            foreach (RepeaterItem itemProductos in repExtras.Items)
            {
                var item = new DTOProducto();

                var id = itemProductos.FindControl("Id") as HiddenField;
                item.IdProducto = Int32.Parse(id.Value);

                var tituloProducto = itemProductos.FindControl("lblTitulo") as Label;
                item.TituloProducto = tituloProducto.Text;

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

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            var productos = ObtenerProductos();

            HttpContext.Current.Session["Productos"] = productos.ToList();

            Response.Redirect("Carrito.aspx");
        }
    }
}