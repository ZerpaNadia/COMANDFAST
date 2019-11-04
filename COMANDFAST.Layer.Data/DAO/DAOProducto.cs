using COMANDFAST.Layer.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace COMANDFAST.Layer.Data.DAO
{
    public class DAOProducto
    {
        static COMANDFASTEntities entities = new COMANDFASTEntities();

        public static List<DTOProducto> ObtenerProductos()
        {
            try
            {
                var productos = entities.Producto.Where(X => X.Activo == true && X.En_Menu == true).ToList();

                List<DTOProducto> listaProductos = new List<DTOProducto>();

                foreach (var item in productos)
                {
                    DTOProducto produc = new DTOProducto();

                    produc.IdProducto = item.Id_Producto;
                    produc.TituloProducto = item.Titulo_Producto;
                    produc.DescProducto = item.Descripcion;
                    produc.Precio = item.Precio;
                    produc.IdTipoProducto = item.Id_Tipo_Producto;
                    produc.Stock = item.Stock;
                    produc.EnMenu = item.En_Menu;
                    produc.Activo = item.Activo;

                    listaProductos.Add(produc);
                }

                return listaProductos;

            }
            catch (Exception ex)
            {
                throw;
            }
        }

    }
}
