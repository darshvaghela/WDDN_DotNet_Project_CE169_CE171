using project_framwork.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_framwork
{
    public partial class Category_que : System.Web.UI.Page
    {
        public bool val1 = (System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated;
        protected void Page_Load(object sender, EventArgs e)
        {
            string c_name = Request.QueryString["name"].ToString();
            AppDbContext db = new AppDbContext();
           
            var q = db.Questions.Where(a => a.Catagory==c_name).ToList();

            var html = "";
            
            foreach (var c in q)
            {
              
                html += $@"<div class=""col-sm-12"">
                          <div class=""question"" >
                             
                             <p><a  runat=""server""  href=""Answer.aspx?id={c.Id}"" style=""padding-left:100px"">{c.Questions}</a></p>
                          </div>
                         </div>";
            }
            PlaceHolder1.Controls.Add(new Literal() { Text = html });

        }
    }
}