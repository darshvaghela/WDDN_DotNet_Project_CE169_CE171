namespace project_framwork.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Qna1 : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Answers", "Question_Id", "dbo.Questions");
            DropIndex("dbo.Answers", new[] { "Question_Id" });
            AlterColumn("dbo.Answers", "Question_Id", c => c.Int(nullable: false));
            AddForeignKey("dbo.Answers", "Question_Id", "dbo.Questions", "Id", cascadeDelete: true);
            CreateIndex("dbo.Answers", "Question_Id");
        }
        
        public override void Down()
        {
            DropIndex("dbo.Answers", new[] { "Question_Id" });
            DropForeignKey("dbo.Answers", "Question_Id", "dbo.Questions");
            AlterColumn("dbo.Answers", "Question_Id", c => c.Int());
            CreateIndex("dbo.Answers", "Question_Id");
            AddForeignKey("dbo.Answers", "Question_Id", "dbo.Questions", "Id");
        }
    }
}
