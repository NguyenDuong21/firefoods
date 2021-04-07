function Render() {
    // người nào cũng 
    let amountProduct = document.querySelectorAll(".cart-products__product");
    if (amountProduct != 0) {
        document.getElementById("quantity_pr").innerHTML = `Giỏ hàng <span id class="cart-products__count">${amountProduct.length} sản phẩm</span>`
        //document.getElementsByClassName("cart-products__count").innerHTML = "( "+ amountProduct.length + "sản phẩm)"
    } else {
        document.getElementById("quantity_pr").innerHTML = `( 0 sản phẩm)`;
    }
    let priceValueTotal = document.getElementById("prices_value_final");

    let prices = document.getElementsByClassName("price_sp");
    let quantity = document.getElementsByClassName("quantity_lb");
    let pricesArr = [].slice.call(prices);
    let quantityArr = [].slice.call(quantity);
    let totalPrice = 0;
    let index = 0;
    pricesArr.forEach(e => {
        totalPrice += parseFloat(e.textContent) * parseInt(quantityArr[index].textContent);
        index++;
    })

    // console.log(price[0].textContent + parseInt()amount[0].textContent);
    priceValueTotal.textContent = totalPrice + "VND";
}
Render();
// xoa san pham
function DeleteProduct (id) {
    let result = confirm("Bạn có muốn xóa sản phẩm này");
    if (result) {
        let url = "handlingCart.aspx?action=delete&id=" + id;
        window.location = url
    }
}

function minusProduct(id) {
        let url = "handlingCart.aspx?action=minus&id=" + id;
        window.location = url
}
function plusProduct(id) {
    let url = "handlingCart.aspx?action=plus&id=" + id;
    window.location = url
}
