using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using COMANDFAST.Layer.Data.DTO;
using COMANDFAST.Layer.Business;

namespace COMANDFAST.Web
{
    public partial class Registro1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtError.Visible = false;
        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            try
            {
                DTOUsuario usuarioDTO = bsUsuario.CrearUsuarioDTO(
                    txtNombre.Text,
                    txtApellido.Text,
                    DateTime.Today, // puse la fecha de hoy, despues se cambia
                    txtUsuario.Text,
                    txtPassword.Text,
                    txtEmail.Text
                    );

                if (String.IsNullOrEmpty(bsUsuario.VerificarUsuario(usuarioDTO)))
                {
                    bsUsuario.CrearUsuario(usuarioDTO);
                    Response.Redirect("Login.aspx?reg=true");
                }
                else
                {
                    txtError.Visible = true;
                    txtError.Text = bsUsuario.VerificarUsuario(usuarioDTO);
                }
            }
            catch (Exception ex)
            {
            }
        }
    }
}