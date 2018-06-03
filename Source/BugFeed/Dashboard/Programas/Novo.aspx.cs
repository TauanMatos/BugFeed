using BugFeed.DAL;
using BugFeed.Database;
using BugFeed.Pages.Dashboard;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BugFeed.Dashboard.Programas
{
  public partial class Novo : DashboardPage
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btSalvar_Click(object sender, EventArgs e)
    {
      using (UnitOfWork unitOfWork = new UnitOfWork())
      {
        ProgramaRecompensas programa = new ProgramaRecompensas
        {
          Titulo = this.txtTitulo.Text.Trim(),
          Descricao = this.txtDescricao.Text.Trim(),
          Empresa = this.Funcionario.Grupo.Empresa,
          DataCriacao = DateTime.Now
        };
        
        unitOfWork.ProgramasRecompensas.Insert(programa);
        unitOfWork.Save();
        this.AddAlert("Programa criado com sucesso!");
      }
    }
  }
}