using System;
using System.Data;
using System.Data.Entity;
using System.Data.Sql;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
                    Pass = usuarioDTO.Password
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
            catch (Exception ex)
            {
            }
        }
    }
}
