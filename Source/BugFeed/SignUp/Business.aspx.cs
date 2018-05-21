using BugFeed.DAL;
using BugFeed.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BugFeed.SignUp
{
  public partial class Business : System.Web.UI.Page
  {
    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
      Empresa loEmpresa = new Empresa
      {
        Nome = this.txtNome.Text,
        Site = this.txtSite.Text,
        Endereco = new Endereco() { Destinatario = this.txtDestinatario.Text, Linha1 = this.txtComplemento.Text, Bairro = this.txtBairro.Text, Cidade = this.txtCidade.Text, Estado = this.txtEstado.Text, Pais = this.txtPais.Text },
        Funcionarios = new List<Funcionario>() { new Funcionario() { Grupo = new GrupoFuncionarios() { Permissoes = new List<Permissao>() { new Permissao() { Perfil = Perfil.Admin} } },
                                                                     DataNascimento = this.CadastroUsuario.DataNascimento, Ativo = true, Nome = this.CadastroUsuario.Nome, Email = new Email(){ Endereco = this.CadastroUsuario.Email, Confirmado = false},
                                                                     Senha = this.CadastroUsuario.Senha, Username = this.CadastroUsuario.Username, Sobrenome = this.CadastroUsuario.Sobrenome} }
      };

      EmpresaDAL.Insert(loEmpresa);
    }
  }
}