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
    public ProgramaRecompensas Programa { get; set; }

    public Funcionario Avaliador { get; set; }

    public Funcionario Pagador { get; set; }

    public Pesquisador Pesquisador { get; set; }

    [Required]
    public decimal Valor { get; set; }

    [Required]
    public bool Processada { get; set; }
  }
}
