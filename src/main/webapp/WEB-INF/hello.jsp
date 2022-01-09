<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<head>
    <link rel="stylesheet" href="../resources/style.css">
    <title>Missing</title>
</head>
<body style="height: 400px; width: 400px;">
    <div class="blue">
        <h3 class="left"> 1 </h3>
        <input id="x" type="text" class="input-right" value="x"/>
    </div>
    <div style="height: 200px; display: flex;">
        <div style="display: initial; width: 100px">
            <div id="box2" class="brown">
                <h3 class="left"> 2 </h3>
                <input id="blur" type="text" tabindex="0"
                       onblur="var blur = document.getElementById('blur').value;window.localStorage.setItem('blur', blur); document.getElementById('box2').style.background = blur;"/>
            </div>
            <div class="green">
                <h3 class="left"> 5 </h3>
            </div>
        </div>
        <div class="white">
            <h3 class="center"> 3 </h3>
            <input id="square-result" class="center-bottom"/>
        </div>
        <div class="brown full-height">
            <h3 class="right"> 4 </h3>
        </div>
    </div>
    <div class="blue half">
        <input id="y" type="text" class="input-left" value="y"/>
        <h3 class="right-with-input"> 6 </h3>
    </div>

    <input type="button" value="swap" onclick="swap()"/>
    <input type="button" value="square" onclick="square()"/>
    <input type="button" value="max count" onclick="maxCount()"/>
</body>

<script src="../resources/script.js"></script>