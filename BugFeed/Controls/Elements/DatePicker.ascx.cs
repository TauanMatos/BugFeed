using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BugFeed.Controls.Elements
{
  public partial class DatePicker : System.Web.UI.UserControl
  {
    public DateTime DateTime
    {
      get
      {
        return Convert.ToDateTime(this.txtDateTime.Text);
      }
    }
  }
}