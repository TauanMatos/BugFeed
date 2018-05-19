using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;

namespace BugFeed.Database
{
  public class BugFeedContext : DbContext
  {
    public BugFeedContext() : base("BugFeed")
    { }

    public DbSet<Email> Emails { get; set; }
    public DbSet<Empresa> Empresas { get; set; }
    public DbSet<Endereco> Enderecos { get; set; }
    public DbSet<Usuario> Usuarios { get; set; }
    public DbSet<Formacao> Formacoes { get; set; }
    public DbSet<ProgramaRecompensas> ProgramasRecompensas { get; set; }
    public DbSet<RelatorioBug> RelatoriosBug { get; set; }
    public DbSet<GrupoFuncionarios> GruposFuncionarios { get; set; }
    public DbSet<Permissao> Permissoes { get; set; }
    public DbSet<Comentario> Comentarios { get; set; }
  }
}
