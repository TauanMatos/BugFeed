using BugFeed.Controls.Elements;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static BugFeed.Controls.Elements.Alert;

namespace BugFeed.Pages
{
  public class WebForm : Page
  {
    protected Panel AlertsPanel { get; private set; }

    protected override void OnInit(EventArgs e)
    {
      base.OnInit(e);
      this.OnLoadPageControls(e);
      this.ClearAlerts();
    }

    /// <summary>
    /// Limpar os alertas da página
    /// </summary>
    protected void ClearAlerts()
    {
      if (this.AlertsPanel != null)
        this.AlertsPanel.Controls.Clear();
    }

    /// <summary>
    /// Carregar os controles padrão da página
    /// </summary>
    /// <param name="e"></param>
    protected void OnLoadPageControls(EventArgs e)
    {
      this.AlertsPanel = (Panel)this.FindControlRecursive(this.Master, "pnAlerts");
    }

    public bool AddAlert(AlertType type = AlertType.Default, AlertSkin skin = AlertSkin.Success,
                         string title = "", string message = "", bool dismissible = true)
    {
      if (this.AlertsPanel == null)
        return false;

      Alert alert = (Alert)this.LoadControl("~/Controls/Elements/Alert.ascx");

      alert.Type = type;
      alert.Skin = skin;
      alert.Title = title;
      alert.Message = message;
      alert.Dismissible = dismissible;

      this.AlertsPanel.Controls.Add(alert);

      return true;
    }

    public Control FindControlRecursive(Control container, string name)
    {
      if ((container.ID != null) && (container.ID.Equals(name)))
        return container;

      foreach (Control ctrl in container.Controls)
      {
        Control foundCtrl = FindControlRecursive(ctrl, name);
        if (foundCtrl != null)
          return foundCtrl;
      }
      return null;
    }
  }
}