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
    protected override void OnLoad(EventArgs e)
    {
      base.OnLoad(e);
      if (this.Session["Usuario"] != null)
        this.Response.Redirect("Profile.aspx");
    }
    protected void btnEntrar_Click(object sender, EventArgs e)
    {
      Usuario loUsuario = UsuarioDAL.AutenticaUsuario(this.txtUsername.Text, this.txtPassword.Text.ToPassword());
      if (loUsuario != null)
        this.Session["Usuario"] = loUsuario;
      else
        this.AddAlert(skin: AlertSkin.Danger, title: "Erro!", message: "Usuário ou senha incorretos.");
    }
  }
}