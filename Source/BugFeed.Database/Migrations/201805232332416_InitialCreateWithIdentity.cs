namespace BugFeed.Database.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreateWithIdentity : DbMigration
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
                        Usuario_Id = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => t.ComentarioId)
                .ForeignKey("dbo.ProgramaRecompensas", t => t.Programa_ProgramaRecompensasId)
                .ForeignKey("dbo.RelatorioBugs", t => t.Relatorio_RelatorioBugId)
                .ForeignKey("dbo.AspNetUsers", t => t.Usuario_Id, cascadeDelete: true)
                .Index(t => t.Programa_ProgramaRecompensasId)
                .Index(t => t.Relatorio_RelatorioBugId)
                .Index(t => t.Usuario_Id);
            
            CreateTable(
                "dbo.AspNetUsers",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        Email = c.String(maxLength: 256),
                        EmailConfirmed = c.Boolean(nullable: false),
                        PasswordHash = c.String(),
                        SecurityStamp = c.String(),
                        PhoneNumber = c.String(),
                        PhoneNumberConfirmed = c.Boolean(nullable: false),
                        TwoFactorEnabled = c.Boolean(nullable: false),
                        LockoutEndDateUtc = c.DateTime(),
                        LockoutEnabled = c.Boolean(nullable: false),
                        AccessFailedCount = c.Int(nullable: false),
                        UserName = c.String(nullable: false, maxLength: 256),
                        Nome = c.String(),
                        Sobrenome = c.String(),
                        Ativo = c.Boolean(),
                        DataNascimento = c.DateTime(),
                        Discriminator = c.String(nullable: false, maxLength: 128),
                        Grupo_GrupoFuncionariosId = c.Int(),
                        Endereco_EnderecoId = c.Int(),
                        Empresa_EmpresaId = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.GrupoFuncionarios", t => t.Grupo_GrupoFuncionariosId, cascadeDelete: true)
                .ForeignKey("dbo.Enderecoes", t => t.Endereco_EnderecoId)
                .ForeignKey("dbo.Empresas", t => t.Empresa_EmpresaId)
                .Index(t => t.UserName, unique: true, name: "UserNameIndex")
                .Index(t => t.Grupo_GrupoFuncionariosId)
                .Index(t => t.Endereco_EnderecoId)
                .Index(t => t.Empresa_EmpresaId);
            
            CreateTable(
                "dbo.AspNetUserClaims",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        UserId = c.String(nullable: false, maxLength: 128),
                        ClaimType = c.String(),
                        ClaimValue = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.AspNetUserLogins",
                c => new
                    {
                        LoginProvider = c.String(nullable: false, maxLength: 128),
                        ProviderKey = c.String(nullable: false, maxLength: 128),
                        UserId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.LoginProvider, t.ProviderKey, t.UserId })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.AspNetUserRoles",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        RoleId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.UserId, t.RoleId })
                .ForeignKey("dbo.AspNetRoles", t => t.RoleId, cascadeDelete: true)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId)
                .Index(t => t.RoleId);
            
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
                        Pesquisador_Id = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => t.DadosBancariosId)
                .ForeignKey("dbo.AspNetUsers", t => t.Pesquisador_Id, cascadeDelete: true)
                .Index(t => t.Pesquisador_Id);
            
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
                        Pesquisador_Id = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.FormacaoId)
                .ForeignKey("dbo.AspNetUsers", t => t.Pesquisador_Id)
                .Index(t => t.Pesquisador_Id);
            
            CreateTable(
                "dbo.Recompensas",
                c => new
                    {
                        RecompensaId = c.Int(nullable: false, identity: true),
                        Valor = c.Decimal(nullable: false, precision: 18, scale: 2),
                        Processada = c.Boolean(nullable: false),
                        Avaliador_Id = c.String(maxLength: 128),
                        Pagador_Id = c.String(maxLength: 128),
                        Pesquisador_Id = c.String(maxLength: 128),
                        Programa_ProgramaRecompensasId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.RecompensaId)
                .ForeignKey("dbo.AspNetUsers", t => t.Avaliador_Id)
                .ForeignKey("dbo.AspNetUsers", t => t.Pagador_Id)
                .ForeignKey("dbo.AspNetUsers", t => t.Pesquisador_Id)
                .ForeignKey("dbo.ProgramaRecompensas", t => t.Programa_ProgramaRecompensasId, cascadeDelete: true)
                .Index(t => t.Avaliador_Id)
                .Index(t => t.Pagador_Id)
                .Index(t => t.Pesquisador_Id)
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
                        Nome = c.String(nullable: false),
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
                        Pesquisador_Id = c.String(nullable: false, maxLength: 128),
                        Programa_ProgramaRecompensasId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.RelatorioBugId)
                .ForeignKey("dbo.AspNetUsers", t => t.Pesquisador_Id, cascadeDelete: true)
                .ForeignKey("dbo.ProgramaRecompensas", t => t.Programa_ProgramaRecompensasId, cascadeDelete: true)
                .Index(t => t.Pesquisador_Id)
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
                        Pesquisador_Id = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.RetiradaId)
                .ForeignKey("dbo.DadosBancarios", t => t.DadosBancarios_DadosBancariosId, cascadeDelete: true)
                .ForeignKey("dbo.AspNetUsers", t => t.Pesquisador_Id)
                .Index(t => t.DadosBancarios_DadosBancariosId)
                .Index(t => t.Pesquisador_Id);
            
            CreateTable(
                "dbo.AspNetRoles",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        Name = c.String(nullable: false, maxLength: 256),
                    })
                .PrimaryKey(t => t.Id)
                .Index(t => t.Name, unique: true, name: "RoleNameIndex");
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.AspNetUserRoles", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserLogins", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserClaims", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserRoles", "RoleId", "dbo.AspNetRoles");
            DropForeignKey("dbo.Comentarios", "Usuario_Id", "dbo.AspNetUsers");
            DropForeignKey("dbo.Retiradas", "Pesquisador_Id", "dbo.AspNetUsers");
            DropForeignKey("dbo.Retiradas", "DadosBancarios_DadosBancariosId", "dbo.DadosBancarios");
            DropForeignKey("dbo.Recompensas", "Programa_ProgramaRecompensasId", "dbo.ProgramaRecompensas");
            DropForeignKey("dbo.RelatorioBugs", "Programa_ProgramaRecompensasId", "dbo.ProgramaRecompensas");
            DropForeignKey("dbo.RelatorioBugs", "Pesquisador_Id", "dbo.AspNetUsers");
            DropForeignKey("dbo.Comentarios", "Relatorio_RelatorioBugId", "dbo.RelatorioBugs");
            DropForeignKey("dbo.ProgramaRecompensas", "Empresa_EmpresaId", "dbo.Empresas");
            DropForeignKey("dbo.AspNetUsers", "Empresa_EmpresaId", "dbo.Empresas");
            DropForeignKey("dbo.Empresas", "Endereco_EnderecoId", "dbo.Enderecoes");
            DropForeignKey("dbo.Comentarios", "Programa_ProgramaRecompensasId", "dbo.ProgramaRecompensas");
            DropForeignKey("dbo.Recompensas", "Pesquisador_Id", "dbo.AspNetUsers");
            DropForeignKey("dbo.Recompensas", "Pagador_Id", "dbo.AspNetUsers");
            DropForeignKey("dbo.Recompensas", "Avaliador_Id", "dbo.AspNetUsers");
            DropForeignKey("dbo.Formacaos", "Pesquisador_Id", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUsers", "Endereco_EnderecoId", "dbo.Enderecoes");
            DropForeignKey("dbo.DadosBancarios", "Pesquisador_Id", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUsers", "Grupo_GrupoFuncionariosId", "dbo.GrupoFuncionarios");
            DropForeignKey("dbo.Permissaos", "GrupoFuncionarios_GrupoFuncionariosId", "dbo.GrupoFuncionarios");
            DropIndex("dbo.AspNetRoles", "RoleNameIndex");
            DropIndex("dbo.Retiradas", new[] { "Pesquisador_Id" });
            DropIndex("dbo.Retiradas", new[] { "DadosBancarios_DadosBancariosId" });
            DropIndex("dbo.RelatorioBugs", new[] { "Programa_ProgramaRecompensasId" });
            DropIndex("dbo.RelatorioBugs", new[] { "Pesquisador_Id" });
            DropIndex("dbo.Empresas", new[] { "Endereco_EnderecoId" });
            DropIndex("dbo.ProgramaRecompensas", new[] { "Empresa_EmpresaId" });
            DropIndex("dbo.Recompensas", new[] { "Programa_ProgramaRecompensasId" });
            DropIndex("dbo.Recompensas", new[] { "Pesquisador_Id" });
            DropIndex("dbo.Recompensas", new[] { "Pagador_Id" });
            DropIndex("dbo.Recompensas", new[] { "Avaliador_Id" });
            DropIndex("dbo.Formacaos", new[] { "Pesquisador_Id" });
            DropIndex("dbo.DadosBancarios", new[] { "Pesquisador_Id" });
            DropIndex("dbo.Permissaos", new[] { "GrupoFuncionarios_GrupoFuncionariosId" });
            DropIndex("dbo.AspNetUserRoles", new[] { "RoleId" });
            DropIndex("dbo.AspNetUserRoles", new[] { "UserId" });
            DropIndex("dbo.AspNetUserLogins", new[] { "UserId" });
            DropIndex("dbo.AspNetUserClaims", new[] { "UserId" });
            DropIndex("dbo.AspNetUsers", new[] { "Empresa_EmpresaId" });
            DropIndex("dbo.AspNetUsers", new[] { "Endereco_EnderecoId" });
            DropIndex("dbo.AspNetUsers", new[] { "Grupo_GrupoFuncionariosId" });
            DropIndex("dbo.AspNetUsers", "UserNameIndex");
            DropIndex("dbo.Comentarios", new[] { "Usuario_Id" });
            DropIndex("dbo.Comentarios", new[] { "Relatorio_RelatorioBugId" });
            DropIndex("dbo.Comentarios", new[] { "Programa_ProgramaRecompensasId" });
            DropTable("dbo.AspNetRoles");
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
            DropTable("dbo.AspNetUserRoles");
            DropTable("dbo.AspNetUserLogins");
            DropTable("dbo.AspNetUserClaims");
            DropTable("dbo.AspNetUsers");
            DropTable("dbo.Comentarios");
        }
    }
}
