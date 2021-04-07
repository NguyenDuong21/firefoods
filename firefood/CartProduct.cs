using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace firefood
{
    public class CartProduct : Product
    {
        public int quantity { get; set; }
        public CartProduct(string id, string Image, string name, string Price, int quantity)
        {
            this.Id = id;
            this.Image = Image;
            this.Name = name;
            this.Price = Price;
            this.quantity = quantity;
            this.Address = "";
            this.Type = "";
        }
    }
}