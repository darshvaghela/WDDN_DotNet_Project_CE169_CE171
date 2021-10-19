namespace project_framwork.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Question_Answer1 : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Answers", "QuestionId");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Answers", "QuestionId", c => c.String(nullable: false));
        }
    }
}
