function swap () {
    var x = document.getElementById("x").value;
    var y = document.getElementById("y").value;
    var temp = x;
    document.getElementById("x").value = y;
    document.getElementById("y").value = temp;
}

function square() {
    var r = 15;
    const PI = 3.14;
    document.getElementById("square-result").value = PI * r * r;
}

function maxCount() {
    var nums = document.getElementById("square-result").value;
    var numsSepareted = nums.split(" ");

    var max = numsSepareted[0];
    var maxCount = 1;
    numsSepareted.forEach(x => {
        if (parseInt(x) > parseInt(max)) {
            max = x;
            maxCount = 1;
        } else {
            maxCount++;
        }
    });

    window.localStorage.setItem("maxCount", maxCount);
    alert(maxCount);
}

function onload() {
    var res;
    if(window.localStorage.getItem("maxCount")) {
        res = prompt("Do you want to delete cookie?", window.localStorage.getItem("maxCount"));
    }

    if(res) {
        window.localStorage.removeItem("maxCount");
    }

    if(window.localStorage.getItem("blur")) {
        document.getElementById("box2").style.background = window.localStorage.getItem("blur");
    }
}

function blur() {
    var blur = document.getElementById("blur").value;
    window.localStorage.setItem("blur", blur)
    document.getElementById("box2").style.background = blur;
}