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
            try
            {
                DTOPedido pedido = new DTOPedido();

                var pedidoBd = (from p in entities.Pedido
                                where p.Id_Usuario == idUsuario
                                select p).OrderByDescending(X => X.Id_Pedido).FirstOrDefault();

                if (pedidoBd != null)
                {
                    pedido.IdPedido = pedidoBd.Id_Pedido;
                    pedido.IdEstadoPedido = pedidoBd.Id_Estado_Pedido;
                    pedido.Monto = pedidoBd.Monto;
                }

                return pedido;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static List<DTOPedido> ObtenerPedidos()
        {
            try
            {
                List<DTOPedido> pedido = new List<DTOPedido>();

                var pedidoBd = (from p in entities.Pedido
                                join usu in entities.Usuario
                                  on p.Id_Usuario equals usu.Id_Usuario
                                select new { p , usu}).OrderByDescending(X => X.p.Id_Pedido).ToList();

                foreach (var i in pedidoBd)
                {
                    DTOPedido p = new DTOPedido();

                    p.IdPedido = i.p.Id_Pedido;
                    p.IdEstadoPedido = i.p.Id_Estado_Pedido;
                    p.Monto = i.p.Monto;
                    p.UsuarioNombre = i.usu.Nombre + " " + i.usu.Apellido;

                    pedido.Add(p);
                }

                return pedido;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
