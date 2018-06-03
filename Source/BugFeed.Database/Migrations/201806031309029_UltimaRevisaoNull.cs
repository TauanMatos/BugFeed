namespace BugFeed.Database.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class UltimaRevisaoNull : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.ProgramaRecompensas", "UltimaRevisao", c => c.DateTime());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.ProgramaRecompensas", "UltimaRevisao", c => c.DateTime(nullable: false));
        }
    }
}
