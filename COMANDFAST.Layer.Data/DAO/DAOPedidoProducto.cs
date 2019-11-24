using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using COMANDFAST.Layer.Data.DTO;

namespace COMANDFAST.Layer.Data.DAO
{
    public class DAOPedidoProducto
    {
        static COMANDFASTEntities entities = new COMANDFASTEntities();

        public static void CrearPedidoProducto(List<DTOProducto> productosDTO)
        {
            try
            {
                int idPedido = DAOPedido.ObtenerIdUltimoPedido();

                foreach (var item in productosDTO)
                {
                    Pedido_Producto pedidoProducto = new Pedido_Producto()
                    {
                        Id_Pedido = idPedido,
                        Id_Producto = item.IdProducto,
                        Cantidad = item.Cantidad
                    };
                    entities.Pedido_Producto.Add(pedidoProducto);
                }
                entities.SaveChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
