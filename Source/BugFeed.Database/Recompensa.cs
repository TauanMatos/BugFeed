using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BugFeed.Database
{
  public class Recompensa
  {
    public int RecompensaId { get; set; }

    [Required]
    public virtual Funcionario Avaliador { get; set; }

    public virtual Funcionario Pagador { get; set; }

    [Required]
    public virtual RelatorioBug Relatorio { get; set; }

    [Required]
    public decimal Valor { get; set; }

    [Required]
    public EstadoRecompensa Estado { get; set; }
  }

  public enum EstadoRecompensa
  {
    [Description("A Retirar")]
    ARetirar,
    Processando,
    Processada
  }
}
