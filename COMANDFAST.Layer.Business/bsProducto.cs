using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using COMANDFAST.Layer.Data.DTO;
using COMANDFAST.Layer.Data.DAO;
using COMANDFAST.Layer.Business;

namespace COMANDFAST.Layer.Business
{
    public class bsProductos
    {
        public static List<DTOProducto> ObtenerProductos()
        {
            try
            {
                return DAOProducto.ObtenerProductos();
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
