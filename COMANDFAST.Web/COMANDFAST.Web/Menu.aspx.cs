using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using COMANDFAST.Layer.Business;

namespace COMANDFAST.Web
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarMenu();
        }

        protected void LlenarMenu()
        {
            var productos = bsProductos.ObtenerProductos();

            repHamburguesas.DataSource = productos.Where(X => X.IdTipoProducto == (int)TipoProductoEnum.Hamburguesa);
            repHamburguesas.DataBind();

        }
    }
}