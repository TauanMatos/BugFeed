﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BugFeed.MasterPages.Dashboard
{
  public partial class DashboardMasterPage : BaseMasterPage
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lbSair_Click(object sender, EventArgs e)
    {
      var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
      authenticationManager.SignOut();
      Response.Redirect("~/Login.aspx");
    }
  }
}