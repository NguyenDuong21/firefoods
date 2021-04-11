<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChildPage.aspx.cs" Inherits="firefood.ChildPage" %>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>FireFood</title>
      <link rel="stylesheet" href="./css/Header.css">
      <link href="./css/Footer.css" rel="stylesheet" />
      <link href="./css/ChildPage.css" rel="stylesheet" />
      <link href="./css/Reset.css" rel="stylesheet" />
      <link rel="shortcut icon" href="./images/icon.png">
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
        <a href="./Cart.aspx">Giỏ Hàng</a>
        <asp:HyperLink id="userName" NavigateUrl="#" Text="" runat="server"/> 
  </div>
</div>
      <!--container-->
      <div class="grid">      
              <div class="row">
                  <%foreach (var product in products)
                      {
                          Response.Write(@"<div class='item-restaurant'>
                                            <a href = 'detailedSubPage.aspx?id=" + product.Id + @"' >
                                              <div class='image'>
                                                 <img style = 'width: 100%;' src='" + product.Image + @"' alt=''>
                                              </div>
                                              <div class='info-restaurant'>
                                                 <div class='info-basic-res'>
                                                    <h4>
                                                       <span>" + product.Name + @"</span>
                                                    </h4>
                                                    <div class='address-res' title=''>" + product.Address + @"</div>
                                                 </div>
                                                 <div class='kind-restaurant'>
                                                    <p>" + product.Type + @"</p>
                                                 </div>
                                              </div>
                                            </a>
                                           </div>");
                      }
                      %>
                <asp:Literal ID="listProduct" runat="server"></asp:Literal>
               </div>
      </div>
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
       <script src="./js/UserApp.js"></script>
   </body>
</html>
