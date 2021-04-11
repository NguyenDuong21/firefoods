using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace firefood
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public List<CartProduct> products = null;
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

            if (Session["cart"] != null)
            {
                products = (List<CartProduct>)Session["cart"];

            }

            if(Session["current_user"] == null)
            {
                Response.Redirect("CartEmtyl.html");
            }
        }
    }
}