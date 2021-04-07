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
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["cart"] != null)
            {
                DataTable cart = (DataTable)Session["cart"];
                string sl = cart.Rows.Count.ToString();
                /* Response.Write(sl);*/
                string output = "";
                foreach (DataRow row in cart.Rows)
                {
                    output += @"<li class='cart-products__product'>
          <div class='cart-products__inner'>
            <div class='cart-products__img'>
                <a href = '#'>
                    <img src='"+row["image"]+@"' alt='#'>
                </a>
            </div>
            <div class='cart-products__content'>
                <div class='cart-products__content--inner'>
                    <div class='cart-products__desc'>
                        <a class='cart-products__name' href='#'>"+row["name"]+@"</a>
                        <p class='cart-products__badge'></p>
                        <p class='cart-products__actions'>
                            <span onclick='DeleteProduct(" + row["id"].ToString() + @")' class='cart-products__del'>Xóa</span>
                            <span class='cart-products__buy-later'>Để dành mua sau</span>
                        </p>
                    </div>
                    <div class='cart-products__details'>
                        <div class='cart-products__pricess'>
                            <p class='cart-products__real-prices'><span class='price_sp'>"+row["price"]+ @"</span>đ</p>
</div>
<div class= 'cart-products__qty'>

<div class= 'CartQty__StyledCartQty-o1bx97-0 iaIXXn'>

<span class= 'qty-decrease qty-disable' onclick='minusProduct("+ row["id"] + @")'> - </span>

<label class='quantity_lb'>" + row["quantity"] +@"</label>

<span class= 'qty-increase' onclick='plusProduct("+row["id"]+@")'> +</span>

</div>

</div>

</div>

</div>

</div>

</div>

</li>";
                }
                cart_products.InnerHtml = output;
                
            }
            else
            {
                cart_products.InnerHtml = "Giỏ hàng không có sản phẩm nào";
            }
        }
    }
}