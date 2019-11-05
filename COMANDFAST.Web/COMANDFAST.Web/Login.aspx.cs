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
            }
			
            this.cmdLogin.ServerClick += new System.EventHandler(this.cmdLogin_ServerClick);
        }


        private bool ValidateUser(string userName, string passWord)
        {
            string lookupPassword = null;

            // Chequeo el usuario ingresado. Que no sea vacio ni mayor a 50 su largo.
            if ((null == userName) || (0 == userName.Length) || (userName.Length > 50))
            {
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Error al validar el usuario.");
                return false;
            }

            // Valido que el password no este vacio ni mas grande que 30 caracteres
            if ((null == passWord) || (0 == passWord.Length) || (passWord.Length > 30))
            {
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Error al validar tamaño de password.");
                return false;
            }

            try
            {

                // Busco el usuario en la base.

                var entities = new COMANDFAST.Layer.Data.COMANDFASTEntities();

                //Query para buscar los datos que se ingresaron en la bd.
                var query = from lg in entities.Usuario
                                where (lg.Login_Usuario == userName || lg.Email == userName)
                            && lg.Pass == passWord
                                select lg.Pass;

                var usuarioCOMANDFAST = query.FirstOrDefault();
                lookupPassword = usuarioCOMANDFAST.ToString();
                   
            }
            catch (Exception ex)
            {
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Exception " + ex.Message);
            }

            // Si no hay password retorno falso
            if (null == lookupPassword)
            {
                return false;
            }

            // Comparo el password encontrado con el ingresado con case sensitive
            return (0 == string.Compare(lookupPassword, passWord, false));

            txtRegistro.Visible = false;


            if (!IsPostBack)
            {
                string esRegistro = Request.QueryString["reg"];

                if (esRegistro == "true")
                {
                    txtRegistro.Text = "* El Registro fue realizado con exito.";
                    txtRegistro.Visible = true;
                }
            }
        }

        private void cmdLogin_ServerClick(object sender, System.EventArgs e)
        {
            if (ValidateUser(txtUsuario.Text, txtPassword.Text))
                FormsAuthentication.RedirectFromLoginPage(txtUsuario.Text,
                chkPersistCookie.Checked);
            else
                //No hago nada, solo muestro mensaje.
                lblMsg.Text = "Usuario o Contraseña incorrecta";
        }
    }


}