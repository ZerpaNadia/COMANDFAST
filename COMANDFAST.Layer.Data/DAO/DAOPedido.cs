using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using COMANDFAST.Layer.Data.DTO;

namespace COMANDFAST.Layer.Data.DAO
{
    public class DAOPedido
    {
        static COMANDFASTEntities entities = new COMANDFASTEntities();

        public static void CrearPedido(DTOPedido pedidoDTO)
        {
            try
            {
                Pedido pedido = new Pedido()
                {
                    Id_Estado_Pedido = pedidoDTO.IdEstadoPedido,
                    Monto = pedidoDTO.Monto,
                    Descripcion = pedidoDTO.Descripcion,
                    Id_Usuario = pedidoDTO.IdUsuario
                };

                entities.Pedido.Add(pedido);
                entities.SaveChanges();

            }
            catch (Exception ex)
            {
            }
        }

        public static int ObtenerIdUltimoPedido()
        {
            int idUltimo = (from p in entities.Pedido
                            select p).OrderByDescending(X => X.Id_Pedido).FirstOrDefault().Id_Pedido;
            return idUltimo;
        }

        public static DTOPedido ObtenerPedidoPorUsuario(int idUsuario)
        {
            DTOPedido pedido = new DTOPedido();

            var pedidoBd = (from p in entities.Pedido
                            where p.Id_Usuario == idUsuario 
                            select p).OrderByDescending(X => X.Id_Pedido).FirstOrDefault();

            pedido.IdPedido = pedidoBd.Id_Pedido;
            pedido.IdEstadoPedido = pedidoBd.Id_Estado_Pedido;
            pedido.Monto = pedidoBd.Monto;

            return pedido;
        }
    }
}
