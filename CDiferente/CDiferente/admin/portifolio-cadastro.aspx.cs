using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CDiferente.admin
{
    public partial class portifolio_cadastro : System.Web.UI.Page
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

        /// <summary>
        /// se o id for 0 então o item não existe então a tela vira uma tela de cadasto
        /// </summary>
        public bool IsNew
        {
            get
            {
                return IdPortifolio <= 0;
            }
        }
        public int IdPortifolio
        {
            get
            {
                try
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
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

            if (IdPortifolio > 0 && !IsPostBack)
            {
                DAL dal = new DAL();
                dal.AddParameter("id",IdPortifolio);
                DataTable tb = dal.ExecuteReader("select id_portifolio, image_name from portifolios  where id_portifolio = @id", System.Data.CommandType.Text);
                txtImagem.Text = tb.Rows[0]["image_name"].ToString();
            }
        }

        public void CadastrarPortifolio()
        {
            DAL dal = new DAL();
            dal.AddParameter("id_usuario", IdUsuario);
            dal.AddParameter("imagem", txtImagem.Text + System.IO.Path.GetExtension(fluImagemPortifolio.FileName));
            dal.ExecuteCommand("insert into portifolios (id_usuario,image_name) values (@id_usuario,@imagem)", System.Data.CommandType.Text);
            string path = System.IO.Path.Combine("\\", "img", "portifolios", txtImagem.Text + System.IO.Path.GetExtension(fluImagemPortifolio.FileName));
            fluImagemPortifolio.SaveAs(Server.MapPath(path));
            fluImagemPortifolio.Dispose();
            Response.Redirect("/admin/portifolio-listagem.aspx");
        }
        public void EditarPortifolio()
        {
            DAL dal = new DAL();

            dal.AddParameter("imagem", txtImagem.Text + System.IO.Path.GetExtension(fluImagemPortifolio.FileName));
            dal.AddParameter("id", IdPortifolio);
            dal.ExecuteCommand("update portifolios set image_name = @imagem where id_portifolio = @id", System.Data.CommandType.Text);
            string path = System.IO.Path.Combine("\\", "img", "portifolios", txtImagem.Text + System.IO.Path.GetExtension(fluImagemPortifolio.FileName));
            fluImagemPortifolio.SaveAs(Server.MapPath(path));
            fluImagemPortifolio.Dispose();
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if (IsNew)
                CadastrarPortifolio();
            else
                EditarPortifolio();
        }
    }
}