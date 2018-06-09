using System;
using BugFeed.Database;

namespace BugFeed.DAL
{
  public class UnitOfWork : IDisposable
  {
    public BugFeedContext Context { get; } = new BugFeedContext();
    private EmpresaRepository empresaRepository;
    private ProgramaRecompensaRepository programaRecompensaRepository;
    private PesquisadorRepository pesquisadorRepository;
    private FuncionarioRepository ioFuncionarioRepository;

    public FuncionarioRepository Funcionario
    {
      get
      {
        if (this.ioFuncionarioRepository == null)
          this.ioFuncionarioRepository = new FuncionarioRepository(Context);
        return this.ioFuncionarioRepository;
      }
    }
    public EmpresaRepository Empresas
    {
      get
      {

        if (this.empresaRepository == null)
        {
          this.empresaRepository = new EmpresaRepository(Context);
        }
        return empresaRepository;
      }
    }

    public ProgramaRecompensaRepository ProgramasRecompensas
    {
      get
      {
        if (this.programaRecompensaRepository == null)
        {
          this.programaRecompensaRepository = new ProgramaRecompensaRepository(Context);
        }
        return programaRecompensaRepository;
      }
    }

    public PesquisadorRepository Pesquisadores
    {
      get
      {
        if (this.pesquisadorRepository == null)
        {
          this.pesquisadorRepository = new PesquisadorRepository(Context);
        }
        return pesquisadorRepository;
      }
    }

    public void Save()
    {
      Context.SaveChanges();
    }

    private bool disposed = false;

    protected virtual void Dispose(bool disposing)
    {
      if (!this.disposed)
      {
        if (disposing)
        {
          Context.Dispose();
        }
      }
      this.disposed = true;
    }

    public void Dispose()
    {
      Dispose(true);
      GC.SuppressFinalize(this);
    }
  }
}
