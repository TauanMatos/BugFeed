using BugFeed.Properties;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BugFeed.Dashboard.Programas
{
  public partial class Default : System.Web.UI.Page
  {
    protected void btNovo_Click(object sender, EventArgs e)
    {
      this.Response.Redirect(Urls.NovoPrograma);
    }
  }
}