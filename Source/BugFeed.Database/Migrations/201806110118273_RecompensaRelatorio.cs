namespace BugFeed.Database.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class RecompensaRelatorio : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Recompensas", "Programa_ProgramaRecompensasId", "dbo.ProgramaRecompensas");
            DropForeignKey("dbo.Recompensas", "Avaliador_FuncionarioId", "dbo.Funcionarios");
            DropIndex("dbo.Recompensas", new[] { "Avaliador_FuncionarioId" });
            DropIndex("dbo.Recompensas", new[] { "Programa_ProgramaRecompensasId" });
            RenameColumn(table: "dbo.Recompensas", name: "Programa_ProgramaRecompensasId", newName: "ProgramaRecompensas_ProgramaRecompensasId");
            DropPrimaryKey("dbo.Recompensas");
            AlterColumn("dbo.Recompensas", "RecompensaId", c => c.Int(nullable: false));
            AlterColumn("dbo.Recompensas", "Avaliador_FuncionarioId", c => c.Int(nullable: false));
            AlterColumn("dbo.Recompensas", "ProgramaRecompensas_ProgramaRecompensasId", c => c.Int());
            AddPrimaryKey("dbo.Recompensas", "RecompensaId");
            CreateIndex("dbo.Recompensas", "RecompensaId");
            CreateIndex("dbo.Recompensas", "Avaliador_FuncionarioId");
            CreateIndex("dbo.Recompensas", "ProgramaRecompensas_ProgramaRecompensasId");
            AddForeignKey("dbo.Recompensas", "RecompensaId", "dbo.RelatorioBugs", "RelatorioBugId");
            AddForeignKey("dbo.Recompensas", "ProgramaRecompensas_ProgramaRecompensasId", "dbo.ProgramaRecompensas", "ProgramaRecompensasId");
            AddForeignKey("dbo.Recompensas", "Avaliador_FuncionarioId", "dbo.Funcionarios", "FuncionarioId", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Recompensas", "Avaliador_FuncionarioId", "dbo.Funcionarios");
            DropForeignKey("dbo.Recompensas", "ProgramaRecompensas_ProgramaRecompensasId", "dbo.ProgramaRecompensas");
            DropForeignKey("dbo.Recompensas", "RecompensaId", "dbo.RelatorioBugs");
            DropIndex("dbo.Recompensas", new[] { "ProgramaRecompensas_ProgramaRecompensasId" });
            DropIndex("dbo.Recompensas", new[] { "Avaliador_FuncionarioId" });
            DropIndex("dbo.Recompensas", new[] { "RecompensaId" });
            DropPrimaryKey("dbo.Recompensas");
            AlterColumn("dbo.Recompensas", "ProgramaRecompensas_ProgramaRecompensasId", c => c.Int(nullable: false));
            AlterColumn("dbo.Recompensas", "Avaliador_FuncionarioId", c => c.Int());
            AlterColumn("dbo.Recompensas", "RecompensaId", c => c.Int(nullable: false, identity: true));
            AddPrimaryKey("dbo.Recompensas", "RecompensaId");
            RenameColumn(table: "dbo.Recompensas", name: "ProgramaRecompensas_ProgramaRecompensasId", newName: "Programa_ProgramaRecompensasId");
            CreateIndex("dbo.Recompensas", "Programa_ProgramaRecompensasId");
            CreateIndex("dbo.Recompensas", "Avaliador_FuncionarioId");
            AddForeignKey("dbo.Recompensas", "Avaliador_FuncionarioId", "dbo.Funcionarios", "FuncionarioId");
            AddForeignKey("dbo.Recompensas", "Programa_ProgramaRecompensasId", "dbo.ProgramaRecompensas", "ProgramaRecompensasId", cascadeDelete: true);
        }
    }
}
