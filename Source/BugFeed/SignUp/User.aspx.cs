using BugFeed.DAL;
using BugFeed.Database;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
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
      loPesquisador.Nome = this.CadastroUsuario.Nome;
      loPesquisador.Sobrenome = this.CadastroUsuario.Sobrenome;
      loPesquisador.UserName = this.CadastroUsuario.Username;
      loPesquisador.Email = this.CadastroUsuario.Email;
      loPesquisador.Ativo = false;
      loPesquisador.DataNascimento = this.CadastroUsuario.DataNascimento;
      //UsuarioDAL.Insert(loPesquisador);

      var userStore = new UserStore<Usuario>(new BugFeedContext());
      var manager = new UserManager<Usuario>(userStore);
      
      var result = manager.Create(loPesquisador, this.CadastroUsuario.Senha);

    }
  }
}