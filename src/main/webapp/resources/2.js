function swap() {
    var x = document.getElementById("x").innerText;
    var y = document.getElementById("y").innerText;
    var temp = x;
    document.getElementById("x").innerText = y;
    document.getElementById("y").innerText = temp;
}

function squareAndMes() {
    var r = 15;
    const PI = 3.14;
    document.getElementById("square-result").value = PI * r * r;

    var res;
    if(document.cookie.split(';').filter(function(item) {
        if(item.includes("maxCount")) return item.replace("maxCount=", "").length !== 0;
    }).length) {
        var cookieVal = document.cookie.split(';').find(x => x.includes("maxCount")).replace("maxCount=", "");
        res = prompt("Do you want to delete cookie?", cookieVal);
    }

    if(res) {
        document.cookie = "maxCount=";
    }

    if(window.localStorage.getItem("blur")) {
        document.getElementById("block-2").style.background = window.localStorage.getItem("blur");
    }
}

function showSquare() {
    document.getElementById("square-result").hidden = !document.getElementById("square-result").hidden;
}

function maxCount() {
    var nums = document.getElementById("square-result").value;
    var numsSepareted = nums.split(" ");

    var max = numsSepareted[0];
    var maxCount = 0;
    numsSepareted.forEach(x => {
        if (parseInt(x) > parseInt(max)) {
            max = x;
            maxCount = 1;
        } else {
            if(parseInt(x) === parseInt(max)) maxCount++;
        }
    });

    document.cookie = "maxCount=" + maxCount;
    alert(maxCount);
}

function blur() {
    var blur = document.getElementById("blur").value;
    window.localStorage.setItem("blur", blur)
    document.getElementById("block-2").style.background = blur;
}