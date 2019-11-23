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
                acum += p.Precio;
            }

            lblTotal.Text = "$ " + acum.ToString();
        }
    }
}