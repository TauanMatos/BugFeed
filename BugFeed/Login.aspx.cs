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
      Usuario loUsuario = UsuarioDAL.AutenticaUsuario(this.txtUsername.Text, this.RetonarHash());
      if (loUsuario != null)
        this.Session["Usuario"] = loUsuario;
      else
        this.AddAlert(skin: AlertSkin.Danger, title: "Erro!", message: "Usuário ou senha incorretos.");
      this.upAlerts.Update();
    }

    private string RetonarHash()
    {
      using (MD5 loHash = MD5.Create())
      {
        string loPassword = this.txtPassword.Text;
        byte[] data = loHash.ComputeHash(Encoding.UTF8.GetBytes(loPassword));

        StringBuilder sBuilder = new StringBuilder();

        for (int i = 0; i < data.Length; i++)
        {
          sBuilder.Append(data[i].ToString("x2"));
        }

        return sBuilder.ToString();
      }
    }
  }
}