using BugFeed.DAL;
using BugFeed.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BugFeed.SignUp
{
  public partial class User : System.Web.UI.Page
  {
    protected void btnCadastrar_Click(object sender, EventArgs e)
    {

      Pesquisador loPesquisador = new Pesquisador();
      loPesquisador.Nome = this.txtNome.Text;
      loPesquisador.Username = this.txtUsername.Text;
      loPesquisador.Email = new Email() { Confirmado = false, Endereco = this.txtEmail.Text, Usuario = loPesquisador };
      loPesquisador.Senha = this.txtPassword.Password;
      loPesquisador.Sobrenome = this.txtSobrenome.Text;
      loPesquisador.Ativo = false;
      loPesquisador.DataNascimento = this.dtDatePicker.DateTime;
      UsuarioDAL.Insert(loPesquisador);

    }
  }
}