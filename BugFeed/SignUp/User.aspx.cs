﻿using BugFeed.DAL;
using BugFeed.Database;
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
      loPesquisador.Username = this.CadastroUsuario.Username;
      loPesquisador.Email = new Email() { Confirmado = false, Endereco = this.CadastroUsuario.Email, Usuario = loPesquisador };
      loPesquisador.Senha = this.CadastroUsuario.Senha;
      loPesquisador.Ativo = false;
      loPesquisador.DataNascimento = this.CadastroUsuario.DataNascimento;
      UsuarioDAL.Insert(loPesquisador);

    }
  }
}