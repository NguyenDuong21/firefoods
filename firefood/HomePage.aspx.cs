using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace firefood
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["current_user"] != null)
            {
                userName.Text = (string)Session["current_user"];
            }
            else
            {
                userName.Text = "no user";
            }
        }
    }
}