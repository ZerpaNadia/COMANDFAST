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
    }
}
