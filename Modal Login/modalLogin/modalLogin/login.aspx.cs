using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Script;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace modalLogin
{
    public partial class login : System.Web.UI.Page
    {

        private static string usuario = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["usuario"] = "";
        }

        [WebMethod]
        public static string validaUsuario(string user, string password)
        {
            bool valida = false;
            if (user.Equals("jfonseca") && password.Equals("abc123"))
            {
                HttpContext.Current.Session["usuario"] = user;
                valida = true;
            }

            JavaScriptSerializer mensaje = new JavaScriptSerializer();
            var JSonMensaje = mensaje.Serialize(valida);
            return JSonMensaje;
        }

    }

 
}