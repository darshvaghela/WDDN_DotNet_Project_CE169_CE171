namespace project_framwork.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Question_Answer2 : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Answers", "Anscount");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Answers", "Anscount", c => c.String(nullable: false));
        }
    }
}
