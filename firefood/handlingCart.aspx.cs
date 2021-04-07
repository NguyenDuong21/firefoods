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
        private List<CartProduct> cartProducts;
        public void delete( string idProduct, List<CartProduct> cartProducts)
        {
                Response.Write("<script>confirm('Do you want to delete this product from cart')</script>");
                int length = cartProducts.Count;
                for (int i = 0; i < length; i++)
                {
                    if (cartProducts[i].Id == idProduct)
                    {
                        cartProducts.RemoveAt(i);
                        break;
                    }
                }

            Session["cart"] = cartProducts;

        }
        public void minus( string idProduct, List<CartProduct> cartProducts)
        {
            int length = cartProducts.Count;
            for (int i = 0; i < length; i++)
            {
                if (cartProducts[i].Id == idProduct)
                {
                    if (cartProducts[i].quantity > 1)
                    {
                        cartProducts[i].quantity -= 1;
                        break;
                    }
                    else
                    {
                        this.delete( idProduct, cartProducts);
                        break;
                    }
                }
            }
            Session["cart"] = cartProducts;
        }
        public void plus(string idProduct, List<CartProduct> cartProducts)
        {
            int length = cartProducts.Count;
            for (int i = 0; i < length; i++)
            {
                if (cartProducts[i].Id == idProduct)
                {
                    cartProducts[i].quantity = cartProducts[i].quantity + 1;
                    break;
                }
            }
            Session["cart"] = cartProducts;
        }
        public void Page_Load(object sender, EventArgs e)
        {
            // string id, image, name, price;
            cartProducts = (List<CartProduct>)Session["cart"];
            string action = Request.QueryString["action"];
            string idProduct = Request.QueryString["id"];
            if(action == "delete")
            {
                this.delete( idProduct, cartProducts);
                
            } else if(action == "minus")
            {
                this.minus(idProduct, cartProducts);
                
            }
            else if(action == "plus")
            {
                this.plus(idProduct, cartProducts);
            }
            
            Response.Redirect("Cart.aspx");
             
        }
    }
}