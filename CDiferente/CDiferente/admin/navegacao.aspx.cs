using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CDiferente.admin
{
    public partial class navegacao : System.Web.UI.Page
    {
        public int IdUsuario
        {
            get
            {
                try
                {
                    int id = Convert.ToInt32(Session["id_usuario"]);
                    return id;
                }
                catch (Exception)
                {
                    return 0;
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            // se o id for 0 então ele não esta autenticado
            if (IdUsuario <= 0)
                Response.Redirect("/admin/login.aspx");
        }
    }
}