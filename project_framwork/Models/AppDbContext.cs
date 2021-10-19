using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace project_framwork.Models
{
   
    public class AppDbContext : DbContext
    {
        public AppDbContext() : base("name=appdb") { }

        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<Question> Questions { get; set; }

        public virtual DbSet<Answer> Answers { get; set; }

        public virtual DbSet<Category> Categories { get; set; }


    }
}
