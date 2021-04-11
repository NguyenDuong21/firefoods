<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="firefood.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food</title>
    <!-- <link rel="stylesheet" href="./all.css"> -->
    <link rel="stylesheet" href="./css/CartStyle.css">
    <link rel="stylesheet" href="./css/Footer.css" />
    <link rel="stylesheet" href="./css/Header.css" />
    <link rel="stylesheet" href="./css/Reset.css" />
    <link rel="shortcut icon" href="./images/icon.png">
    <style>
        label{
            padding-top:0.5rem;
        }
    </style>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
</head>

<body>
      <!-- header -->
    <div class="header">
      <a href="./HomePage.aspx" class="logo">
          FireFoods
      <div class="header-right">
        <a class="active" href="./HomePage.aspx">Trang chủ</a>
        <a href="./ChildPage.aspx">Món Truyền Thống</a>
        <a href="./ChildPage.aspx">Món Châu Âu</a>
        <asp:HyperLink id="userName" NavigateUrl="./Login.html" Text="" runat="server"/> 
  </div>
</div>

    <!--header end-->
    <main>
        <div class="container-cart">
            <div class="cart">
                <!--product-->
                <div class="cart-inner">
                    <h2 class="cart-products__title" id="quantity_pr"></h2>
                    <div class="cart-products-inner"></div>
                        <div class="cart-products__group">
                            <a href="#" class="cart-products__group-name">
                                <span>Food Trading</span>
                            </a>
                            <ul class="cart-products__products" id="cart_products" runat="server">
                                <%
                                        foreach (var product in products) {
                                            Response.Write(
                                                @"<li class='cart-products__product'>
                                               <div class='cart-products__inner'>
                                                  <div class='cart-products__img'>
                                                     <a href = '#'>
                                                     <img src='"+product.Image+@"' alt='#'>
                                                     </a>
                                                  </div>
                                                  <div class='cart-products__content'>
                                                     <div class='cart-products__content--inner'>
                                                        <div class='cart-products__desc'>
                                                           <a class='cart-products__name' href='#'>"+product.Name+@"</a>
                                                           <p class='cart-products__badge'></p>
                                                           <p class='cart-products__actions'>
                                                              <span onclick='DeleteProduct(" + product.Id + @")' class='cart-products__del'>Xóa</span>
                                                              <span class='cart-products__buy-later'>Để dành mua sau</span>
                                                           </p>
                                                        </div>
                                                        <div class='cart-products__details'>
                                                           <div class='cart-products__pricess'>
                                                              <p class='cart-products__real-prices'><span class='price_sp'>"+product.Price+ @"</span></p>
                                                           </div>
                                                           <div class= 'cart-products__qty'>
                                                              <div class= 'CartQty__StyledCartQty-o1bx97-0 iaIXXn'>
                                                                 <span class= 'qty-decrease qty-disable' onclick='minusProduct("+ product.Id + @")'> - </span>
                                                                 <label class='quantity_lb"+ product.Id + @"'>" + product.quantity+@"</label>
                                                                 <span class= 'qty-increase' onclick='plusProduct("+product.Id+@")'> +</span>
                                                              </div>
                                                           </div>
                                                        </div>
                                                     </div>
                                                  </div>
                                               </div>
                                            </li>");   
                                        }
                                    
                                     %>
                            </ul>
                        </div>
                </div>
                <!--total price-->
                <div class="cart-total-prices">
                    <div class="cart-total-prices__inner">
                        <div class="address-container">
                            <p class="heading">
                                <span class="text">Địa chỉ nhận hàng</span>
                                <a class="link" href="/checkout/shipping">Thay đổi</a>
                            </p>
                            <p class="title">
                                <b class="name">Nguyễn Văn Linh</b>
                                <b class="phone">0366537938</b>
                            </p>
                            <p class="address">61 Định Công, Phường Định Công, Quận Hoàng Mai, Hà Nội</p>
                        </div>
                        <div class="prices-container">
                            <div class="prices">
                                <p class="prices__total">
                                    <span class="prices__text">Thành tiền</span>
                                    <span class="prices__value prices__value--final" id="prices_value_final"></i></span>
                                </p>
                            </div>
                        </div>
                        <button type="submit" class="cart__submit" id="cart_submit">Tiến hành đặt hàng</button>
                    </div>
                </div>
            </div>
            </div>
    </main>
    <!-- footer -->
    <footer>
        <div class="container">
            <!--Bắt Đầu Nội Dung Giới Thiệu-->
            <div class="noi-dung about">
                <h2>Về Chúng Tôi</h2>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                
            </div>
            <!--Kết Thúc Nội Dung Giới Thiệu-->
            <!--Bắt Đầu Nội Dung Đường Dẫn-->
            <div class="noi-dung links">
                <h2>Đường Dẫn</h2>
                <ul>
                    <li><a href="#">Trang Chủ</a></li>
                    <li><a href="#">Về Chúng Tôi</a></li>
                    <li><a href="#">Thông Tin Liên Lạc</a></li>
                    <li><a href="#">Dịch Vụ</a></li>
                    <li><a href="#">Điều Kiện Chính Sách</a></li>
                </ul>
            </div>
            <!--Kết Thúc Nội Dung Đường Dẫn-->
            <!--Bắt Đâu Nội Dung Liên Hệ-->
            <div class="noi-dung contact">
                <h2>Thông Tin Liên Hệ</h2>
                <ul class="info">
                    <li>
                        <span><i class="fa fa-map-marker"></i></span>
                        <span>
                            Đường Số 1<br />
                            Quận 1, Thành Phố Hồ Chí Minh<br />
                            Việt Nam
                        </span>
                    </li>
                    <li>
                        <span><i class="fa fa-phone"></i></span>
                        <p>
                            <a href="#">+84 123 456 789</a>
                            <br />
                            <a href="#">+84 987 654 321</a>
                        </p>
                    </li>
                    <li>
                        <span><i class="fa fa-envelope"></i></span>
                        <p><a href="#">firefood@gmail.com</a></p>
                    </li>
                </ul>
            </div>
            <!--Kết Thúc Nội Dung Liên Hệ-->
        </div>
    </footer>
    <script src="./js/CartApp.js"></script>
    <script>
        document.getElementById("cart_submit").addEventListener("click", () => {
            window.alert("Đặt hàng thành công");
        })
    </script>
</body>
</html>
