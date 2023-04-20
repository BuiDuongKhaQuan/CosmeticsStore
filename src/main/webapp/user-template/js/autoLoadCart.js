function getCartCount() {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("cart-count").innerHTML = this.responseText;
        }
    };
    xhr.open("GET", "auto-load?command=load_quantity", true);
    xhr.send();
}

setInterval(getCartCount, 2000);