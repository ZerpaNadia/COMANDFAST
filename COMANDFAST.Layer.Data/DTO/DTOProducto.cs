using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace COMANDFAST.Layer.Data.DTO
{
    public class DTOProducto
    {
        #region properties

        public int IdProducto { get; set; }

        public string TituloProducto { get; set; }

        public string DescProducto { get; set; }

        public double Precio { get; set; }

        public bool EnMenu { get; set; }

        public int IdTipoProducto { get; set; }

        public int Stock { get; set; }

        public bool Activo { get; set; }

        #endregion

        #region Constructores

        public DTOProducto()
        {
        }
        #endregion
    }
}
