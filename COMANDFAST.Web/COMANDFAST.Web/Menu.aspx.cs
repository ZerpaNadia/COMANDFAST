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

            repProductos.DataSource = productos;
            repProductos.DataBind();

            //ejemplos prueba examen
            string mistring = "1";
            int entero = Int32.Parse(string.Concat("1", mistring));

        }
    }
}