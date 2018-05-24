using BugFeed.DAL;
using BugFeed.Database;
using BugFeed.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static BugFeed.Controls.Elements.Alert;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System.Data.Entity.Core.Objects;

namespace BugFeed
{
  public partial class Login : WebForm
  {
    protected override void OnLoad(EventArgs e)
    {
      base.OnLoad(e);
      if (!IsPostBack)
      {
        if (User.Identity.IsAuthenticated)
        {
          var userStore = new UserStore<Usuario>(new BugFeedContext());
          var userManager = new UserManager<Usuario>(userStore);
                   
            
          //TODO: Redirecionar de acordo com o perfil do usuário
          this.Response.Redirect("~/Dashboard/Pesquisador/");
        }
      }
    }
    
    protected void btnEntrar_Click(object sender, EventArgs e)
    {
      if (this.IsFormValid("LoginForm"))
      {
        try
        {
          var userStore = new UserStore<Usuario>(new BugFeedContext());
          var userManager = new UserManager<Usuario>(userStore);
          
          var user = userManager.Find(this.txtUsername.Text, this.txtPassword.Text);

          if (user != null)
          {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

            authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = this.cbLembrarMe.Checked }, userIdentity);
            Response.Redirect("~/SignIn.aspx");
          }
          else
          {
            this.AddErrorAlert("Usuário ou senha incorretos.");
          }
            
        }
        catch(Exception ex)
        {
          this.AddErrorAlert(ex.Message);
        }
      }
    }
    
  }
}