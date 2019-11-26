using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using COMANDFAST.Layer.Data.DTO;
using COMANDFAST.Layer.Data.DAO;
using COMANDFAST.Layer.Business;

namespace COMANDFAST.Layer.Business
{
    public class bsPedido
    {
        public static void CrearPedido(DTOPedido pedidoDTO, List<DTOProducto> productosDTO)
        {
            try
            {
                DAOPedido.CrearPedido(pedidoDTO);
                DAOPedidoProducto.CrearPedidoProducto(productosDTO);
                DAOEstadoPedido.CrearEstadoPedido((int)EstadoPedidoEnum.Realizado);
            }
            catch (Exception ex)
            {
            }
        }

        public static DTOPedido CrearPedidoDTO(int monto, string descripcion, int idUsuario)
        {
            try
            {
                DTOPedido pedido = new DTOPedido();

                pedido.IdEstadoPedido = (int)EstadoPedidoEnum.Realizado;
                pedido.Monto = monto;
                pedido.Descripcion = descripcion;
                pedido.IdUsuario = idUsuario;

                return pedido;
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static DTOPedido ObtenerPedidoPorUsuario(int idUsuario)
        {
            return DAOPedido.ObtenerPedidoPorUsuario(idUsuario);
        }

        public static List<DTOPedidoProducto> ObtenerPedidoProducto(int IdPedido)
        {
            return DAOPedidoProducto.ObtenerPedidoProducto(IdPedido);
        }

        public static List<DTOEstadoPedido> ObtenerEstadoPedido(int IdPedido)
        {
            return DAOEstadoPedido.ObtenerEstadoPedido(IdPedido);
        }
    }
}
