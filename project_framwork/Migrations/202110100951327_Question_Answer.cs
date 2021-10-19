namespace project_framwork.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Question_Answer : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Answers",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Answers = c.String(nullable: false),
                        Anscount = c.String(nullable: false),
                        QuestionId = c.String(nullable: false),
                        Question_Id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Questions", t => t.Question_Id, cascadeDelete: true)
                .Index(t => t.Question_Id);
            
        }
        
        public override void Down()
        {
            DropIndex("dbo.Answers", new[] { "Question_Id" });
            DropForeignKey("dbo.Answers", "Question_Id", "dbo.Questions");
            DropTable("dbo.Answers");
        }
    }
}
