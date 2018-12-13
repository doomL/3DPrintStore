<!-- Footer -->
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
          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five.</p>

        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-lg-2 col-md-4 mx-auto">

          <!-- Links -->
          <h5 class="mt-3 mb-3">Site Navigation</h5>

          <ul class="list-unstyled">
            <li>
              <a href="index.jsp">go to home</a>
            </li>
            <li>
              <a href="dashboard.jsp">dashboard</a>
            </li>
            <li>
              <a href="printcoin.jsp">printcoin</a>
            </li>
          </ul>

        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-lg-2 col-md-4 mx-auto">

          <!-- Links -->
          <h5 class="mt-3 mb-3">information</h5>

          <ul class="list-unstyled">
            <li>
              <a href="login.jsp">user login</a>
            </li>
            <li>
              <a href="signin.jsp">create new account</a>
            </li>
            <li>
              <a href="#!">other information</a>
            </li>
          </ul>

        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-lg-2 col-md-4 mx-auto">


          <!-- Links -->
          <h5 class="mt-3 mb-3">policies & Info</h5>

          <ul class="list-unstyled">
            <li>
              <a href="#!">Terms Conditions</a>
            </li>
            <li>
              <a href="#!">Policy for Sellers  </a>
            </li>
            <li>
              <a href="#!">Policy for Buyers</a>
            </li>
            <li>
              <a href="#!">Shipping & Refund </a>
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
    <!-- Custom JavaScript -->
    <script src="js/animate.js"></script>
    <script src="js/custom.js"></script>
	<script src="https://cdn.jsdelivr.net/gh/Wruczek/Bootstrap-Cookie-Alert@gh-pages/cookiealert.js"></script>
	<script type="text/javascript" src="https://3daddict.com/tool/assets/config.php"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.js"></script>
<script src="https://3daddict.com/tool/assets/js/popper.min.js"></script>
<script type="text/javascript" src="https://3daddict.com/tool/assets/js/price-tool.js"></script>

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