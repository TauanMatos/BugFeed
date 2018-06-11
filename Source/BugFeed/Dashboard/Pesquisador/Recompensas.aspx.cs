using BugFeed.DAL;
using BugFeed.Database;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace BugFeed.Dashboard.Pesquisador
{
  public partial class Recompensas : System.Web.UI.Page
  {
    protected override void OnLoad(EventArgs e)
    {
      base.OnLoad(e);
      using (UnitOfWork unitOfWork = new UnitOfWork())
      {
        string userId = User.Identity.GetUserId();
        List<RelatorioBug> relatorios = unitOfWork.RelatoriosBug.Get(r => r.Pesquisador.Usuario.Id == userId && r.Recompensa != null).ToList();
        this.rptRecompensas.DataSource = relatorios;
        this.rptRecompensas.DataBind();
      }
    }


    private void Retirar(RepeaterCommandEventArgs e)
    {
      throw new NotImplementedException();
    }

    protected void rptRecompensas_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
      if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
      {
        var relatorio = (RelatorioBug)e.Item.DataItem;

        var cbRetirar = (HtmlInputCheckBox)e.Item.FindControl("cbRetirar");
        var tdValor = (HtmlTableCell)e.Item.FindControl("tdValor");

        cbRetirar.Disabled = relatorio.Recompensa.Estado != EstadoRecompensa.ARetirar;
        tdValor.InnerText = string.Format("{0:#,00}", relatorio.Recompensa.Valor);
      }
    }
  }
}