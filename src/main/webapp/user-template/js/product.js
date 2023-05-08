
function search(name) {
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "product?command=search&name=" + name.value, true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            document.getElementById("product_list").innerHTML = this.responseText;
            pagination();
        }
    }
    xhr.send();
}

function insertItem(IdP) {
    var div = document.getElementById("notification");

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "product", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            // Hiển thị thẻ div
            div.classList.remove("hidden-noti");

            // Sau 3 giây, ẩn thẻ div lại bằng cách thêm lại lớp CSS hidden
            setTimeout(function () {
                div.classList.add("hidden-noti");
            }, 2000);
        }
    };
    $('.add-to-cart').on('click', function () {
        var cart = $('.shopping-cart');
        var imgtodrag = $(this).parent('.item').find("img").eq(0);
        if (imgtodrag) {
            var imgclone = imgtodrag.clone()
                .offset({
                    top: imgtodrag.offset().top,
                    left: imgtodrag.offset().left
                })
                .css({
                    'opacity': '0.8',
                    'position': 'absolute',
                    'height': '150px',
                    'width': '150px',
                    'z-index': '100'
                })
                .appendTo($('body'))
                .animate({
                    'top': cart.offset().top + 10,
                    'left': cart.offset().left + 10,
                    'width': 75,
                    'height': 75
                }, 1000, 'easeInOutExpo');

            setTimeout(function () {
                cart.effect("shake", {
                    times: 2
                }, 200);
            }, 1500);

            imgclone.animate({
                'width': 0,
                'height': 0
            }, function () {
                $(this).detach()
            });
        }
    });
    xhr.send("IdP=" + IdP
        + "&command=insertItem");
}

function inform() {
    alert("Hãy đăng nhập");

}

function detailProduct(idP) {
    window.location.href = "detail?pid=" + idP;
}

function category(idC) {
    window.location.href = "product?command=category&cid=" + idC;
}

function addFavorite(IdP) {
    var div = document.getElementById("notification1");

    var xhr = new XMLHttpRequest();
    xhr.open("POST", "product", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            // Hiển thị thẻ div
            div.classList.remove("hidden-noti");
            // Sau 3 giây, ẩn thẻ div lại bằng cách thêm lại lớp CSS hidden
            setTimeout(function () {
                div.classList.add("hidden-noti");
            }, 2000);
        }
    };
    xhr.send("IdP=" + IdP
        + "&command=favorite");
}

function arrange(command, action) {
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "product?command=" + command + "&action=" + action, true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            document.getElementById("product_list").innerHTML = this.responseText;
            pagination();
        }
    };
    xhr.send();
}
function pagination() {
    $(document).ready(function () {
        var itemsPerPage = 9;
        var itemsCount = $('#product_list #product_item').length;
        var totalPages = Math.ceil(itemsCount / itemsPerPage);

        $('#pagination').pagination({
            items: itemsCount,
            itemsOnPage: itemsPerPage,
            cssStyle: 'light-theme',
            onPageClick: function (pageNumber) {
                var startIndex = (pageNumber - 1) * itemsPerPage;
                var endIndex = startIndex + itemsPerPage;
                $('#product_list #product_item').hide().slice(startIndex, endIndex).show();
            }
        });

        $('#product_list #product_item').hide().slice(0, itemsPerPage).show();
    });
}

pagination();