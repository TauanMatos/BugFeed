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
using BugFeed.Utils.Extensions;

namespace BugFeed
{
  public partial class Login : WebForm
  {
    protected void btnEntrar_Click(object sender, EventArgs e)
    {
      if (this.IsFormValid("LoginForm"))
      {
        try
        {
          Usuario loUsuario = UsuarioDAL.AutenticaUsuario(this.txtUsername.Text, this.txtPassword.Text.ToPassword());
          if (loUsuario != null)
          {
            this.Session.Clear();
            this.Session["Usuario"] = loUsuario;
            this.Response.Redirect("Dashboard/Profile.aspx");
          }
          else
            this.AddErrorAlert("Usuário ou senha incorretos.");
        }
        catch(Exception ex)
        {
          this.AddErrorAlert(ex.Message);
        }
      }
    }
    
  }
}