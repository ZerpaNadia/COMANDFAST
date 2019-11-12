using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using COMANDFAST.Layer.Data.DTO;
using COMANDFAST.Layer.Business;

namespace COMANDFAST.Web
{
    public partial class Producto1: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtError.Visible = false;
        }

        protected void CreateProd_Click(object sender, EventArgs e)
        {
            try
            {
                if (String.IsNullOrEmpty(bsProductos.ValidarDatosProducto(txtPrecio.Text, txtStock.Text)))
                {
                    DTOProducto productoDTO = bsProductos.CrearProductoDTO(
                       txtTitulo.Text,
                       txtDescripcion.Text,
                       txtPrecio.Text,
                       txtStock.Text,
                       chkActivo.Checked
                       );

                    bsProductos.CrearProducto(productoDTO);
                    //A DONDE LO DIRIJO.
                    //Response.Redirect("Login.aspx?reg=true");
                }
                else
                {
                    txtError.Visible = true;
                    txtError.Text = bsProductos.ValidarDatosProducto(txtPrecio.Text, txtStock.Text);
                }

            }
            catch (Exception ex)
            {
            }
        }
    }
}