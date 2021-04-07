using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace firefood
{
    public class Product
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string Type { set; get; }
        public string Price { set; get; }
        public string Image { set; get; }
    }
}