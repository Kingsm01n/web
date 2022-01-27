function makeAccordion() {
    var titles = document.getElementById("accordion-fields").value.split(" ");

    var innerHtml = "";
    titles.forEach(title => {
        innerHtml += "<button class=\"accordion\" >" + title + "</button> <div class=\"panel\"> <p>Lorem ipsum...</p> </div>";
    })

    document.getElementById("inner-block").innerHTML += innerHtml;

    var acc = document.getElementsByClassName("accordion");
    var i;

    for (i = 0; i < acc.length; i++) {
        acc[i].addEventListener("click", function() {
            /* Toggle between adding and removing the "active" class,
            to highlight the button that controls the panel */
            this.classList.toggle("active");

            /* Toggle between hiding and showing the active panel */
            var panel = this.nextElementSibling;
            if (panel.style.display === "block") {
                panel.style.display = "none";
            } else {
                panel.style.display = "block";
            }
        });
    }

    save(innerHtml);
}

function deleteAccordion() {
    document.getElementById("inner-block").innerHTML = "";
}

function save(innerHtml) {
    const Http = new XMLHttpRequest();
    const url="http://127.0.0.1/3/save";
    Http.open("GET", url, false);
    Http.send(innerHtml);
}