using COMANDFAST.Layer.Data.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Entity.Validation;
using System.Threading.Tasks;

namespace COMANDFAST.Layer.Data.DAO
{
    public class DAOProducto
    {
        static COMANDFASTEntities entities = new COMANDFASTEntities();

        public static void CrearProducto(DTOProducto productoDTO)
        {
            try
            {
                Producto producto = new Producto()
                {
                    Descripcion = productoDTO.DescProducto,
                    Titulo_Producto = productoDTO.TituloProducto,
                    Precio = productoDTO.Precio,
                    En_Menu = productoDTO.EnMenu,
                    Id_Tipo_Producto = productoDTO.IdTipoProducto,
                    Stock = productoDTO.Stock,
                    Activo = productoDTO.Activo,

                };

                entities.Producto.Add(producto);
                entities.SaveChanges();

            }
            catch (System.Data.Entity.Infrastructure.DbUpdateConcurrencyException ex)
            {
            }
            catch (System.Data.Entity.Infrastructure.DbUpdateException ex) //DbContext
            {
            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
            catch (Exception ex)
            {
            }
        }

        public static void EliminarProducto(DTOProducto productoDTO)
        {
            try
            {
                Producto producto = new Producto()
                {
                    Descripcion = productoDTO.DescProducto,
                    Titulo_Producto = productoDTO.TituloProducto,
                    Precio = productoDTO.Precio,
                    En_Menu = productoDTO.EnMenu,
                    Id_Tipo_Producto = productoDTO.IdTipoProducto,
                    Stock = productoDTO.Stock,
                    Activo = productoDTO.Activo,

                };

                entities.Producto.Add(producto);
                entities.SaveChanges();

            }
            catch (System.Data.Entity.Infrastructure.DbUpdateConcurrencyException ex)
            {
            }
            catch (System.Data.Entity.Infrastructure.DbUpdateException ex) //DbContext
            {
            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
            catch (Exception ex)
            {
            }
        }

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
