using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace firefood
{
    public partial class ChildPage : System.Web.UI.Page
    {
        public List<Product> products = new List<Product>();
        protected void Page_Load(object sender, EventArgs e)
        {
            /*listProduct.Text = getData();*/
            getData();
        }

        private string getData()
        {
            string jsonFilePath = Server.MapPath("/products.json"); 
            /*@"D:\firefood\firefood\firefood\products.json";*/

            var json = new StreamReader(jsonFilePath);
            var myJson = json.ReadToEnd();

            JavaScriptSerializer jss = new JavaScriptSerializer();

            var obj = jss.Deserialize<dynamic>(myJson);

            var len = obj["products"].Length;

                
            for (int i = 0; i < len; i++)
            {
                var product = new Product
                {
                    Id = obj["products"][i]["id"],
                    Name = obj["products"][i]["name"],
                    Address = obj["products"][i]["address"],
                    Type = obj["products"][i]["type"],
                    Price = obj["products"][i]["price"],
                    Image = obj["products"][i]["image"]
                };
                products.Add(product);
            }
            return "";
        }
    }
}