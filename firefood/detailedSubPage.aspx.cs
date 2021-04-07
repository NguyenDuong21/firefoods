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
            detailedProduct.Text = GetData(id);
            GetData(id);
        }

        private string GetData(string id)
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
                    /*curentProduct = obj["products"][i];
                    break;*/
                    return @"<div class='row' style='margin - top: 100px;'>
                  <div class='col l-6' id='product_img' runat='server'>
                  <img style='width:100%;' src = '" + obj["products"][i]["image"] + @"' alt='Alternate Text'/>
               </div>
               <div class='col l-6'>
                  <div class='Body'>
                     <div class='Main_Body'>
                        <div class='Left_Main_Body'>
                           <div class='Khunggia'>
                              <div class='Giasp'>
                                 <span class='Giacuthe'>" + obj["products"][i]["name"] + @"</span>
                              </div>
                              <div class='Open_Time'>
                                 <div class='open'>
                                    <span class='stt online' title='địa chỉ'>" + obj["products"][i]["address"] + @"</span>
                                 </div>
                                 <div class='time'>
                                    <span style='font-weight:bold; font-size:1.5rem;'>" + obj["products"][i]["price"] + @"CN</span>
                                 </div>
                              </div>
                           </div>";
                }
            }
            return "";
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
            DataTable cart = new DataTable();
            if (Session["cart"] == null)
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
            }
        }
    }
}