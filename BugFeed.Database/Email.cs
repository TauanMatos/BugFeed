using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace BugFeed.Database
{
  public class Email
  {
    [ForeignKey("Usuario")]
    public int EmailId { get; set; }

    [Required]
    [MaxLength(256)]
    [EmailAddress]
    public string Endereco { get; set; }

    [Required]
    public bool Confirmado { get; set; }

    [Required]
    public Usuario Usuario { get; set; }
  }
}
