using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CDiferente
{
    public partial class portfolio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PreencheCombo();
            }
        }
        public void PreencheCombo()
        {
            DAL dal = new DAL();
            DataTable tb = dal.ExecuteReader("select usuario_id ,name from usuarios", System.Data.CommandType.Text);
            ddlUsuarios.DataSource = tb;
            ddlUsuarios.DataTextField = "name";
            ddlUsuarios.DataValueField = "usuario_id";
            ddlUsuarios.DataBind();
        }

        protected void ddlUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            hdnPortifolio.Value = "";
            BuscaUsuario(Convert.ToInt32(ddlUsuarios.SelectedValue));
        }

        public void BuscaUsuario(int id)
        {
            DAL dal = new DAL();
      
            dal.AddParameter("usuario", id);
            DataTable tb = dal.ExecuteReader("select image_name from portifolios where id_usuario = @usuario", System.Data.CommandType.Text);
            hdnPortifolio.Value = string.Join(",", tb.Select().Select(x => x["image_name"]));
        }
    }
}