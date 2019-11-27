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
    public partial class Cocina : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var usuario = ((DTOUsuario)Session["Usuario"]);

                if (usuario != null)
                {
                    var pedido = bsPedido.ObtenerPedidos();

                    repPedidos.DataSource = pedido;
                    repPedidos.DataBind();
                }
                else
                {
                    Response.Redirect("Login.aspx?reg=false");
                }
            }            
        }

        protected List<DTOPedidoProducto> GetGarantias(object item)
        {
            var pedido = (DTOPedido)item;

            var pedidoProducto = bsPedido.ObtenerPedidoProducto(pedido.IdPedido);

            return pedidoProducto;
        }

        public void repPedidos_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            var index = e.CommandName.Split('-');

            switch (index[0])
            {
                case "Aceptado":
                    CambiarEstado(Int32.Parse(index[1]), (int)EstadoPedidoEnum.EnPreparacion);                    
                    foreach (RepeaterItem itemProductos in repPedidos.Items)
                    {

                        var lblPedido = itemProductos.FindControl("lblNroPedido") as Label;
                        int idPedido = Int32.Parse(lblPedido.Text);

                        if (idPedido == Int32.Parse(index[1]))
                        {
                            var btnAcetar = itemProductos.FindControl("btnAcetar") as Button;
                            btnAcetar.Visible = false;

                            var btnPreparado = itemProductos.FindControl("btnPreparado") as Button;
                            btnPreparado.Visible = true;
                        }                        
                    }
                    
                    break;
                case "Preparado":
                    CambiarEstado(Int32.Parse(index[1]), (int)EstadoPedidoEnum.Listo);
                    foreach (RepeaterItem itemProductos in repPedidos.Items)
                    {
                        var lblPedido = itemProductos.FindControl("lblNroPedido") as Label;
                        int idPedido = Int32.Parse(lblPedido.Text);

                        if (idPedido == Int32.Parse(index[1]))
                        {
                            var btnAcetar = itemProductos.FindControl("btnAcetar") as Button;
                            btnAcetar.Visible = false;

                            var btnPreparado = itemProductos.FindControl("btnPreparado") as Button;
                            btnPreparado.Visible = false;

                            var lblListo = itemProductos.FindControl("lblListo") as Label;
                            lblListo.Visible = true;
                        }
                    }
                    break;
                case "Listo":

                    break;
                default:
                    break;
            }
        }

        public void CambiarEstado(int Id, int Estado) 
        {
            bsPedido.CambiarEstado(Id, Estado);
        }
    }
}