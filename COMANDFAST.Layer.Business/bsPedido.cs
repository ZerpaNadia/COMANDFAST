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
            }
            catch (Exception ex)
            {
            }
        }

        public static DTOPedido CrearPedidoDTO(int monto, string descripcion)
        {
            try
            {
                DTOPedido pedido = new DTOPedido();

                pedido.IdEstadoPedido = (int)EstadoPedidoEnum.Realizado;
                pedido.Monto = monto;
                pedido.Descripcion = descripcion;

                return pedido;
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
