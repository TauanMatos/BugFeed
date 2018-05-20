namespace BugFeed.Database.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class NomeEmpresa : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Empresas", "Nome", c => c.String(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Empresas", "Nome");
        }
    }
}
