using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_framwork
{
    public partial class Logout1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Session.Abandon();

            Session.Remove("username");

            Session.Remove("password");

            Response.Redirect("~/Login.aspx");

        }
    }
}