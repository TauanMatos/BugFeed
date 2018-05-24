using BugFeed.DAL;
using BugFeed.Database;
using BugFeed.Pages;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BugFeed.SignUp
{
  public partial class Business : WebForm
  {
    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
      if (this.IsFormValid("RegisterForm"))
      {
        try
        {
          using (UnitOfWork unitOfWork = new UnitOfWork())
          {
            DbContextTransaction transaction = unitOfWork.Context.Database.BeginTransaction();
            var userStore = new UserStore<Usuario>(unitOfWork.Context);
            var manager = new UserManager<Usuario>(userStore);

            Funcionario funcionario = this.GetFuncionario();
            var result = manager.Create(funcionario, this.CadastroUsuario.Senha);

            if (result.Succeeded)
            {
              Empresa empresa = this.GetEmpresa(funcionario);
              unitOfWork.EmpresaRepository.Insert(empresa);

              unitOfWork.Save();
              transaction.Commit();

              var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
              var userIdentity = manager.CreateIdentity(funcionario, DefaultAuthenticationTypes.ApplicationCookie);
              authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

              Response.Redirect("~/SignIn.aspx");
            }
            else
            {
              transaction.Rollback();
              result.Errors.ToList().ForEach(er => this.AddErrorAlert(er));
            }
          }
        }
        catch (Exception ex)
        {
          this.AddErrorAlert(ex.Message);
        }
      }
    }

    private Funcionario GetFuncionario()
    {
      return new Funcionario()
      {
        Grupo = new GrupoFuncionarios()
        {
          Permissoes = new List<Permissao>() {
                new Permissao() {
                  Perfil = Perfil.Admin
                }
              }
        },
        DataNascimento = this.CadastroUsuario.DataNascimento,
        Ativo = true,
        Nome = this.CadastroUsuario.Nome,
        Email = this.CadastroUsuario.Email,
        UserName = this.CadastroUsuario.Username,
        Sobrenome = this.CadastroUsuario.Sobrenome
      };
    }

    private Empresa GetEmpresa(Funcionario funcionario)
    {
      return new Empresa
      {
        Nome = this.txtNome.Text,
        Site = this.txtSite.Text,
        Endereco = new Endereco()
        {
          Destinatario = this.txtDestinatario.Text,
          Linha1 = this.txtComplemento.Text,
          Bairro = this.txtBairro.Text,
          Cidade = this.txtCidade.Text,
          Estado = this.txtEstado.Text,
          Pais = this.txtPais.Text
        },
        Funcionarios = new List<Funcionario>() { funcionario }
      };
    }
  }
}