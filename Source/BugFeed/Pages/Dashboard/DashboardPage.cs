using BugFeed.DAL;
using BugFeed.Database;
using BugFeed.Properties;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace BugFeed.Pages.Dashboard
{
  public class DashboardPage : WebForm
  {
    private Usuario usuario;

    public Usuario Usuario
    {
      get
      {
        if (usuario == null)
        {
          using (UnitOfWork unitOfWork = new UnitOfWork())
          {
            var userStore = new UserStore<Usuario>(unitOfWork.Context);
            var userManager = new UserManager<Usuario>(userStore);
            string userId = this.User.Identity.GetUserId();
            usuario = userManager.Users
              .Include(u => u.Pesquisador)
              .Include(u => u.Funcionario.Grupo.Empresa)
              .Where(u => u.Id == userId)
              .FirstOrDefault();
          }
        }
        return usuario;
      }
    }

    public Funcionario Funcionario
    {
      get
      {
        return this.Usuario.Funcionario;
      }
    }

    public Pesquisador Pesquisador
    {
      get
      {
        return (Pesquisador)this.Usuario.Pesquisador;
      }
    }

    protected override void OnInit(EventArgs e)
    {
      base.OnInit(e);
      this.ValidateUser();
    }

    protected virtual void ValidateUser()
    {
      if (!this.User.Identity.IsAuthenticated)
        this.Response.Redirect(Urls.SignIn);
      else
      {
        this.ValidatePermissions();
      }

    }

    protected virtual void ValidatePermissions()
    {
      var teste = true;
      if (!teste)
        this.Response.Redirect("~/Error/Unauthorized.aspx");
    }
  }
}