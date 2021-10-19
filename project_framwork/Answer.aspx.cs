using project_framwork.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_framwork
{
   
    public partial class Answer1 : System.Web.UI.Page
    {
        public bool val1 = (System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated;
        protected void Page_Load(object sender, EventArgs e)
        {
            int idd = int.Parse(Request.QueryString["id"]);
            AppDbContext db = new AppDbContext();
            var q = db.Questions.Where(a => a.Id == idd).FirstOrDefault();

            var fetch_ans = db.Answers.Where(k => (k.Question.Id) ==idd).ToList();
            var html = "";
            var ans = "";
           
                html += $@"<div class=""col - sm - 12"">
                     < div class=""jumbotron"">
                        
                        <h3><p style = ""padding-left:150px;padding-top:50px;"" >{q.Questions}</p></h3>
                         <button type = ""button""   style=""margin-left:155px;"" class=""btn btn-info"" >{q.Catagory}</button>
                            <p id=""count"">0</p>
                </div>";

            foreach (var c in fetch_ans)
            {
                ans += $@"<div   class=""col - sm - 12"">
                    <div class=""Answer"">
                         <p >{c.Answers}</p>
                        
                </div>";


            }
            PlaceHolder1.Controls.Add(new Literal() { Text = html });
            PlaceHolder2.Controls.Add(new Literal() { Text = ans });



        }

        protected void Ans_click(object sender, EventArgs e)
        {
            AppDbContext db = new AppDbContext();
            int idd = int.Parse(Request.QueryString["id"]);
            var q = db.Questions.Where(a => a.Id == idd).FirstOrDefault();
          
            Answer answer = new Answer()
            {

                Answers = txtansname.Text,
                Question = q,
                
            };
            db.Answers.Add(answer);
            db.SaveChanges();

        }
    }
}