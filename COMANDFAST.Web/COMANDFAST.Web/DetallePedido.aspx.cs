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
    public partial class DetallePedido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var usuario = ((DTOUsuario)Session["Usuario"]);

            var pedido = bsPedido.ObtenerPedidoPorUsuario(usuario.IdUsuario);


        }
    }
}