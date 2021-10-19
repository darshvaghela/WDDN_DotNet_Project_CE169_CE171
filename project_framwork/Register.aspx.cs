using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using project_framwork.Models;
namespace project_framwork
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void customValidatepassword_servervalidate(object source, ServerValidateEventArgs e)
        {
            string text = e.Value;
            e.IsValid = false;
            bool upper = false, lower = false, digit = false;
            foreach (char i in text)
            {
                if (char.IsUpper(i))
                    upper = true;
                if (char.IsLower(i))
                    lower = true;
                if (char.IsDigit(i))
                    digit = true;

            }
            if (upper && lower && digit)
                e.IsValid = true;
            else
                e.IsValid = false;
        }

        protected void lbtn_Click(object sender, EventArgs e)
        {
            AppDbContext db = new AppDbContext();
            User user = new User()
            {
                FullName = fname.Text,
                Username = utextbox.Text,
                Email = email.Text,
                Password = ptextbox.Text,

            };
            db.Users.Add(user);
            db.SaveChanges();
         


        }
    }
}