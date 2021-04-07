using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace firefood
{
    public partial class handlingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // string id, image, name, price;
            string action = Request.QueryString["action"];
            string idProduct = Request.QueryString["id"];
            DataTable cart = new DataTable();
            if(action == "delete")
            {
                cart = (DataTable)Session["cart"];
                foreach (DataRow pr in cart.Rows)
                {
                    if (pr["id"].ToString() == idProduct)
                    {
                        pr.Delete();
                        break;
                    }
                }
                Response.Redirect("Cart.aspx");
                return;
            }
            else if(action == "minus")
            {
                cart = (DataTable)Session["cart"];
                foreach (DataRow pr in cart.Rows)
                {
                    if (pr["id"].ToString() == idProduct)
                    {
                        if (int.Parse(pr["quantity"].ToString()) > 1)
                        {
                            pr["quantity"] = int.Parse(pr["quantity"].ToString()) - 1;
                            break;
                        }
                        else
                        {
                            pr["quantity"] = 1;
                            break;
                        }
                        
                    }
                }
                Response.Redirect("Cart.aspx");
                return;
            }
            else if(action == "plus")
            {
                cart = (DataTable)Session["cart"];
                foreach (DataRow pr in cart.Rows)
                {
                    if (pr["id"].ToString() == idProduct)
                    {
                        pr["quantity"] = int.Parse(pr["quantity"].ToString()) + 1;
                        break;
                    }
                }
                Response.Redirect("Cart.aspx");
                return;
            }
            else
            {
                Response.Redirect("Cart.aspx");
                return;
            }
        }
    }
}