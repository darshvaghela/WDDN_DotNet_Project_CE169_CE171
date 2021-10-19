using project_framwork.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_framwork
{
    public partial class Categorys : System.Web.UI.Page
    {
        public bool val1 = (System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated;
        protected void Page_Load(object sender, EventArgs e)
        {
            AppDbContext db = new AppDbContext();
            Category category = new Category();
            var fetch = db.Categories.ToList();

            var category_name = "";

            foreach (var c in fetch)
            {
                category_name += $@"<ul  id=""ula"" class=""list - group list - group - flush"">
                            <li id = ""li"" class=""list-group-item list-group-item-action"">   
                                <a class=""astyle"" style=""text-decoration: none;"" runat=""server"" href=""Category_que.aspx?name={c.categoryName}"">{c.categoryName}</a>
                              </li>
                            </ul>";
                    
                
    
            }
            PlaceHolder1.Controls.Add(new Literal() { Text = category_name });

        }
    }
}