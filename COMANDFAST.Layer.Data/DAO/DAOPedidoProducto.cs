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

        public static List<DTOPedidoProducto> ObtenerPedidoProducto(int IdPedido)
        {
            try
            {
                var pedidoProductos = (from ped in entities.Pedido_Producto
                                       join prod in entities.Producto on ped.Id_Producto equals prod.Id_Producto
                                       where ped.Id_Pedido == IdPedido
                                       select new { ped, prod }).ToList();

                List<DTOPedidoProducto> ListaPp = new List<DTOPedidoProducto>();

                foreach (var item in pedidoProductos)
                {
                    DTOPedidoProducto pp = new DTOPedidoProducto();

                    pp.Id = item.ped.Id;
                    pp.IdPedido = item.ped.Id_Pedido;
                    pp.IdProducto = item.ped.Id_Producto;
                    pp.Cantidad = item.ped.Cantidad;

                    pp.TituloProducto = item.prod.Titulo_Producto;
                    pp.Precio = item.prod.Precio;

                    ListaPp.Add(pp);      
                }

                return ListaPp;
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
