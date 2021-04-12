<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="firefood.HomePage" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Firefood</title>

    <link rel="stylesheet" href="./css/HomePageStyle.css">
    <link rel="stylesheet" href="./css/Footer.css">
    <link rel="stylesheet" href="./css/Header.css">
    <link rel="shortcut icon" href="./images/icon.png">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
</head>
<body>
      <!-- header -->
    <div class="header">
      <a href="./HomePage.aspx" class="logo">
          FireFoods
      <div class="header-right">
        <a id="home" href="./HomePage.aspx">Trang chủ</a>
        <a id="child1" href="./ChildPage.aspx?1">Món Truyền Thống</a>
        <a id="child2" href="./ChildPage.aspx?2">Món Châu Âu</a>
        <a id="card" href="./Cart.aspx">Giỏ Hàng</a>
        <asp:HyperLink id="userName" NavigateUrl="#" Text="" runat="server"/> 
  </div>
</div>

    <!-- content -->
    <div class="backgroundHeader">
        <div id="bodyHeader">
            <b>Tìm món ngon, cửa hàng, ưu đãi ...</b>
            <input type="text" placeholder="Tìm món ăn, khuyễn mãi...">
        </div>
    </div>
    <div class="backgroundContent">
        <div id="content">
            <div class="uudaiDacbiet">
                <div class="titleDanhmuc">
                    <span>Ưu đãi đặc biệt</span>
                    <a href="#">Xem thêm &#62;</a>
                </div>
                <div class="contentDanhmuc">
                    <div class="mucUudai">
                        <div><img src="./images/uudai/uudai1.jpg" alt="Đang tải"></div>
                        <a href="#">T2 - T5: Giảm 1 suất buffet còn 9.000đ cho nhóm khách 4 người trở lên</a>
                    </div>
                    <div class="mucUudai">
                        <div><img src="./images/uudai/uudai2.jpg" alt="Đang tải"></div>
                        <a href="#">Giảm từ 32% - 34% cho các set Combo từ 2 ~ 4 người</a>
                    </div>
                    <div class="mucUudai">
                        <div><img src="./images/uudai/uudai3.jpg" alt="Đang tải"></div>
                        <a href="#">Đi 5 tính tiền 4 cho Buffet giá 259.000đ</a>
                    </div>
                    <div class="mucUudai">
                        <div><img src="./images/uudai/uudai4.jpg" alt="Đang tải"></div>
                        <a href="#">Giảm 20% hóa đơn thức ăn khi đặt chỗ qua TMLD</a>
                    </div>
                    <div class="mucUudai">
                        <div><img src="./images/uudai/uudai1.jpg" alt="Đang tải"></div>
                        <a href="#">T2 - T5: Giảm 1 suất buffet còn 9.000đ cho nhóm khách 4 người trở lên</a>
                    </div>
                    <div class="mucUudai">
                        <div><img src="./images/uudai/uudai4.jpg" alt="Đang tải"></div>
                        <a href="#">Giảm 20% hóa đơn thức ăn khi đặt chỗ qua TMLD</a>
                    </div>
                </div>
            </div>
            <div class="space"></div>
            <div class="monAn">
                <div class="titleDanhmuc">
                    <span>Món ăn</span>
                    <a href="#">Xem thêm &#62;</a>
                </div>
                <div class="auto">
                    <div class="contentMonan">
                        <div class="ttMonAn">
                            <div><img src="./images/doan/hamburger.jpg" alt="Đang tải"></div>
                            <a href="#">KFC</a>
                        </div>
                        <div class="ttMonAn">
                            <div><img src="./images/monan/banhkhoai.jpg" alt="Đang tải"></div>
                            <a href="#">Bánh khoai</a>
                        </div>
                        <div class="ttMonAn">
                            <div><img src="./images/monan/bachtuoc.jpg" alt="Đang tải"></div>
                            <a href="#">Bạch tuộc nướng muối ớt</a>
                        </div>
                        <div class="ttMonAn">
                            <div><img src="./images/monan/muc.jpg" alt="Đang tải"></div>
                            <a href="#">Mực rang xả ớt</a>
                        </div>
                        <div class="ttMonAn">
                            <div><img src="./images/monan/garang.jpg" alt="Đang tải"></div>
                            <a href="#">Gà rang</a>
                        </div>
                        <div class="ttMonAn">
                            <div><img src="./images/monan/vitquat.png" alt="Đang tải"></div>
                            <a href="#">Vịt quay Bắc Kinh</a>
                        </div>
                        <div class="ttMonAn">
                            <div><img src="./images/monan/sasimi.jpg" alt="Đang tải"></div>
                            <a href="#">Sasimi Hàn Quốc</a>
                        </div>
                        <div class="ttMonAn">
                            <div><img src="./images/monan/tomhum.jpg" alt="Đang tải"></div>
                            <a href="#">Tôm hùm</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="space"></div>
            <div class="monAn baiviet">
                <div class="titleDanhmuc">
                    <span>Bài viết</span>
                    <a href="#">Xem thêm &#62;</a>
                </div>
                <div class="auto">
                    <div class="contentMonan">
                        <div class="ttMonAn">
                            <div><img src="./images/uudai1.jpeg" alt="Đang tải"></div>
                            <a href="#">Nội dung Nội dung Nội dung Nội dung Nội dung</a>
                        </div>
                        <div class="ttMonAn">
                            <div><img src="./images/uudai1.jpeg" alt="Đang tải"></div>
                            <a href="#">Nội dung Nội dung Nội dung Nội dung Nội dung</a>
                        </div>
                        <div class="ttMonAn">
                            <div><img src="./images/uudai1.jpeg" alt="Đang tải"></div>
                            <a href="#">Nội dung Nội dung Nội dung Nội dung Nội dung</a>
                        </div>
                        <div class="ttMonAn">
                            <div><img src="./images/uudai1.jpeg" alt="Đang tải"></div>
                            <a href="#">Nội dung Nội dung Nội dung Nội dung Nội dung</a>
                        </div>
                        <div class="ttMonAn">
                            <div><img src="./images/uudai1.jpeg" alt="Đang tải"></div>
                            <a href="#">Nội dung Nội dung Nội dung Nội dung Nội dung</a>
                        </div>
                        <div class="ttMonAn">
                            <div><img src="./images/uudai1.jpeg" alt="Đang tải"></div>
                            <a href="#">Nội dung Nội dung Nội dung Nội dung Nội dung</a>
                        </div>
                        <div class="ttMonAn">
                            <div><img src="./images/uudai1.jpeg" alt="Đang tải"></div>
                            <a href="#">Nội dung Nội dung Nội dung Nội dung Nội dung</a>
                        </div>
                        <div class="ttMonAn">
                            <div><img src="./images/uudai1.jpeg" alt="Đang tải"></div>
                            <a href="#">Nội dung Nội dung Nội dung Nội dung Nội dung</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="space"></div>
    <div class="backgroundContent">
        <div class="bodyFooter">
            <div class="menu">
                <div><button type="button" class="choose muc" id="noibat" onclick='chonmuc(this)'>Nổi bật</button></div>
                <div><button type="button" class="muc" id="datnhieu" onclick='chonmuc(this)'>Đặt nhiều</button></div>
                <div><button type="button" class="muc" id="moi" onclick='chonmuc(this)'>Mới</button></div>
                <div><button type="button" class="muc" id="ganday" onclick='chonmuc(this)'>Gần đây</button></div>
            </div>
            <!-- Nổi bật -->
            <div class="footerContent noibat">
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/bbq.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Jinro BBQ - Huỳnh Thúc Kháng</div>
                        <div class="p">Tòa M3-M4, 91A Nguyễn Chí Thanh (Đối diện 63 Huỳnh Thúc Kháng), Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/bbq.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Jinro BBQ - Huỳnh Thúc Kháng</div>
                        <div class="p">Tòa M3-M4, 91A Nguyễn Chí Thanh (Đối diện 63 Huỳnh Thúc Kháng), Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/bbq.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Jinro BBQ - Huỳnh Thúc Kháng</div>
                        <div class="p">Tòa M3-M4, 91A Nguyễn Chí Thanh (Đối diện 63 Huỳnh Thúc Kháng), Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/bbq.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Jinro BBQ - Huỳnh Thúc Kháng</div>
                        <div class="p">Tòa M3-M4, 91A Nguyễn Chí Thanh (Đối diện 63 Huỳnh Thúc Kháng), Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/bbq.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Jinro BBQ - Huỳnh Thúc Kháng</div>
                        <div class="p">Tòa M3-M4, 91A Nguyễn Chí Thanh (Đối diện 63 Huỳnh Thúc Kháng), Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/bbq.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Jinro BBQ - Huỳnh Thúc Kháng</div>
                        <div class="p">Tòa M3-M4, 91A Nguyễn Chí Thanh (Đối diện 63 Huỳnh Thúc Kháng), Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
            </div>
            <!-- Đặt nhiều -->
            <div class="footerContent datnhieu">
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/sushi.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Let's Sushi - Yên Lãng</div>
                        <div class="p">173 Yên Lãng, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/sushi.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Let's Sushi - Yên Lãng</div>
                        <div class="p">173 Yên Lãng, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/sushi.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Let's Sushi - Yên Lãng</div>
                        <div class="p">173 Yên Lãng, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/sushi.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Let's Sushi - Yên Lãng</div>
                        <div class="p">173 Yên Lãng, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/sushi.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Let's Sushi - Yên Lãng</div>
                        <div class="p">173 Yên Lãng, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/sushi.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Let's Sushi - Yên Lãng</div>
                        <div class="p">173 Yên Lãng, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
            </div>
            <!-- Mới -->
            <div class="footerContent moi">
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/dochien.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Koh Yam - Thai Kitchen & Dessert - Giảng Võ</div>
                        <div class="p">122K1 Giảng Võ, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/dochien.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Koh Yam - Thai Kitchen & Dessert - Giảng Võ</div>
                        <div class="p">122K1 Giảng Võ, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/dochien.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Koh Yam - Thai Kitchen & Dessert - Giảng Võ</div>
                        <div class="p">122K1 Giảng Võ, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/dochien.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Koh Yam - Thai Kitchen & Dessert - Giảng Võ</div>
                        <div class="p">122K1 Giảng Võ, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/dochien.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Koh Yam - Thai Kitchen & Dessert - Giảng Võ</div>
                        <div class="p">122K1 Giảng Võ, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/dochien.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Koh Yam - Thai Kitchen & Dessert - Giảng Võ</div>
                        <div class="p">122K1 Giảng Võ, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
            </div>
            <!-- Gần đây -->
            <div class="footerContent ganday">
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/long.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Lòng "Chát" - Tôn Thất Tùng</div>
                        <div class="p">64 Tôn Thất Tùng, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/long.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Lòng "Chát" - Tôn Thất Tùng</div>
                        <div class="p">64 Tôn Thất Tùng, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/long.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Lòng "Chát" - Tôn Thất Tùng</div>
                        <div class="p">64 Tôn Thất Tùng, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/long.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Lòng "Chát" - Tôn Thất Tùng</div>
                        <div class="p">64 Tôn Thất Tùng, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/long.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Lòng "Chát" - Tôn Thất Tùng</div>
                        <div class="p">64 Tôn Thất Tùng, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
                <div class="rowMenu">
                    <div class="img"><img src="./images/doan/long.jpg" alt="Đang tải"></div>
                    <div class="thongtin">
                        <div class="titleMenu">Lòng "Chát" - Tôn Thất Tùng</div>
                        <div class="p">64 Tôn Thất Tùng, Đống Đa, Hà Nội</div>
                        <div class="kindFood">Ăn vặt</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="space"></div>
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
    <script src="./js/HomaPage.js"></script>
    <script src="./js/UserApp.js"></script>
</body>
</html>