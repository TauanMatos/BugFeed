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
using BugFeed.Utils.Extensions;

namespace BugFeed
{
  public partial class Login : System.Web.UI.Page
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
      //TODO
      //Exibir mensagem de erro de senha/usuário inválidos
    }
  }
}