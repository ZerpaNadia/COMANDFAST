using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace COMANDFAST.Layer.Data.DTO
{
    public class DTOEstadoPedido
    {
        public int Id { get; set; }

        public int IdPedido { get; set; }

        public int IdEstado { get; set; }

        public DateTime Fecha { get; set; }

        public string EstadoNombre { get; set; }
    }
}
