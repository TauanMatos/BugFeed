using BugFeed.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BugFeed.DAL
{
  public static class UsuarioDAL
  {
    public static void Insert(Usuario aoUsuario)
    {
      using (BugFeedContext loDBContext = new BugFeedContext())
      {
        loDBContext.Usuarios.Add(aoUsuario);
        loDBContext.SaveChanges();
      }
    }
  }
}
