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
        public static void CrearProducto(DTOProducto productoDTO)
        {
            try
            {
                DAOProducto.CrearProducto(productoDTO);
            }
            catch (Exception ex)
            {
            }
        }
		
		public static void EliminarProducto(int IdEliminar)
        {
            try
            {
                //DAOProducto.EliminarProducto(IdEliminar);
            }
            catch (Exception ex)
            {
            }
        }
		
        public static DTOProducto CrearProductoDTO(string titulo, string descripcion, string precio, string stock, bool activo)
        {
            DTOProducto productoDTO = new DTOProducto();
            productoDTO.TituloProducto = titulo;
            productoDTO.DescProducto = descripcion;
            productoDTO.Precio = double.Parse(precio);
            productoDTO.Stock = int.Parse(stock);
            productoDTO.Activo = activo;
            productoDTO.EnMenu = activo; 
            //Por ahora hardcodeo el tipo de producto
            productoDTO.IdTipoProducto = (int)TipoProductoEnum.Hamburguesa;
            return productoDTO;
        }

        public static string ValidarDatosProducto(string precio, string stock)
        {
            int i = 0;
            float j = 0;

            if (int.TryParse(stock, out i) && float.TryParse(precio, out j))
                return "";
            else
                return "Los valores de precio y stock deben ser numéricos.";
                
        }

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
