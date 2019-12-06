using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CDiferente.admin
{
    public partial class portifolio_listagem : System.Web.UI.Page
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
            if (IdUsuario <= 0)
                Response.Redirect("/admin/login.aspx");
            if (!IsPostBack)
            {
                BuscarDados();
            }
        }
        public void BuscarDados()
        {
            DAL dal = new DAL();
            dal.AddParameter("usuario", IdUsuario);
            DataTable tb = dal.ExecuteReader("select id_portifolio, image_name,name from portifolios p inner join usuarios u where u.usuario_id = p.id_usuario and id_usuario = @usuario", CommandType.Text);
            lvPortifolios.DataSource = tb.Rows;
            lvPortifolios.DataBind();
        }

        protected void lvPortifolios_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            DataRow tb = (DataRow)e.Item.DataItem;

            Literal ltlId = (Literal)e.Item.FindControl("ltlId");
            Literal ltlImagem = (Literal)e.Item.FindControl("ltlImagem");
            Literal ltlUsuario = (Literal)e.Item.FindControl("ltlUsuario");

            HyperLink linkEdit = (HyperLink)e.Item.FindControl("linkEdit");
            LinkButton btnDeletar = (LinkButton)e.Item.FindControl("btnDeletar");

            ltlId.Text = tb["id_portifolio"].ToString();
            ltlImagem.Text = tb["image_name"].ToString();
            ltlUsuario.Text = tb["name"].ToString();

            btnDeletar.CommandArgument = ltlId.Text;
            btnDeletar.CommandName = "delete";
            linkEdit.NavigateUrl = "/admin/portifolio-cadastro.aspx?id=" + ltlId.Text;

        }

        protected void lvPortifolios_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "delete")
                Deletar(Convert.ToInt32(e.CommandArgument));


            Response.Redirect(Request.Url.AbsolutePath);
        }

        public void Deletar(int id)
        {
            DAL dal = new DAL();
            dal.AddParameter("id", id);
            dal.ExecuteCommand("delete from portifolios where id_portifolio = @id", CommandType.Text);
        }
    }
}