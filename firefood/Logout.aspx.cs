using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace firefood
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["current_user"] != null)
            {
                Session["current_user"] = null;
                Response.Redirect("HomePage.aspx");
            }
        }
    }
}