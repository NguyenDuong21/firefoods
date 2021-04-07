using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace firefood
{

    public partial class detailedSubPage : System.Web.UI.Page
    {
        public Product curentProduct;


        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            /*detailedProduct.Text = GetData(id);*/
            GetData(id);
        }

        private void GetData(string id)
        {
            string jsonFilePath = Server.MapPath("~/products.json"); 
            /*@"D:\firefood\firefood\firefood\products.json";*/

            var json = new StreamReader(jsonFilePath);
            var myJson = json.ReadToEnd();

            JavaScriptSerializer jss = new JavaScriptSerializer();
            
            var obj = jss.Deserialize<dynamic>(myJson);

            var len = obj["products"].Length;
            for (int i = 0; i < len; i++)
            {
                if (obj["products"][i]["id"] == id)
                {
                    curentProduct = new Product
                    {
                        Id = obj["products"][i]["id"],
                        Name = obj["products"][i]["name"],
                        Address = obj["products"][i]["address"],
                        Type = obj["products"][i]["type"],
                        Price = obj["products"][i]["price"],
                        Image = obj["products"][i]["image"]
                    };
                    break;
                }
            }
        }

        public void AddToCart(object sender, EventArgs e)
        {
            string jsonFilePath = Server.MapPath("~/products.json");
            /*string jsonFilePath = @"D:\firefood\firefood\firefood\products.json";*/

            var json = new StreamReader(jsonFilePath);
            var myJson = json.ReadToEnd();

            JavaScriptSerializer jss = new JavaScriptSerializer();

            var obj = jss.Deserialize<dynamic>(myJson);

           var len = obj["products"].Length;

            string idRequest = Request.QueryString["id"];
            //Response.Write(idRequest);
            string image = "";
            string name = "";
            string price = "";
            string idProduct = "";
            for (int i= 0; i < len; i++)
            {
                if (obj["products"][i]["id"] == idRequest)
                {
                    image = obj["products"][i]["image"];
                    name = obj["products"][i]["name"];
                    price = obj["products"][i]["price"];
                    idProduct = obj["products"][i]["id"];
                }
            }
            CartProduct cartProduct = new CartProduct(idProduct, image, name, price, 1);
            List<CartProduct> cartProducts = (List<CartProduct>)Session["cart"];
            cartProducts.Add(cartProduct);
            /*if (Session["cart"] == null)
            {
                
                //chưa có giỏ hàng, tạo giỏ hàng 
                cart.Columns.Add("id");
                cart.Columns.Add("image");
                cart.Columns.Add("name");
                cart.Columns.Add("price");
                cart.Columns.Add("quantity");
                cart.Rows.Add(idProduct, image, name, price, 1);
                Session["cart"] = cart;
            }
            else
            {
                //Lấy thông tin giỏ hàng từ Session["giohang"]
                cart = (DataTable)Session["cart"];
                // kiem tra ton tai san pham
                int check = 0;
                foreach (DataRow pr in cart.Rows)
                {
                    if (pr["id"].ToString() == idRequest)
                    {
                        pr["quantity"] = int.Parse(pr["quantity"].ToString());
                        check = 1;
                        break;
                    }
                }
                if (check == 0)
                {
                    cart.Rows.Add(idProduct, image, name, price, 1);
                }
                Session["cart"] = cart;
            }*/
        }
    }
}