namespace BugFeed.Database.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class DataEnvioRelatorio : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.RelatorioBugs", "Data", c => c.DateTime(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.RelatorioBugs", "Data");
        }
    }
}
