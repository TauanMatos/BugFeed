using BugFeed.DAL;
using BugFeed.Database;
using BugFeed.Pages;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BugFeed.SignUp
{
  public partial class User : WebForm
  {
    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
      if (this.IsFormValid("RegisterForm"))
      {
        try
        {
          using (UnitOfWork unitOfWork = new UnitOfWork())
          {
            Pesquisador loPesquisador = new Pesquisador();
            loPesquisador.Nome = this.CadastroUsuario.Nome;
            loPesquisador.Sobrenome = this.CadastroUsuario.Sobrenome;
            loPesquisador.UserName = this.CadastroUsuario.Username;
            loPesquisador.Email = this.CadastroUsuario.Email;
            loPesquisador.Ativo = false;
            loPesquisador.DataNascimento = this.CadastroUsuario.DataNascimento;

            var userStore = new UserStore<Usuario>(unitOfWork.Context);
            var manager = new UserManager<Usuario>(userStore);

            var result = manager.Create(loPesquisador, this.CadastroUsuario.Senha);

            if (result.Succeeded)
            {
              var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
              var userIdentity = manager.CreateIdentity(loPesquisador, DefaultAuthenticationTypes.ApplicationCookie);
              authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
              Response.Redirect("~/Account/SignIn.aspx");
            }
            else
            {
              result.Errors.ToList().ForEach(er => this.AddErrorAlert(er));
            }
          }

        }
        catch (Exception ex)
        {
          this.AddErrorAlert(ex.Message);
        }
      }
    }
  }
}