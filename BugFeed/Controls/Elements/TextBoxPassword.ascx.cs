using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BugFeed.Utils.Extensions;

namespace BugFeed.Controls.Elements
{
  public partial class TextBoxPassword : UserControl
  {
    public string Password
    {
      get
      {
        return this.txtPassword.Text.ToPassword();
      }
    }
  }
}