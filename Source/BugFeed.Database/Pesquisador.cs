using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BugFeed.Database
{
  public class Pesquisador : Usuario
  {
    public virtual List<Formacao> Formacoes { get; set; }

    public Endereco Endereco { get; set; }

    public virtual List<DadosBancarios> DadosBancarios { get; set; }

    public virtual List<Recompensa> Recompensas { get; set; }

    public virtual List<Retirada> Retiradas { get; set; }
  }
}
