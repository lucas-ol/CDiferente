using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CDiferente
{
    public partial class contato : System.Web.UI.Page
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
    }
}