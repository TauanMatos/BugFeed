using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BugFeed.Database
{
  public class GrupoFuncionarios
  {
    public int GrupoFuncionariosId { get; set; }

    public List<Permissao> Permissoes { get; set; }
  }
}
