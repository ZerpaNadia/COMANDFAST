using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using COMANDFAST.Layer.Business;
using COMANDFAST.Layer.Data.DTO;

namespace COMANDFAST.Web
{
    public partial class BajaProducto : System.Web.UI.Page
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

            repProductos.DataSource = productos;
            repProductos.DataBind();
        }

        protected List<DTOProducto> ObtenerProductos()
        {
            var productos = new List<DTOProducto>();

            foreach (RepeaterItem itemProductos in repProductos.Items)
            {
                var item = new DTOProducto();

                var IdProducto = itemProductos.FindControl("Id") as Label;
                item.IdProducto = Int32.Parse(IdProducto.Text);

                var tituloProducto = itemProductos.FindControl("lblTitulo") as Label;
                item.TituloProducto = tituloProducto.Text;

                var DescProducto = itemProductos.FindControl("lblDescripcion") as Label;
                item.DescProducto = DescProducto.Text;
            }

            return productos;
        }

        protected void DeleteProd_Click(object sender, System.EventArgs e)
        {
            try
            {
                
            }
            catch (Exception ex)
            {
            }
        }

        
    }

    
}