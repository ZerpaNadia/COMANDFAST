using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using COMANDFAST.Layer.Data.DTO;

namespace COMANDFAST.Layer.Data.DAO
{
    public class DAOEstadoPedido
    {
        static COMANDFASTEntities entities = new COMANDFASTEntities();

        public static void CrearEstadoPedido(int idEstado)
        {
            try
            {
                int idPedido = DAOPedido.ObtenerIdUltimoPedido();

                Estado_Pedido estadoPedido = new Estado_Pedido()
                {
                    Id_Pedido = idPedido,
                    Id_Estado = idEstado,
                    Fecha_Hora = DateTime.Now
                };
                entities.Estado_Pedido.Add(estadoPedido);
                entities.SaveChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static List<DTOEstadoPedido> ObtenerEstadoPedido(int idPedido)
        {
            try
            {
                var estPed = (from ep in entities.Estado_Pedido join
                                        e in entities.Estado on ep.Id_Estado equals e.Id_Estado
                                        where ep.Id_Pedido == idPedido
                                        select new { ep, e }).ToList();

                List<DTOEstadoPedido> estadoPedido = new List<DTOEstadoPedido>();

                foreach (var i in estPed)
                {
                    DTOEstadoPedido ep = new DTOEstadoPedido();

                    ep.Id = i.ep.Id;
                    ep.IdEstado = i.ep.Id_Estado;
                    ep.IdPedido = i.ep.Id_Pedido;
                    ep.EstadoNombre = i.e.Descripcion;
                    ep.Fecha = i.ep.Fecha_Hora;

                    estadoPedido.Add(ep);
                }

                return estadoPedido;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
