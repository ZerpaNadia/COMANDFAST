using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using COMANDFAST.Layer.Data.DTO;
using COMANDFAST.Layer.Business;

namespace COMANDFAST.Web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			 txtRegistro.Visible = false;

            if (!IsPostBack)
            {
                string esRegistro = Request.QueryString["reg"];

                if (esRegistro == "true")
                {
                    txtRegistro.Text = "* El Registro fue realizado con exito.";
                    txtRegistro.Visible = true;
                }
                if (esRegistro == "false")
                {
                    txtRegistro.Text = "* La sesion ha expirado.";
                    txtRegistro.Visible = true;
                }

                if (esRegistro == "salir")
                {
                    Session.Remove("Usuario");
                    txtRegistro.Text = "* La sesion ha finalizado.";
                    txtRegistro.Visible = true;
                }

            }
			
            this.cmdLogin.ServerClick += new System.EventHandler(this.cmdLogin_ServerClick);
        }

        private void cmdLogin_ServerClick(object sender, System.EventArgs e)
        {
            if (bsUsuario.VerificarUsuarioLogin(txtUsuario.Text, txtPassword.Text))
            {
                //FormsAuthentication.RedirectFromLoginPage(txtUsuario.Text, chkPersistCookie.Checked);
                var usuario = ((DTOUsuario)Session["Usuario"]);

                if (usuario != null)
                {
                    if (usuario.TipoUsuario == (int)TipoUsuarioEnum.Cliente)
                        Response.Redirect("Default.aspx");
                    if (usuario.TipoUsuario == (int)TipoUsuarioEnum.Socio)
                        Response.Redirect("Producto.aspx");
                    if (usuario.TipoUsuario == (int)TipoUsuarioEnum.Cocinero)
                        Response.Redirect("Cocina.aspx");
                }
            }
            else
                //No hago nada, solo muestro mensaje.
                lblMsg.Text = "Usuario o Contraseña incorrecta";
        }
    }


}