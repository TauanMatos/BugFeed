using BugFeed.DAL;
using BugFeed.Pages.Dashboard;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BugFeed.Dashboard
{
  public partial class Default : DashboardPage
  {
    protected override void OnInit(EventArgs e)
    {
      base.OnInit(e);

      using (UnitOfWork unitOfWork = new UnitOfWork())
      {

      }
    }
  }
}