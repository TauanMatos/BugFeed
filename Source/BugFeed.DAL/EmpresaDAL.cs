using BugFeed.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BugFeed.DAL
{
  public static class EmpresaDAL
  {
    public static void Insert(Empresa aoEmpresa)
    {
      using (BugFeedContext loDBContext = new BugFeedContext())
      {
        loDBContext.Empresas.Add(aoEmpresa);
        loDBContext.SaveChanges();
      }
    }
  }
}
