<%@ include file="common/header.jsp" %>
    <%@ include file="common/nav.jsp" %>

        <h1 class="text-center main-header" style="color:orange;">"YLP"</h1>
        <p class="text-center main-p">Welcome to the one stop shop for you and your friends to find the greatest places
            to eat in town.
        </p>

        <div style="overflow:hidden;resize:none;max-width:100%;width:700px;height:500px;margin:3% 22%;">
            <div" id="embed-map-display" style="height:100%; width:100%;max-width:100%;">


                <iframe style="height:100%;width:100%;border:0;" frameborder="0"
                    src="https://www.google.com/maps/embed/v1/search?q=restaurants+near+Charlotte,+NC,+USA&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8"></iframe>
        </div>
        <!-- <style>
                #embed-map-display img {
                    max-width: none !important;
                    background: none !important;
                    font-size: inherit;
                    font-weight: inherit;
                }
            </style> -->
        </div>
        <!-- <div id="map"></div> -->
        <div class="d-flex justify-content-center mb-3">
            <a class="mx-auto btn btn-primary text-center" href="/eats">Take me to eat</a>
            <a class="mx-auto btn btn-secondary text-center" href="/eats">Friends</a>
        </div>
        <%@ include file="common/footer.jsp" %>