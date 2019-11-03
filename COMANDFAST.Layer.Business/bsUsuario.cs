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
    public class bsUsuario
    {
        public static void CrearUsuario(DTOUsuario usuarioDTO)
        {
            try
            {
                DAOUsuario.CrearUsuario(usuarioDTO);
            }
            catch (Exception ex)
            {
            }
        }

        public static DTOUsuario CrearUsuarioDTO(string nombre, string apellido, DateTime fechaNacimiento, string usuario, string password, string email)
        {
            DTOUsuario usuarioDTO = new DTOUsuario();
            usuarioDTO.Nombre = nombre;
            usuarioDTO.Apellido = apellido;
            usuarioDTO.FechaNacimiento = fechaNacimiento;
            usuarioDTO.Usuario = usuario;
            usuarioDTO.Password = password;
            usuarioDTO.TipoUsuario = (int)TipoUsuarioEnum.Cliente;
            usuarioDTO.Email = email;
            return usuarioDTO;
        }

        public static string VerificarUsuario(DTOUsuario usuarioDTO)
        {
            try
            {
                return DAOUsuario.VerificarUsuario(usuarioDTO);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
