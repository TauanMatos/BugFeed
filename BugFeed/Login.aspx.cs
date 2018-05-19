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
      Usuario loUsuario = UsuarioDAL.AutenticaUsuario(this.txtUsername.Text, this.RetonarHash());
      if (loUsuario != null)
        this.Session["Usuario"] = loUsuario;
      //TODO
      //Exibir mensagem de erro de senha/usuário inválidos
        

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