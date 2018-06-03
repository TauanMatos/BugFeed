using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BugFeed.Database
{
  public class Funcionario
  {
    public int FuncionarioId { get; set; }

    [Required]
    public GrupoFuncionarios Grupo { get; set; }

    [Required]
    public Usuario Usuario { get; set; }
  }
}
