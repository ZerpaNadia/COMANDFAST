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
    public partial class AltaProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtError.Visible = false;

            if (!IsPostBack)
            {
                LlenarTipo();
            }
        }

        protected void LlenarTipo()
        {
            //var productos = bsProductos.ObtenerProductos();
            
            //D1.DataSource = productos.Where(X => X.IdTipoProducto == (int)TipoProductoEnum.Bebidas);
            //D1.DataBind();

            //repBebidas.DataSource = productos.Where(X => X.IdTipoProducto == (int)TipoProductoEnum.Bebidas);
            //repBebidas.DataBind();

            //repExtras.DataSource = productos.Where(X => X.IdTipoProducto == (int)TipoProductoEnum.Extras);
            //repExtras.DataBind();
        }

        //protected List<DTOProducto> ObtenerProductos()
        //{
        //    var productos = new List<DTOProducto>();

            //foreach (RepeaterItem itemProductos in D1.Items)
            //{
            //    var item = new DTOProducto();

            //    var id = itemProductos.FindControl("Id") as HiddenField;
            //    item.IdProducto = Int32.Parse(id.Value);

            //    var tituloProducto = itemProductos.FindControl("lblTitulo") as Label;
            //    item.TituloProducto = tituloProducto.Text;

            //    var precio = itemProductos.FindControl("lblPrecio") as Label;
            //    var p = precio.Text.Split(' ');
            //    item.Precio = Int32.Parse(p[1]);

            //    var cantidad = itemProductos.FindControl("txtCantidad") as TextBox;
            //    item.Cantidad = Int32.Parse(cantidad.Text == "" ? "0" : cantidad.Text);

            //    if (Int32.Parse(cantidad.Text) > 0)
            //    {
            //        productos.Add(item);
            //    }
            //}
            //return productos;
        //}
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