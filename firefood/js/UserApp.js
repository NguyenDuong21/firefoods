function CheckLogined() {
    let checkLogin = document.getElementById("userName").textContent;
    let log = document.getElementById("login_logout");
    if (checkLogin == "Đăng nhập") {
        let log = document.getElementById("login_logout");
        log.textContent = "Đăng nhập";
        log.href = "./Login.html";
    } else {
        log.textContent = "Đăng xuất";
        log.href = "./Logout.aspx";
    }
}

CheckLogined();