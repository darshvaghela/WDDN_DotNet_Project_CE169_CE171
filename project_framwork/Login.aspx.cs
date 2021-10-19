using project_framwork.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_framwork
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
        }

        protected void lbtn_Click(object sender, EventArgs e)
        {

            AppDbContext db = new AppDbContext();
            User user = new User();
            var fetch = db.Users.Where(a => a.Username!=null).ToList();
            foreach(var c in fetch)
            {
                if(utextbox.Text != c.Username)
                {
                    Response.Write("<Script language='javascript'>alert('Username is not Exist!')</Script>");
                }
                else if(utextbox.Text == c.Username)
                {
                    if (ptextbox.Text != c.Password)
                    {
                        Response.Write("<Script language='javascript'>alert('Invalid Password!')</Script>");
                    }
                    else
                    {
                        Session.Add("username", c.Username);
                        Session.Add("password", c.Password);
                    }
                }
            }
        }
    }
}