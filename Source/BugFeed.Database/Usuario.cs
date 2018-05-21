using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace BugFeed.Database
{
  public abstract class Usuario
  {
    public int UsuarioId { get; set; }

    [Required]
    public string Nome { get; set; }

    [Required]
    public string Sobrenome { get; set; }

    [Required]
    [MinLength(5)]
    [MaxLength(30)]
    public string Username { get; set; }

    [Required]
    [MinLength(8)]
    [MaxLength(256)]
    public string Senha { get; set; }

    [Required]
    public bool Ativo { get; set; }

    [Required]
    public Email Email { get; set; }

    [DataType(DataType.Date)]
    public DateTime DataNascimento { get; set; }
  }

}




