using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BugFeed.Database
{
  public class Recompensa
  {
    public int RecompensaId { get; set; }

    [Required]
    public virtual ProgramaRecompensas Programa { get; set; }

    public virtual Funcionario Avaliador { get; set; }

    public virtual Funcionario Pagador { get; set; }

    public virtual Pesquisador Pesquisador { get; set; }

    [Required]
    public decimal Valor { get; set; }

    [Required]
    public bool Processada { get; set; }
  }
}
