using BugFeed.DAL;
using BugFeed.Database;
using BugFeed.Pages.Dashboard;
using BugFeed.Properties;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BugFeed.Dashboard.Programas
{
  public partial class Default : DashboardPage
  {
    protected override void OnLoad(EventArgs e)
    {
      base.OnLoad(e);

      using (UnitOfWork unitOfWork = new UnitOfWork())
      {
        Empresa empresa = this.GetUsuario(unitOfWork.Context).Funcionario.Grupo.Empresa;
        List<ProgramaRecompensas> programas = unitOfWork.ProgramasRecompensas.FindByEmpresa(empresa);
        this.rptProgramas.DataSource = programas;
        this.rptProgramas.DataBind();
      }
    }

    protected void btNovo_Click(object sender, EventArgs e)
    {
      this.Response.Redirect(Urls.NovoPrograma);
    }
  }
}