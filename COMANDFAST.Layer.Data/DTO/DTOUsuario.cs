using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using COMANDFAST.Layer.Data.DAO;

namespace COMANDFAST.Layer.Data.DTO
{
    public class DTOUsuario
    {
        #region properties

        public int IdUsuario { get; set; }

        public string Nombre { get; set; }

        public string Apellido { get; set; }

        public DateTime FechaNacimiento { get; set; }

        public string Usuario { get; set; }

        public string Password { get; set; }

        public int TipoUsuario { get; set; }

        public string Email { get; set; }

        #endregion

        #region Constructores

        public DTOUsuario()
        {
        }
        #endregion
    }
}
