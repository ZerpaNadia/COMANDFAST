using System;
using System.Data;
using System.Data.Entity;
using System.Data.Sql;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity.Validation;
using COMANDFAST.Layer.Data.DTO;

namespace COMANDFAST.Layer.Data.DAO
{
    public class DAOUsuario
    {
        public static void CrearUsuario(DTOUsuario usuarioDTO)
        {
            try
            {
                COMANDFASTEntities entities = new COMANDFASTEntities();

                Usuario usuario = new Usuario()
                {
                    Apellido = usuarioDTO.Apellido,
                    Fecha_Nac = usuarioDTO.FechaNacimiento,
                    Nombre = usuarioDTO.Nombre,
                    Login_Usuario = usuarioDTO.Usuario,
                    Id_Tipo_Usuario = usuarioDTO.TipoUsuario,
                    Pass = usuarioDTO.Password,
                    Email = "ñlalalala@gmail.com"
                };


                entities.Usuario.Add(usuario);
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
    }
}
