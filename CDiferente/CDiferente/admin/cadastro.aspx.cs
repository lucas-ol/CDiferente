using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CDiferente.admin
{
    public partial class cadastro : System.Web.UI.Page
    {
        /// <summary>
        /// se o id for 0 então o item não existe então a tela vira uma tela de cadasto
        /// </summary>
        public bool IsNew
        {
            get
            {
                return IdUsuario <= 0;
            }
        }
        public int IdUsuario
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
            if (!IsPostBack)
            {
                if (IdUsuario > 0)
                {
                    CarregarDados();
                }
            }
        }

        protected void bntEnviar_Click(object sender, EventArgs e)
        {
            if (IsNew)
                CadastrarPortifolio();
            else
                EditarPortifolio();
        }

        public void CarregarDados()
        {
            DAL dal = new DAL();
            dal.AddParameter("usuario_id", IdUsuario);

            DataTable tb = dal.ExecuteReader("select * from usuarios where usuario_id = @usuario_id", CommandType.Text);
            txtNome.Text = tb.Rows[0]["name"].ToString();
            txtDescription.Text = tb.Rows[0]["description"].ToString();
            txtLogin.Text = tb.Rows[0]["login"].ToString();
            txtSenha.Text = tb.Rows[0]["senha"].ToString();
        }

        public void CadastrarPortifolio()
        {
            if (Page.IsValid)
            {
                DAL dal = new DAL();

                dal.AddParameter("name", txtNome.Text);
                dal.AddParameter("description", HttpUtility.HtmlEncode(txtDescription.Text));
                dal.AddParameter("image", fluImagemPortifolio.FileName);
                dal.AddParameter("login", txtLogin.Text);
                dal.AddParameter("senha", txtSenha.Text);


                dal.ExecuteCommand("INSERT INTO usuarios( name,description,login,senha,image) VALUES (@name,@description,@login,@senha,@image)", System.Data.CommandType.Text);
                string path = System.IO.Path.Combine("\\", "img", "portifolios", fluImagemPortifolio.FileName);
                fluImagemPortifolio.SaveAs(Server.MapPath(path));
                fluImagemPortifolio.Dispose();
                Response.Redirect("/admin/navegacao.aspx");
            }
            else
            {
                txtMsg.Text = "Preencha todos os campos porfavor";
            }
        }
        public void EditarPortifolio()
        {
            if (Page.IsValid)
            {
                DAL dal = new DAL();

                dal.AddParameter("name", txtNome.Text);
                dal.AddParameter("description", HttpUtility.HtmlEncode(txtDescription.Text));
                dal.AddParameter("image", fluImagemPortifolio.FileName);
                dal.AddParameter("login", txtLogin.Text);
                dal.AddParameter("senha", txtSenha.Text);
                dal.AddParameter("usuario_id", IdUsuario);

                dal.ExecuteCommand("UPDATE cdigital.usuarios SET " +
                    " name = @name, description = @description,login =  @login, senha =  @senha, image =  @image WHERE usuario_id = @usuario_id ;"
                    , System.Data.CommandType.Text);
                string path = System.IO.Path.Combine("\\", "img", "portifolios", fluImagemPortifolio.FileName);
                fluImagemPortifolio.SaveAs(Server.MapPath(path));
                fluImagemPortifolio.Dispose();
                Response.Redirect("/admin/navegacao.aspx");
            }
            else
            {
                txtMsg.Text = "Preencha todos os campos porfavor";
            }
        }


    }
}