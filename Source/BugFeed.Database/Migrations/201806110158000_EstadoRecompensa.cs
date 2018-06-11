namespace BugFeed.Database.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class EstadoRecompensa : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Recompensas", "Estado", c => c.Int(nullable: false));
            DropColumn("dbo.Recompensas", "Processada");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Recompensas", "Processada", c => c.Boolean(nullable: false));
            DropColumn("dbo.Recompensas", "Estado");
        }
    }
}
