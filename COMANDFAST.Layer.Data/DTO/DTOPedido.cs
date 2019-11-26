using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace COMANDFAST.Layer.Data.DTO
{
    public class DTOPedido
    {
        #region properties

        public int IdPedido { get; set; }

        public int IdEstadoPedido { get; set; }

        public double Monto { get; set; }

        public string Descripcion { get; set; }

        public int IdUsuario { get; set; }

        #endregion

        #region Constructores

        public DTOPedido()
        {
        }
        #endregion
    }
}
