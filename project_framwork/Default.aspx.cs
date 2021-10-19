using project_framwork.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_framwork
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            AppDbContext db = new AppDbContext();
            Question q = new Question();
            var test = db.Questions.ToList();
           
            var Qcount = db.Questions.Count();
            test.Reverse();
            int[] count = new int[50];

            for (var i = 1; i < 50; i++)
            {
                var ans_count = db.Answers.Where(a => a.Question.Id == i).Count();
                count[i] = ans_count;

            }


            var html = "";
            var j = count.Length;
            foreach (var c in test)
            {
                j = c.Id;
                html += $@"<div class=""col-sm-12"">
                          <div class=""question"" >
                             <p class=""Ans_count"">Answer </p><p class=""count_value"">{count[j]}</p>
                             <p><a  runat=""server"" href=""Answer.aspx?id={c.Id}"" style=""padding-left:100px"">{c.Questions}</a></p>
                          </div>
                         </div>";
            }
                PlaceHolder3.Controls.Add(new Literal() { Text = html });
            



        }

        private object DateTime()
        {
            throw new NotImplementedException();
        }
    }
}