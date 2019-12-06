using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CDiferente.admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogar_Click(object sender, EventArgs e)
        {
            DAL dal = new DAL();
            dal.AddParameter("login", txtLogin.Text);
            dal.AddParameter("senha", txtSenha.Text);
            DataTable tb = dal.ExecuteReader("select * from usuarios where senha = @senha and login = @login", System.Data.CommandType.Text);
            if (tb.Rows.Count > 0)
            {
                Session["id_usuario"] = tb.Rows[0]["usuario_id"].ToString();
                Response.Redirect("/admin/navegacao.aspx");
            }
            else
                txtMsg.Text = "Usuario ou senha não encontrado";

        }
    }
}