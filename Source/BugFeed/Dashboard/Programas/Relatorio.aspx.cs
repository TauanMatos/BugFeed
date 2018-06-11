using BugFeed.DAL;
using BugFeed.Database;
using BugFeed.Pages;
using BugFeed.Properties;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BugFeed.Dashboard.Programas
{
  public partial class Relatorio : WebForm
  {
    protected override void OnLoad(EventArgs e)
    {
      base.OnLoad(e);

      using (UnitOfWork unitOfWork = new UnitOfWork())
      {
        RelatorioBug loRelatorio = unitOfWork.RelatoriosBug.GetByID(Convert.ToInt32(this.Session["RelatorioBugId"]));
        this.lblTitulo.Text = loRelatorio.Titulo;
        this.lblData.Text = loRelatorio.Data.ToShortDateString();
        this.lblPesquisador.Text = " " + loRelatorio.Pesquisador.Usuario.Nome + " " + loRelatorio.Pesquisador.Usuario.Sobrenome;
        this.lblStatus.Text = loRelatorio.Estado.ToString();
        this.lblImpacto.Text = loRelatorio.Impacto;
        this.lblDescricao.Text = loRelatorio.Descricao;
        this.rptComentarios.DataSource = loRelatorio.Comentarios.OrderByDescending(i => i.UltimaRevisao).ToList();
        this.rptComentarios.DataBind();
      }
    }

    protected void rptComentarios_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
      if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
      {
        var loComentario = (ComentarioRelatorio)e.Item.DataItem;

        var lbUsuario = (Label)e.Item.FindControl("lblUsuarioComentario");
        var lbData = (Label)e.Item.FindControl("lblDataComentario");
        var lbComentario = (Label)e.Item.FindControl("lblComentario");

        lbUsuario.Text = loComentario.Usuario.Nome;
        lbData.Text = loComentario.UltimaRevisao.ToShortDateString();
        lbComentario.Text = loComentario.Conteudo;

      }

    }

    protected void btSalvar_Click(object sender, EventArgs e)
    {
      using (UnitOfWork loUnitOfWork = new UnitOfWork())
      {
        RelatorioBug loRelatorio = loUnitOfWork.RelatoriosBug.GetByID(Convert.ToInt32(this.Session["RelatorioBugId"]));

        ComentarioRelatorio loComentario = new ComentarioRelatorio();

        loComentario.Conteudo = this.txtComentario.Text.Trim();
        loComentario.Data = DateTime.Now;
        loComentario.DataHora = DateTime.Now;
        loComentario.UltimaRevisao = DateTime.Now;
        loComentario.Usuario = this.GetUsuario(loUnitOfWork.Context);
        loComentario.Relatorio = loRelatorio;

        loUnitOfWork.Comentario.Insert(loComentario);

      }
    }

    protected void btPagamento_Click(object sender, EventArgs e)
    {
      using (UnitOfWork loUnitOfWork = new UnitOfWork())
      {
        RelatorioBug loRelatorio = loUnitOfWork.RelatoriosBug.GetByID(Convert.ToInt32(this.Session["RelatorioBugId"]));
        Recompensa loRecompensa = new Recompensa();

        loRecompensa.Estado = EstadoRecompensa.ARetirar;
        loRecompensa.Pagador = loUnitOfWork.Funcionario.FindByUsername(this.User.Identity.Name);
        loRecompensa.Relatorio = loRelatorio;
        loRecompensa.Valor = Convert.ToDecimal(this.txtPagamento.Text.Replace(",","").Replace(".","").Replace("R$", ""));
        loRecompensa.Avaliador = loUnitOfWork.Funcionario.FindByUsername(this.User.Identity.Name);

        loRelatorio.Recompensa = loRecompensa;

        loUnitOfWork.RelatoriosBug.Update(loRelatorio);


      }
    }
  }
}