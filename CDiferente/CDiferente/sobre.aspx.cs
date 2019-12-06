using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CDiferente
{
    public partial class sobre : System.Web.UI.Page
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
            tempDiv.Visible = false;
            divUser.Visible = true;
            BuscaUsuario(Convert.ToInt32(ddlUsuarios.SelectedValue));
        }
        public void BuscaUsuario(int id)
        {
            DAL dal = new DAL();
            //  DataTable tb = dal.ExecuteReader("select usuario_id ,name,description from usuarios", System.Data.CommandType.Text);
            dal.AddParameter("usuario", id);
            DataTable tb = dal.ExecuteReader("select usuario_id ,name,description,image from usuarios where usuario_id = @usuario", System.Data.CommandType.Text);
            txtConteudo.InnerHtml = HttpUtility.HtmlDecode(tb.Rows[0]["description"].ToString());
            imgUser.ImageUrl = "/img/" + tb.Rows[0]["image"].ToString();
            imgUser.DescriptionUrl = tb.Rows[0]["name"].ToString();
        }
    }
}