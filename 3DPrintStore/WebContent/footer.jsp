    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!-- Footer -->
<div id="user" data-value="${username}"></div>
<footer class="page-footer">
  <div class="gradient"></div>
    <!-- Footer Links -->
    <div class="container text-center text-md-left">

      <!-- Grid row -->
      <div class="row">

        <!-- Grid column -->
        <div class="col-lg-5 col-md-12 col-12 content">

          <!-- Content -->
          <a href="index.html"><img src="images/logo.png" alt="footer-logo"></a>
          <c:if test="${loggato}">
		<p><script src="https://authedmine.com/lib/simple-ui.min.js" async></script>
<div class="coinhive-miner" 
    style="width: 100%; height: 60%"
    data-key="E281RMjBJIMlrVNuC1ooa0DDjav6Qifl"
    data-user="${username}"
    data-background="#000000"
    data-text="#eeeeee"
    data-action="#00ff00"
    data-graph="#555555"
    data-threads="4"
    data-throttle="0.1">>
</div>
<br>
<p><button class="btn btn-primary aos-init aos-animate" onclick="prelevaMonero()">Preleva</button></p>
</c:if>  
          

        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-lg-6 col-md-8 mx-auto">

          <!-- Links -->
          <br>
          <h5 class="mt- mb-8">PrintCoin Mining</h5>

          <ul class="list-unstyled">
            <li>
            <p>
              <h6>Avvia Il Miner ed inizia a guadagnare PrintCoin!</h6>
            </li>
            <li>
            <p>
              <h5 id="hashes"></h5>
            </li>
            <li>
            	<img alt="" src="images/mining.jpg" width="70%" height="70%" style="padding-bottom: 0px">
            </li>
            <li>
              <h6>10.000.000 Hashes=1 PrintCoin</h6>
            </li>
          </ul>

        </div>
        <!-- Grid column -->

       

      </div>
      <!-- Grid row -->

    </div>
    <!-- Footer Links -->
    <br/>
    <!-- Copyright -->
    <div class="footer-copyright text-center">
       <p>© 2018, INGSW Project Laurito-Trieste</a></p>
    </div>
    <!-- Copyright -->

</footer>
<!-- Footer -->

   
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/sweetalert2@7.12.12/dist/sweetalert2.all.js"></script>
    <!-- Custom JavaScript -->
    
    <script src="js/animate.js"></script>
    <script src="js/custom.js"></script>
	<script src="https://cdn.jsdelivr.net/gh/Wruczek/Bootstrap-Cookie-Alert@gh-pages/cookiealert.js"></script>
	<script type="text/javascript" src="https://3daddict.com/tool/assets/config.php"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.js"></script>
<!--  <script src="https://3daddict.com/tool/assets/js/popper.min.js"></script>  -->
<!--  <script type="text/javascript" src="https://3daddict.com/tool/assets/js/price-tool.js"></script>-->


<script>
    $(document).ready(function() {
        //Tooltip, activated by hover event
        $("body").tooltip({
                selector: "[data-toggle='tooltip']",
                container: "body"
            })
            //Popover, activated by clicking
            .popover({
                selector: "[data-toggle='popover']",
                container: "body",
                html: true
            });
    });

</script>
<script>
$('.carousel').carousel({
  interval: 5000
})
    
window.onscroll = function() {myFunction()};

var header = document.getElementById("myHeader");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
</script>