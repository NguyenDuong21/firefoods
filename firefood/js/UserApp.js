let original_url = window.location.toLocaleString();
let rest_url = original_url.substr(original_url.lastIndexOf('/')).toLocaleLowerCase();
let obj = {
    '/homepage.aspx': 'home',
    '/childpage.aspx?1': 'child1',
    '/childpage.aspx?2': 'child2',
    '/cartemtyl.aspx': 'card'
}
document.getElementById(obj[rest_url])?.classList.add('active');

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

