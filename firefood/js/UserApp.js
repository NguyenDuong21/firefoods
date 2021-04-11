function CheckLogined() {
    let checkLogin = document.getElementById("userName");

    if (checkLogin.textContent == "Đăng nhập") {
        let name = checkLogin.textContent;
        checkLogin.addEventListener("mouseover", function () {
            checkLogin.href = "./Login.html"
        })

        checkLogin.addEventListener("mouseout", function () {
            checkLogin.textContent = name;
            checkLogin.href = "./Login.html";
        })
    } else {
        let name = checkLogin.textContent;
        checkLogin.addEventListener("mouseover", function () {
            checkLogin.textContent = "Đăng xuất";
            checkLogin.href = "./Logout.aspx"
        })

        checkLogin.addEventListener("mouseout", function () {
            checkLogin.textContent = name;
            checkLogin.href = "#";
        })
    }

}
CheckLogined();

