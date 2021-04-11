<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detailedSubPage.aspx.cs" Inherits="firefood.detailedSubPage" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
   <head runat="server">
      <title>FireFood</title>
      <link href="./css/detailedSubPage.css" rel="stylesheet" />
       <link href="./css/reponsive.css" rel="stylesheet" />
      <link rel="stylesheet" href="./css/Footer.css" />
      <link rel="stylesheet" href="./css/Header.css" />
      <link rel="stylesheet" href="./css/Reset.css" />
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
      <form id="form1" runat="server" onsubmit="AddToCart()">
         <div class="grid wide">
              <%Response.Write(@"<div class='row' style='margin - top: 100px;'>
                  <div class='col l-6' id='product_img' runat='server'>
                  <img style='width:100%;' src = '" + curentProduct.Image + @"' alt='Alternate Text'/>
               </div>
               <div class='col l-6'>
                  <div class='Body'>
                     <div class='Main_Body'>
                        <div class='Left_Main_Body'>
                           <div class='Khunggia'>
                              <div class='Giasp'>
                                 <span class='Giacuthe'>" + curentProduct.Name + @"</span>
                              </div>
                              <div class='Open_Time'>
                                 <div class='open'>
                                    <span class='stt online' title='địa chỉ'>" + curentProduct.Address + @"</span>
                                 </div>
                                 <div class='time'>
                                    <span style='font-weight:bold; font-size:1.5rem;'>" + curentProduct.Price + @"CN</span>
                                 </div>
                              </div>
                           </div>"); %>
             
             <div class='Khungmua themvaogiohang'>
                              <div class='NutMua'>
                                  <asp:Button ID="themgio" runat="server" CssClass="nut nuthemvaogiohang" Text="Thêm vào giỏ hàng" OnClick="AddToCart"/>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </form>
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

       <script>
           document.getElementById("themgio").addEventListener("click", function () {
               window.alert = "Đã thêm vào giỏ hàng";
           });
       </script>
   </body>
</html>