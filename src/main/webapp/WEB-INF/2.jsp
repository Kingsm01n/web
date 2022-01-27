<link rel="stylesheet" href="../resources/2.css"/>

<div class="grid">
    <div id="block-1" class="block-1">
        <span id="x" class="text-x">text x</span>
    </div>
    <div id="block-2" class="block-2"></div>
    <div id="block-3" class="block-3">
        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eum ducimus harum consequuntur, accusantium
        exercitationem quo voluptatem, error, a vero maxime quisquam aut voluptatibus autem tempora beatae corrupti
        dignissimos saepe voluptate! Impedit maxime perspiciatis minima rerum animi. Consequatur, nesciunt accusamus
        nemo assumenda non veniam, ipsum repellat quod a ut deleniti dicta omnis tenetur vel repellendus. Facilis
        perspiciatis vero ea harum saepe, vitae accusantium aut! Odit reprehenderit explicabo optio? Ducimus, dolorum?
        Hic nostrum unde minima labore harum voluptatibus ratione fugit quis voluptate aperiam provident, eum
        voluptatum, repellendus dolorem expedita quod ducimus quae, laudantium itaque necessitatibus sapiente! Ut
        exercitationem beatae ratione ad quas esse iusto id eveniet voluptatem iste animi nihil modi totam ipsum qui
        dolor voluptas, aliquam quasi similique! Minima ab commodi sapiente magni soluta aperiam est, ipsam distinctio,
        enim magnam molestiae exercitationem quae perspiciatis ullam? Rem, ex hic! Incidunt nostrum doloribus
        exercitationem expedita error. Odit doloremque fugit ea. Labore quaerat natus sequi, qui veniam aperiam
        nesciunt, fugit beatae ducimus fugiat molestias at totam laudantium hic vel corrupti perspiciatis, eligendi
        alias exercitationem culpa tenetur facere. Hic possimus, earum minus necessitatibus vitae tempora voluptas. Odit
        minima repellat, maiores dolorem placeat repellendus aliquam? Repudiandae sapiente sequi adipisci voluptatem
        atque ipsa labore quisquam optio cumque.
        <input id="square-result" type="text" hidden/>
    </div>
    <div id="block-4" class="block-4"></div>
    <div id="block-5" class="block-5"></div>
    <div id="block-6"class="block-6">
        <span id="y" class="text-y">text y</span>
    </div>
</div>

<input type="button" value="Swap x and y" onclick="swap()"/><br/>
<input type="button" value="Show/hide res of Square" onclick="showSquare()"/><br/>
<input type="button" value="Count max nums" onclick="maxCount()"/><br/>
<label for="blur">Blur event </label>
<input id="blur" type="text" onblur="var blur = document.getElementById('blur').value;window.localStorage.setItem('blur', blur);document.getElementById('block-2').style.background = blur;"/><br/>

<script src="../resources/2.js" onload="squareAndMes()"></script>