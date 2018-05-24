﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BugFeed.Database
{
  public class ProgramaRecompensas
  {
    public int ProgramaRecompensasId { get; set; }

    [Required]
    public Empresa Empresa { get; set; }

    [Required]
    public bool Ativo { get; set; }

    [Required]
    public DateTime DataCriacao { get; set; }

    [Required]
    public DateTime UltimaRevisao { get; set; }

    public virtual List<RelatorioBug> Relatorios { get; set; }

    public virtual List<ComentarioPrograma> Comentarios { get; set; }

    public virtual List<Recompensa> Recompensas { get; set; }
  }
}