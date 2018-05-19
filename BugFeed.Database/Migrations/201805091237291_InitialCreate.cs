namespace BugFeed.Database.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Comentarios",
                c => new
                    {
                        ComentarioId = c.Int(nullable: false, identity: true),
                        Conteudo = c.String(nullable: false),
                        DataHora = c.DateTime(nullable: false),
                        Apagado = c.Boolean(nullable: false),
                        Data = c.DateTime(nullable: false),
                        UltimaRevisao = c.DateTime(nullable: false),
                        Discriminator = c.String(nullable: false, maxLength: 128),
                        Programa_ProgramaRecompensasId = c.Int(),
                        Relatorio_RelatorioBugId = c.Int(),
                        Usuario_UsuarioId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ComentarioId)
                .ForeignKey("dbo.ProgramaRecompensas", t => t.Programa_ProgramaRecompensasId)
                .ForeignKey("dbo.RelatorioBugs", t => t.Relatorio_RelatorioBugId)
                .ForeignKey("dbo.Usuarios", t => t.Usuario_UsuarioId, cascadeDelete: true)
                .Index(t => t.Programa_ProgramaRecompensasId)
                .Index(t => t.Relatorio_RelatorioBugId)
                .Index(t => t.Usuario_UsuarioId);
            
            CreateTable(
                "dbo.Usuarios",
                c => new
                    {
                        UsuarioId = c.Int(nullable: false, identity: true),
                        Nome = c.String(nullable: false),
                        Sobrenome = c.String(nullable: false),
                        Username = c.String(nullable: false, maxLength: 30),
                        Senha = c.String(nullable: false, maxLength: 256),
                        Ativo = c.Boolean(nullable: false),
                        DataNascimento = c.DateTime(nullable: false),
                        Discriminator = c.String(nullable: false, maxLength: 128),
                        Grupo_GrupoFuncionariosId = c.Int(),
                        Endereco_EnderecoId = c.Int(),
                        Empresa_EmpresaId = c.Int(),
                    })
                .PrimaryKey(t => t.UsuarioId)
                .ForeignKey("dbo.GrupoFuncionarios", t => t.Grupo_GrupoFuncionariosId, cascadeDelete: true)
                .ForeignKey("dbo.Enderecoes", t => t.Endereco_EnderecoId)
                .ForeignKey("dbo.Empresas", t => t.Empresa_EmpresaId)
                .Index(t => t.Grupo_GrupoFuncionariosId)
                .Index(t => t.Endereco_EnderecoId)
                .Index(t => t.Empresa_EmpresaId);
            
            CreateTable(
                "dbo.Emails",
                c => new
                    {
                        EmailId = c.Int(nullable: false),
                        Endereco = c.String(nullable: false, maxLength: 256),
                        Confirmado = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.EmailId)
                .ForeignKey("dbo.Usuarios", t => t.EmailId)
                .Index(t => t.EmailId);
            
            CreateTable(
                "dbo.GrupoFuncionarios",
                c => new
                    {
                        GrupoFuncionariosId = c.Int(nullable: false, identity: true),
                    })
                .PrimaryKey(t => t.GrupoFuncionariosId);
            
            CreateTable(
                "dbo.Permissaos",
                c => new
                    {
                        PermissaoId = c.Int(nullable: false, identity: true),
                        Perfil = c.Int(nullable: false),
                        GrupoFuncionarios_GrupoFuncionariosId = c.Int(),
                    })
                .PrimaryKey(t => t.PermissaoId)
                .ForeignKey("dbo.GrupoFuncionarios", t => t.GrupoFuncionarios_GrupoFuncionariosId)
                .Index(t => t.GrupoFuncionarios_GrupoFuncionariosId);
            
            CreateTable(
                "dbo.DadosBancarios",
                c => new
                    {
                        DadosBancariosId = c.Int(nullable: false, identity: true),
                        CPF = c.String(nullable: false),
                        Agencia = c.Int(nullable: false),
                        DigitoAgencia = c.Int(nullable: false),
                        Conta = c.Int(nullable: false),
                        DigitoConta = c.Int(nullable: false),
                        Confirmado = c.Boolean(nullable: false),
                        Pesquisador_UsuarioId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.DadosBancariosId)
                .ForeignKey("dbo.Usuarios", t => t.Pesquisador_UsuarioId, cascadeDelete: true)
                .Index(t => t.Pesquisador_UsuarioId);
            
            CreateTable(
                "dbo.Enderecoes",
                c => new
                    {
                        EnderecoId = c.Int(nullable: false, identity: true),
                        Destinatario = c.String(nullable: false),
                        Organizacao = c.String(),
                        Linha1 = c.String(nullable: false),
                        Linha2 = c.String(),
                        Linha3 = c.String(),
                        Cidade = c.String(nullable: false, maxLength: 50),
                        Bairro = c.String(nullable: false, maxLength: 30),
                        CEP = c.Int(nullable: false),
                        Estado = c.String(nullable: false, maxLength: 50),
                        Pais = c.String(nullable: false, maxLength: 2),
                    })
                .PrimaryKey(t => t.EnderecoId);
            
            CreateTable(
                "dbo.Formacaos",
                c => new
                    {
                        FormacaoId = c.Int(nullable: false, identity: true),
                        TipoFormacao = c.Int(nullable: false),
                        Descricao = c.String(nullable: false),
                        Pesquisador_UsuarioId = c.Int(),
                    })
                .PrimaryKey(t => t.FormacaoId)
                .ForeignKey("dbo.Usuarios", t => t.Pesquisador_UsuarioId)
                .Index(t => t.Pesquisador_UsuarioId);
            
            CreateTable(
                "dbo.Recompensas",
                c => new
                    {
                        RecompensaId = c.Int(nullable: false, identity: true),
                        Valor = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Processada = c.Boolean(nullable: false),
                        Avaliador_UsuarioId = c.Int(),
                        Pagador_UsuarioId = c.Int(),
                        Pesquisador_UsuarioId = c.Int(),
                        Programa_ProgramaRecompensasId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.RecompensaId)
                .ForeignKey("dbo.Usuarios", t => t.Avaliador_UsuarioId)
                .ForeignKey("dbo.Usuarios", t => t.Pagador_UsuarioId)
                .ForeignKey("dbo.Usuarios", t => t.Pesquisador_UsuarioId)
                .ForeignKey("dbo.ProgramaRecompensas", t => t.Programa_ProgramaRecompensasId, cascadeDelete: true)
                .Index(t => t.Avaliador_UsuarioId)
                .Index(t => t.Pagador_UsuarioId)
                .Index(t => t.Pesquisador_UsuarioId)
                .Index(t => t.Programa_ProgramaRecompensasId);
            
            CreateTable(
                "dbo.ProgramaRecompensas",
                c => new
                    {
                        ProgramaRecompensasId = c.Int(nullable: false, identity: true),
                        Ativo = c.Boolean(nullable: false),
                        DataCriacao = c.DateTime(nullable: false),
                        UltimaRevisao = c.DateTime(nullable: false),
                        Empresa_EmpresaId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ProgramaRecompensasId)
                .ForeignKey("dbo.Empresas", t => t.Empresa_EmpresaId, cascadeDelete: true)
                .Index(t => t.Empresa_EmpresaId);
            
            CreateTable(
                "dbo.Empresas",
                c => new
                    {
                        EmpresaId = c.Int(nullable: false, identity: true),
                        Site = c.String(nullable: false, maxLength: 100),
                        CNPJ = c.String(),
                        Endereco_EnderecoId = c.Int(),
                    })
                .PrimaryKey(t => t.EmpresaId)
                .ForeignKey("dbo.Enderecoes", t => t.Endereco_EnderecoId)
                .Index(t => t.Endereco_EnderecoId);
            
            CreateTable(
                "dbo.RelatorioBugs",
                c => new
                    {
                        RelatorioBugId = c.Int(nullable: false, identity: true),
                        Titulo = c.String(nullable: false, maxLength: 150),
                        Descricao = c.String(nullable: false),
                        Impacto = c.String(nullable: false),
                        Estado = c.Int(nullable: false),
                        Pesquisador_UsuarioId = c.Int(nullable: false),
                        Programa_ProgramaRecompensasId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.RelatorioBugId)
                .ForeignKey("dbo.Usuarios", t => t.Pesquisador_UsuarioId, cascadeDelete: true)
                .ForeignKey("dbo.ProgramaRecompensas", t => t.Programa_ProgramaRecompensasId, cascadeDelete: true)
                .Index(t => t.Pesquisador_UsuarioId)
                .Index(t => t.Programa_ProgramaRecompensasId);
            
            CreateTable(
                "dbo.Retiradas",
                c => new
                    {
                        RetiradaId = c.Int(nullable: false, identity: true),
                        Valor = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Data = c.DateTime(nullable: false),
                        Estado = c.Int(nullable: false),
                        DadosBancarios_DadosBancariosId = c.Int(nullable: false),
                        Pesquisador_UsuarioId = c.Int(),
                    })
                .PrimaryKey(t => t.RetiradaId)
                .ForeignKey("dbo.DadosBancarios", t => t.DadosBancarios_DadosBancariosId, cascadeDelete: true)
                .ForeignKey("dbo.Usuarios", t => t.Pesquisador_UsuarioId)
                .Index(t => t.DadosBancarios_DadosBancariosId)
                .Index(t => t.Pesquisador_UsuarioId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Comentarios", "Usuario_UsuarioId", "dbo.Usuarios");
            DropForeignKey("dbo.Retiradas", "Pesquisador_UsuarioId", "dbo.Usuarios");
            DropForeignKey("dbo.Retiradas", "DadosBancarios_DadosBancariosId", "dbo.DadosBancarios");
            DropForeignKey("dbo.Recompensas", "Programa_ProgramaRecompensasId", "dbo.ProgramaRecompensas");
            DropForeignKey("dbo.RelatorioBugs", "Programa_ProgramaRecompensasId", "dbo.ProgramaRecompensas");
            DropForeignKey("dbo.RelatorioBugs", "Pesquisador_UsuarioId", "dbo.Usuarios");
            DropForeignKey("dbo.Comentarios", "Relatorio_RelatorioBugId", "dbo.RelatorioBugs");
            DropForeignKey("dbo.ProgramaRecompensas", "Empresa_EmpresaId", "dbo.Empresas");
            DropForeignKey("dbo.Usuarios", "Empresa_EmpresaId", "dbo.Empresas");
            DropForeignKey("dbo.Empresas", "Endereco_EnderecoId", "dbo.Enderecoes");
            DropForeignKey("dbo.Comentarios", "Programa_ProgramaRecompensasId", "dbo.ProgramaRecompensas");
            DropForeignKey("dbo.Recompensas", "Pesquisador_UsuarioId", "dbo.Usuarios");
            DropForeignKey("dbo.Recompensas", "Pagador_UsuarioId", "dbo.Usuarios");
            DropForeignKey("dbo.Recompensas", "Avaliador_UsuarioId", "dbo.Usuarios");
            DropForeignKey("dbo.Formacaos", "Pesquisador_UsuarioId", "dbo.Usuarios");
            DropForeignKey("dbo.Usuarios", "Endereco_EnderecoId", "dbo.Enderecoes");
            DropForeignKey("dbo.DadosBancarios", "Pesquisador_UsuarioId", "dbo.Usuarios");
            DropForeignKey("dbo.Usuarios", "Grupo_GrupoFuncionariosId", "dbo.GrupoFuncionarios");
            DropForeignKey("dbo.Permissaos", "GrupoFuncionarios_GrupoFuncionariosId", "dbo.GrupoFuncionarios");
            DropForeignKey("dbo.Emails", "EmailId", "dbo.Usuarios");
            DropIndex("dbo.Retiradas", new[] { "Pesquisador_UsuarioId" });
            DropIndex("dbo.Retiradas", new[] { "DadosBancarios_DadosBancariosId" });
            DropIndex("dbo.RelatorioBugs", new[] { "Programa_ProgramaRecompensasId" });
            DropIndex("dbo.RelatorioBugs", new[] { "Pesquisador_UsuarioId" });
            DropIndex("dbo.Empresas", new[] { "Endereco_EnderecoId" });
            DropIndex("dbo.ProgramaRecompensas", new[] { "Empresa_EmpresaId" });
            DropIndex("dbo.Recompensas", new[] { "Programa_ProgramaRecompensasId" });
            DropIndex("dbo.Recompensas", new[] { "Pesquisador_UsuarioId" });
            DropIndex("dbo.Recompensas", new[] { "Pagador_UsuarioId" });
            DropIndex("dbo.Recompensas", new[] { "Avaliador_UsuarioId" });
            DropIndex("dbo.Formacaos", new[] { "Pesquisador_UsuarioId" });
            DropIndex("dbo.DadosBancarios", new[] { "Pesquisador_UsuarioId" });
            DropIndex("dbo.Permissaos", new[] { "GrupoFuncionarios_GrupoFuncionariosId" });
            DropIndex("dbo.Emails", new[] { "EmailId" });
            DropIndex("dbo.Usuarios", new[] { "Empresa_EmpresaId" });
            DropIndex("dbo.Usuarios", new[] { "Endereco_EnderecoId" });
            DropIndex("dbo.Usuarios", new[] { "Grupo_GrupoFuncionariosId" });
            DropIndex("dbo.Comentarios", new[] { "Usuario_UsuarioId" });
            DropIndex("dbo.Comentarios", new[] { "Relatorio_RelatorioBugId" });
            DropIndex("dbo.Comentarios", new[] { "Programa_ProgramaRecompensasId" });
            DropTable("dbo.Retiradas");
            DropTable("dbo.RelatorioBugs");
            DropTable("dbo.Empresas");
            DropTable("dbo.ProgramaRecompensas");
            DropTable("dbo.Recompensas");
            DropTable("dbo.Formacaos");
            DropTable("dbo.Enderecoes");
            DropTable("dbo.DadosBancarios");
            DropTable("dbo.Permissaos");
            DropTable("dbo.GrupoFuncionarios");
            DropTable("dbo.Emails");
            DropTable("dbo.Usuarios");
            DropTable("dbo.Comentarios");
        }
    }
}
