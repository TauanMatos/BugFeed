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
  public partial class SignUp : System.Web.UI.Page
  {
    protected void btnCadastrar_Click(object sender, EventArgs e)
    {

      Pesquisador loPesquisador = new Pesquisador();
      loPesquisador.Nome = this.txtNome.Text;
      loPesquisador.Username = this.txtUsername.Text;
      loPesquisador.Email = new Email() { Confirmado = false, Endereco = this.txtEmail.Text, Usuario = loPesquisador };
      loPesquisador.Senha = this.RetonarHash();
      loPesquisador.Sobrenome = this.txtSobrenome.Text;
      loPesquisador.Ativo = false;
      loPesquisador.DataNascimento = DateTime.ParseExact(txtDtNascimento.Text, "yyyy-MM-dd", System.Globalization.CultureInfo.InvariantCulture);

      UsuarioDAL.Insert(loPesquisador);

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